#include <assert.h>

#include <esp_err.h>
#include <esp_check.h>
#include <esp_log.h>		/* ESP_Lox() */

#include <freertos/FreeRTOS.h>
#include <freertos/task.h>
#include <freertos/semphr.h>	/* For SemaphoreHandle_t */
#include <freertos/queue.h>	/* For QueueHandle_t */

static const char *TAG = "chapter_8";  /**< Module name for logging */


/* In all exercises, there is error detection, but no error handling: any
   error is detected by assert() and leads to program termination.
*/

#define STACK_DEPTH 2048	/* Stack depth of all tasks */
#define PRIORITY    1		/* Priority of all tasks */


/* --- */

/* Exercise 1: Write the code for Exercise 2, Chapter 5 using two Ferret's
   binary semaphores.  Why are mutual exclusion semaphores ill-suited in this
   particular case?

   To give an example of how the code works, we create EX_1_NS tasks that,
   after a variable delay, increment a shared variable ex_1_count within the
   monitor, signal the condition variable, and eventually terminate.  The main
   function ex_1() waits on the condition variable repeatedly until the
   ex_1_count reaches the value EX_1_NS and then returns.
*/

SemaphoreHandle_t ex_1_m;	/* For mutual exclusion within the monitor */
SemaphoreHandle_t ex_1_c;	/* To implement the condition variable */
int ex_1_nw = 0;		/* Number of tasks waiting on the cond. var. */

#define EX_1_NS 5

int ex_1_count = 0;		/* Number of terminated tasks */
TickType_t ex_1_delay = 10;	/* Task delay before termination */

void ex_1_init(void)
{
    assert((ex_1_m = xSemaphoreCreateCounting(1, 1)) != NULL);
    assert((ex_1_c = xSemaphoreCreateCounting(1, 0)) != NULL);
    /* ex_1_nw already initialized statically */
}

void ex_1_destroy(void)
{
    vSemaphoreDelete(ex_1_m);
    vSemaphoreDelete(ex_1_c);
}

void ex_1_enter(void)
{
    assert(xSemaphoreTake(ex_1_m, portMAX_DELAY) == pdTRUE);
}

void ex_1_exit(void)
{
    assert(xSemaphoreGive(ex_1_m) == pdTRUE);
}

void ex_1_wait(void)
{
    ex_1_nw++;
    assert(xSemaphoreGive(ex_1_m) == pdTRUE);
    assert(xSemaphoreTake(ex_1_c, portMAX_DELAY) == pdTRUE);
    ex_1_nw--;
}

void ex_1_signal(void)
{
    if(ex_1_nw > 0)
	assert(xSemaphoreGive(ex_1_c) == pdTRUE);
    else
	assert(xSemaphoreGive(ex_1_m) == pdTRUE);
}

void ex_1_aux_task(void *unused)
{
    /* Retrieve ex_1_delay from the monitor and use it to calculate the amount
       of time this task should wait before terminating.
    */
    TickType_t delay;
    ex_1_enter();
    delay = ex_1_delay;
    ex_1_delay += 50;
    ex_1_exit();

    ESP_LOGI(TAG, "task waiting for %ld ticks", delay);
    vTaskDelay(delay);

    /* Enter the monitor, increment the count of terminated tasks, and signal
       the condition variable.
    */
    ex_1_enter();
    ex_1_count++;
    ex_1_signal();		/* This implicitly exits the monitor */

    ESP_LOGI(TAG, "task terminating");
    vTaskDelete(NULL);
}

void ex_1(void)
{
    ESP_LOGI(TAG, "ex_1 starts");
    ex_1_init();		/* Initialize shared objects */

    /* Create auxiliary tasks */
    for(int i=0; i<EX_1_NS; i++)
    {
	TaskHandle_t aux_task;
	assert(
	    xTaskCreate(
		ex_1_aux_task, "AUX", STACK_DEPTH,
		NULL, PRIORITY, &aux_task) == pdPASS);
    }

    /* Wait within the monitor for the termination of all tasks */
    ex_1_enter();
    while(1)
    {
	if(ex_1_count < EX_1_NS)
	{
	    /* Not all tasks terminated: wait */
	    ESP_LOGI(TAG, "count: %d, waiting", ex_1_count);
	    ex_1_wait();
	}
	else
	    /* All tasks terminated; exit from the loop */
	    break;
    }
    ex_1_exit();
    ex_1_destroy();
    ESP_LOGI(TAG, "ex_1 ends");
}


/* --- */

/* Exercise 2: Write the code for Exercise 1, Chapter 6 using a FreeRTOS queue
   of n = 5 elements.  The function that generates an event must report an
   error if unable to do so because the queue is full.

   To perform a (very partial) test of the code we create one task that waits
   for events and prints them out and EX_2_NG tasks that generate an event and
   terminate.
*/

#define EX_2_N 5		/* Number of elements in the message queue */
#define EX_2_NG 8		/* Number of event-generating tasks */

QueueHandle_t ex_2_q;

/* Message sent by the event-generating tasks to ex_2_q */
struct ex_2_msg
{
    int origin;			/* Task identifier */
};

void ex_2_init(void)
{
    assert((ex_2_q = xQueueCreate(EX_2_N, sizeof(struct ex_2_msg))) != NULL);
}

void ex_2_destroy(void)
{
    vQueueDelete(ex_2_q);
}

/* Generate an event coming from task 'id'.  Return true if unable to
   generate the event because the message queue was full.
*/
bool ex_2_generate(int id)
{
    struct ex_2_msg msg = { .origin = id };
    /* A timeout of 0 asks xQueueSend() to return immediately instead of
       waiting if the queue is full.
    */
    return xQueueSend(ex_2_q, &msg, 0) != pdPASS;
}

/* Wait for an event and return the identifier of the task that generated it.
*/
int ex_2_wait(void)
{
    struct ex_2_msg msg;
    assert(xQueueReceive(ex_2_q, &msg, portMAX_DELAY) == pdPASS);
    return msg.origin;
}

/* This task repeatedly waits for events until is is deleted by ex_2() */
void ex_2_w_task(void *unused)
{
    while(1)
    {
	int id = ex_2_wait();
	ESP_LOGI(TAG, "Received event from task %d", id);
    }
}

/* Each instance of this task attempts to generate an event and terminates */
void ex_2_g_task(void *arg)
{
    int id = (int)arg;		/* This assumes that an int fits in a void * */
    if(ex_2_generate(id))
	ESP_LOGI(TAG, "Task %d unable to generate event", id);
    else
	ESP_LOGI(TAG, "Task %d generated an event", id);
    vTaskDelete(NULL);
}

void ex_2(void)
{
    ESP_LOGI(TAG, "ex_2 starts");
    ex_2_init();

    TaskHandle_t w_task;
    assert(
	xTaskCreate(
	    ex_2_w_task, "W", STACK_DEPTH, NULL, PRIORITY, &w_task) == pdPASS);

    /* Create event-generating tasks.  Argument passing assumes that a void *
       can hold an int.
    */
    for(int i=0; i<EX_2_NG; i++)
    {
	TaskHandle_t g_task;
	assert(
	    xTaskCreate(
		ex_2_g_task, "G", STACK_DEPTH,
		(void *)i, PRIORITY, &g_task) == pdPASS);
    }

    vTaskDelay(100);
    vTaskDelete(w_task);
    ex_2_destroy();
    ESP_LOGI(TAG, "ex_2 ends");
}


/* --- */

/* Exercise 3: Improve the function that waits for an event, developed in the
   previous exercise, so that it informs the calling process about the loss of
   events due to the message queue being full. The event loss indication must
   be provided as closely as possible to the time at which the lost events
   would have been received. It may be assumed that only one event, or a group
   of consecutively generated events, may have been lost in the time span
   covered by the events in the queue.

   To perform a (very partial) test of the code we create one task that waits
   for events and prints them out, plus two waves of EX_2_NG tasks separated by
   a short delay.  Each task generates an event and terminates.
*/

#define EX_3_N 5		/* Number of elements in the message queue */
#define EX_3_NG 8		/* Number of event-generating tasks */

/* With respect to the Exercise 2, we add a mutual exclusion semaphore to
   protect the event queue overflow detection logic.
*/
SemaphoreHandle_t ex_3_m;
QueueHandle_t ex_3_q;

/* Message sent by the event-generating tasks to ex_3_q.  With respect to
   Exercise 2, the message contains the .overflow member.  When true, it
   indicates that the messages is a placeholder for a queue overflow instead
   of a real event.
*/
struct ex_3_msg
{
    bool overflow;	/* Queue overflow flag */
    int origin;		/* Task identifier */
};

/* We dimension the event queue so that it can hold one element more than the
   maximum number of events EX_3_N.  In this way we are sure there is always
   room in the queue for an overflow indication.
*/
void ex_3_init(void)
{
    assert((ex_3_m = xSemaphoreCreateMutex()) != NULL);
    assert((ex_3_q = xQueueCreate(EX_3_N+1, sizeof(struct ex_3_msg))) != NULL);
}

void ex_3_destroy(void)
{
    vSemaphoreDelete(ex_3_m);
    vQueueDelete(ex_3_q);
}

/* Generate an event coming from task 'id'.  Push an overflow indication in the
   queue and return true if unable to generate the event because the message
   queue was full.
*/
bool ex_3_generate(int id)
{
    bool st = false;

    /* Taking ex_3_m ensures that the number of elements in the queue remains
       consistent and, in particular, cannot increase while we evaluate whether
       there is an overflow or not and act accordingly.
    */
    assert(xSemaphoreTake(ex_3_m, portMAX_DELAY) == pdTRUE);

    UBaseType_t n_el = uxQueueMessagesWaiting(ex_3_q);

    if( n_el > EX_3_N )
	/* Overload indication still in the queue.  No further action on the
	   queue, report to the caller.
	*/
	st = true;

    else
    {
	struct ex_3_msg msg = { .origin = id, .overflow = false };
	if( n_el == EX_3_N )
	{
	    /* Overload detected. Signal it through the queue and report to
	       the caller.
	    */
	    msg.overflow = true;
	    st = true;
	}
	else
	    /* No overload. */
	    st = false;

	assert(xQueueSend(ex_3_q, &msg, 0) == pdPASS);
    }

    assert(xSemaphoreGive(ex_3_m) == pdTRUE);
    return st;
}

/* Wait for an event.  Store the identifier of the task that generated it into
   'id'.  Return true if there was an event queue overflow, false otherwise.
*/
bool ex_3_wait(int *id)
{
    struct ex_3_msg msg;
    assert(xQueueReceive(ex_3_q, &msg, portMAX_DELAY) == pdPASS);
    *id = msg.origin;
    return msg.overflow;
}

/* This task repeatedly waits for events until is is deleted by ex_3() */
void ex_3_w_task(void *unused)
{
    while(1)
    {
	int id;
	if(ex_3_wait(&id))
	    ESP_LOGI(TAG, "Received overflow ind. generated by task %d", id);
	else
	    ESP_LOGI(TAG, "Received event from task %d", id);
    }
}

/* Each instance of this task attempts to generate an event and terminates */
void ex_3_g_task(void *arg)
{
    int id = (int)arg;		/* This assumes that an int fits in a void * */
    if(ex_3_generate(id))
	ESP_LOGI(TAG, "Task %d unable to generate event", id);
    else
	ESP_LOGI(TAG, "Task %d generated an event", id);
    vTaskDelete(NULL);
}

void ex_3(void)
{
    ESP_LOGI(TAG, "ex_3 starts");
    ex_3_init();

    TaskHandle_t w_task;
    assert(
	xTaskCreate(
	    ex_3_w_task, "W", STACK_DEPTH, NULL, PRIORITY, &w_task) == pdPASS);

    /* Create event-generating tasks in two waves of EX_3_NG instances
       separated by a short delay that gives ex_3_w_task() time to drain the
       event queue.  Argument passing assumes that a void * can hold an int.
    */
    for(int i=0; i<EX_3_NG; i++)
    {
	TaskHandle_t g_task;
	assert(
	    xTaskCreate(
		ex_3_g_task, "G", STACK_DEPTH,
		(void *)i, PRIORITY, &g_task) == pdPASS);
    }

    vTaskDelay(10);

    for(int i=0; i<EX_3_NG; i++)
    {
	TaskHandle_t g_task;
	assert(
	    xTaskCreate(
		ex_3_g_task, "G", STACK_DEPTH,
		(void *)i, PRIORITY, &g_task) == pdPASS);
    }

    vTaskDelay(100);
    vTaskDelete(w_task);
    ex_3_destroy();
    ESP_LOGI(TAG, "ex_3 ends");
}

void app_main(void)
{
    ex_1();
    ex_2();
    ex_3();
}

#include "queue_manager.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
class QueuedCopy:public QueueManager
{
    virtual void consume(char *buf, int size)
    {
        //Coded buf content: filename len (1 byte), filename, image content
        if(size == 0 || size <= buf[0])
        {
            printf("Unexpected message size\n");
            return;
        }
        char *name = new char[buf[0]+1];
        memcpy(name, &buf[1], buf[0]);
        name[buf[0]] = 0;
        printf("Writing %s\n", name);
        FILE *f = fopen(name, "w");
        char *imagePtr = &buf[buf[0]+1];
        int imageSize = size - buf[0] - 1; 
        fwrite(imagePtr, 1, imageSize, f);
        fflush(f);
        fclose(f);
        delete[] name;
        delete [] buf;
    }
};

int main(int argc, char *argv[])
{
    char inFileName[256];
    char outFileName[256];
    QueuedCopy qCopy;
    qCopy.start();
    printf("PARTITO\n");
    for(int i = 0; i < 202; i++)
    {
        sprintf(inFileName, "/home/mdsplus/56022_frames_jpg/56022_%03d.jpg", i+1);
        sprintf(outFileName, "Out_%03d.jpg", i+1);
        FILE *f = fopen(inFileName, "r");
   // Get file size
        fseek(f, 0, SEEK_END);
        long fileSize = ftell(f);
        rewind(f);  // Move file pointer back to beginning
        //In addition to file content we pass out filename info
        //nameLen(1 byte), name
        char *buffer = new char[fileSize+1+strlen(outFileName)];
        buffer[0] = strlen(outFileName);
        memcpy(&buffer[1],  outFileName, strlen(outFileName));
        fread(&buffer[strlen(outFileName)+1], 1, fileSize, f);
        fclose(f);
        qCopy.produce(buffer, fileSize + 1 + strlen(outFileName));
    }
    qCopy.stop();
    return 0;
}


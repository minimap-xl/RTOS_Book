/** @file

    Linux test program for the CAN/UDP gateway.
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <inttypes.h>
#include <canudp.h>

/** Operation the test program must perform. */
enum Operation {
    OP_RECEIVE,			/**< Receive until timeout. */
    OP_TRANSMIT			/**< Transmit a CAN/UDP datagram. */
};

/** CAN frame format to be used for transmission. */
enum Frame_format {
    FF_BASE,			/**< Base (11-bit identifiers) */
    FF_EXTENDED			/**< Extended (29-bit identifiers) */
};

/** Data structure that stores what the user has requested on the command
    line, except for the CAN identifier and data to be transmitted, which are
    stored directly into a struct Canudp_msg.  Some fields are significant only
    when the test program is asked to transmit.
*/
struct Command_line {
    struct Canudp_config canudp_config; /**< UDP interface and port */
    enum Frame_format ff;		/**< CAN frame format (transmission) */
    bool rtr;				/**< RTR frame (transmission) */
    enum Operation op;			/**< Operation */
};

#define DEFAULT_IF_NAME "lo"	/**< Default interface name */
#define DEFAULT_PORT 9999	/**< Default UDP port */

/** Parse an integer from @p input, check its value is in the range [@p min, @p
    max] and store the result in @p result.  This function changes @p result
    only upon success.  This function makes use of `strtol(..., 0)`.  So, it
    accepts values encoded in base 10 (no prefix), 8 ("0" prefix), and 16 ("0x"
    prefix).

    @return Non-zero value upon error, zero if successful.
*/
static int parse_int(
    const char *input,		/**< String to be parsed */
    int min,			/**< Minimum valid value */
    int max,			/**< Maximum valid value */
    int *result			/**< Result */
    )
{
    char *end;
    long l = strtol(input, &end, 0);
    int st;

    if(*input != '\0' && *end == '\0' && l >= min && l <= max)
    {
	/* Since l is between min and max, and min and max are int,
	   then converting l to int should do no harm in most
	   cases.
	*/
	*result = l;
	st = 0;
    }

    else
	st = -1;

    return st;
}

/** Set the fields of the data structure pointed by @p command_line as
    specified by command-line options or to a default value.

    The function reorders the elements of @p argv and sets the global variable
    @p optind to the first @p argv element it did not parse.  It returns a
    non-zero status code upon error and zero otherwise.

    Currently, this function recognizes the following options.  Options `-i`
    and `-p` require an argument (a string and an integer, respectively) and
    set the corresponding field to the argument value.  Options `-e`, `-r`, and
    `-t` set the corresponding field to `FF_EXTENDED`, `true`, and
    `OP_TRANSMIT`, respectively.

    | Option | Field                   | Default         |
    | ------ | ----------------------- | ----------------|
    | -i     | .canudp_config.if_name  | DEFAULT_IF_NAME |
    | -p     | .canudp_config.udp_port | DEFAULT_PORT    |
    | -e     | .ff                     | FF_BASE         |
    | -r     | .rtr                    | false           |
    | -t     | .op                     | OP_RECEIVE      |

    @return Non-zero value upon error, zero if successful.
*/
static int parse_options(
    int argc,			/**< Argument count */
    char * const argv[],	/**< Argument vector */
    struct Command_line *command_line /**< Structure to be filled */
    )
{
    const struct Command_line def_command_line = {
	.canudp_config.if_name = DEFAULT_IF_NAME,
	.canudp_config.udp_port = DEFAULT_PORT,
	.ff = FF_BASE,
	.rtr = false,
	.op = OP_RECEIVE
    };
    int st = 0;
    int opt;

    *command_line = def_command_line;
    while((opt = getopt(argc, argv, "i:p:ert")) != -1 && st == 0)
    {
	switch(opt)
	{
	case 'i':
	{
	    /* Interface name */
	    strncpy(
		command_line->canudp_config.if_name, optarg, CANUDP_IFNAMSIZ);
	    command_line->canudp_config.if_name[CANUDP_IFNAMSIZ-1] = '\0';
	    break;
	}

	case 'p':
	{
	    /* Port number */
	    if(parse_int(
		   optarg, 0, 65535, &command_line->canudp_config.udp_port))
	    {
		fprintf(
		    stderr, "%s: invalid port number '%s'; using default.\n",
		    argv[0], optarg);
	    }
	    break;
	}

	case 'e':
	    command_line->ff = FF_EXTENDED;
	    break;

	case 'r':
	    command_line->rtr = true;
	    break;

	case 't':
	    command_line->op = OP_TRANSMIT;
	    break;

	case '?':
	    st = -1;
	    break;
	}
    }

    if(!st)
    {
	fprintf(stderr, "(if_name %s, udp_port %d, ff %d, rtr %d op %d)\n",
		command_line->canudp_config.if_name,
		command_line->canudp_config.udp_port,
		command_line->ff,
		command_line->rtr,
		command_line->op);

	if(command_line->op == OP_RECEIVE
	   && (command_line->ff == FF_EXTENDED || command_line->rtr))
	    fprintf(stderr, "(-e and -r options ignored when receiving)\n");
    }
    else
	fprintf(stderr, "(could not parse command-line options)\n");

    return st;
}

/** Set the message type of message @p msg according to what was requested on
    the command line @p command_line.
*/
static void set_msg_type(
    const struct Command_line *command_line, /**< Command line */
    struct Canudp_msg *msg	/**< CAN message to be filled */
    )
{
    uint32_t type = 0;

    switch(command_line->ff)
    {
    case FF_BASE:
	type |= CANUDP_MSG_TYPE_BASE;
	break;

    case FF_EXTENDED:
	type |= CANUDP_MSG_TYPE_EXT;
	break;

    default:
	break;
    }

    if(command_line->rtr)  type |= CANUDP_MSG_TYPE_RTR;
    canudp_msg_set_type(msg, type);
}

/** Parse the CAN identifier on the command line.  This function reads the CAN
    identifier from the command line and stores it into @p msg.  The allowed
    range depends on the CAN frame format set on the @p command_line.

    The other members of @p msg are left untouched.

    @return Non-zero value upon error, zero if successful.
*/
static int parse_id(
    int argc,			/**< Argument count */
    char * const argv[],	/**< Argument vector */
    const struct Command_line *command_line, /**< Command line */
    struct Canudp_msg *msg	/**< CAN message to be filled */
    )
{
    int st = 0;

    if(optind >= argc)
    {
	fprintf(
	    stderr, "%s: no CAN identifier on the command line.\n", argv[0]);
	st = -1;
    }
    else
    {
	int id;
	if(parse_int(
	       argv[optind], 0,
	       command_line->ff == FF_EXTENDED ? 0x1FFFFFFF : 0x3FF, &id))
	{
	    fprintf(
		stderr, "%s: invalid CAN identifier '%s'.\n",
		argv[0], argv[optind]);
	    st = -1;
	}
	else
	{
	    canudp_msg_set_id(msg, id);
	    optind++;
	}
    }

    return st;
}

/** Parse data bytes on the command line based on what @p command_line
    specifies.

    - When @p op is OP_TRANSMIT and we are not transmitting an RTR this function
    reads any data bytes from the command line, stores them into @p msg and
    sets the message length accordingly.

    - When @p op is OP_RECEIVE or we are transmitting an RTR, it sets the @p msg
    length to zero.  Moreover, it checks there are no data bytes on the command
    line and prints a warning otherwise.

    The other members of @p msg are left untouched.

    @note Currently the test program cannot transmit CAN frames with a Data
    Length Code (DLC) greater than 8 and still containing 8 bytes of data.  As
    a consequence, the DLC value is always equal to the message data length.

    @return Non-zero value upon error, zero if successful.
*/
static int parse_data(
    int argc,			/**< Argument count */
    char * const argv[],	/**< Argument vector */
    const struct Command_line *command_line, /**< Command line */
    struct Canudp_msg *msg	/**< CAN message to be filled */
    )
{
    int st = 0;

    if(command_line->op == OP_TRANSMIT && !command_line->rtr)
    {
	int len;
	for(len = 0;
	    len < CANUDP_MAX_DATA && optind < argc; len++, optind++)
	{
	    int d;
	    if(parse_int(argv[optind], 0, UINT8_MAX, &d))
	    {
		fprintf(
		    stderr, "%s: invalid data byte '%s'.\n",
		    argv[0], argv[optind]);
		st = -1;
		break;
	    }
	    else
		canudp_msg_set_data(msg, len, d);
	}

	if(st == 0 && optind < argc)
	{
	    fprintf(stderr, "%s: too many data bytes.\n", argv[0]);
	    st = -1;
	}
	else
	    canudp_msg_set_dlc(msg, len);
    }

    else
    {
	if(optind < argc)
	    fprintf(stderr, "(extra command-line arguments ignored)\n");
	canudp_msg_set_dlc(msg, 0);
    }

    return st;
}

/** Parse command-line options, CAN identifier, and data.  This function parses
    the whole command line by means of parse_options(), parse_id(), and
    parse_data().  Then, it fills the data structures pointed by @p
    command_line and @p msg as needed.

    The command line as a whole is composed of the following elements:

    - Options, as described in parse_options().  Some options are ignored when
      receiving.

    - Only when transmitting, a CAN identifier as described in parse_id().

    - Only when transmitting a data frame (not an RTR), from zero to 8 bytes of
      data as described in parse_data().

    @return Non-zero value upon error, zero if successful.
*/
static int parse_command_line(
    int argc,			/**< Argument count */
    char * const argv[],	/**< Argument vector */
    struct Command_line *command_line, /**< Structure to be filled */
    struct Canudp_msg *msg	/**< CAN message to be filled */
    )
{
    int st = parse_options(argc, argv, command_line);
    if(st == 0)
    {
	if(command_line->op == OP_TRANSMIT)
	{
	    set_msg_type(command_line, msg);
	    st = parse_id(argc, argv, command_line, msg);
	}

	if(st == 0)
	    st = parse_data(argc, argv, command_line, msg);
    }

    return st;
}

/** Transmit the CAN frame @p msg via UDP through context @p ctx.
*/
static int exec_transmit(
    struct Canudp_ctx *ctx,	       /**< Canudp context */
    struct Canudp_msg *msg	/**< Message to be transmitted */
    )
{
    enum Canudp_st st = canudp_transmit(ctx, msg);
    if(st != CANUDP_ST_OK)
	fprintf(stderr, "canudp_transmit: error %d\n", st);
    return (st != CANUDP_ST_OK) ? EXIT_FAILURE : EXIT_SUCCESS;
}

/** Receive and print CAN frames received from UDP through context @p ctx.  The
    function returns when an error occurs or there is a receive timeout.
*/
static int exec_receive(
    struct Canudp_ctx *ctx	       /**< Canudp context */
    )
{
    enum Canudp_st st;
    struct Canudp_msg msg;
    while((st = canudp_receive(ctx, &msg)) == CANUDP_ST_OK)
    {
	/* This is not a switch because multiple flags may be set */
	uint32_t type = canudp_msg_type(&msg);
	if(type & CANUDP_MSG_TYPE_BASE)  fprintf(stderr, "B");
	if(type & CANUDP_MSG_TYPE_EXT)  fprintf(stderr, "E");
	if(type & CANUDP_MSG_TYPE_RTR)  fprintf(stderr, "R");
	if(type & CANUDP_MSG_TYPE_ERR)  fprintf(stderr, "*");

	fprintf(stderr, " 0x%" PRIx32 " [%" PRIx8 "] ",
		canudp_msg_id(&msg), canudp_msg_dlc(&msg));

	int len = canudp_msg_length(&msg);
	for(int i=0; i<len; i++)
	    fprintf(stderr, " %02" PRIx8,
		    canudp_msg_data(&msg, i));

	fprintf(stderr, "\n");
    }

    if(st == CANUDP_ST_TIMEOUT)
	fprintf(stderr, "(Timeout receiving from UDP)\n");
    else
	fprintf(stderr, "canudp_receive: error %d\n", st);
    return (st != CANUDP_ST_TIMEOUT) ? EXIT_FAILURE : EXIT_SUCCESS;
}

/** Execute the command line @p command_line.  If the command line asks the
    tool to transmit a message, then @p msg contains the message to be
    transmitted.

    @note This function creates a Canudp context and sets its receive timeout
    to 30s.  If no UDP traffic is detected within this time period the receive
    operation will terminate.

    @return Non-zero value upon error, zero if successful.  The return value is
    meant to be used as the exit code of the tool.
*/
static int exec_command_line(
    struct Command_line *command_line, /**< Parsed command line */
    struct Canudp_msg *msg	/**< Message to be transmitted */
    )
{
    int ret = EXIT_FAILURE;
    struct Canudp_ctx ctx;
    struct timeval receive_timeout = {
	.tv_sec = 30,
	.tv_usec = 0
    };
    enum Canudp_st st = canudp_open(
	&ctx, &command_line->canudp_config, &receive_timeout);

    if(st != CANUDP_ST_OK)
    {
	fprintf(stderr, "canudp_open: error %d\n", st);
	ret = EXIT_FAILURE;
    }

    else
	switch(command_line->op)
	{
	case OP_TRANSMIT:
	    ret = exec_transmit(&ctx, msg);
	    break;

	case OP_RECEIVE:
	    ret = exec_receive(&ctx);
	    break;

	default:
	    fprintf(stderr, "Invalid operation\n");
	    ret = EXIT_FAILURE;
	    break;
	}

    /* Report, but ignore errors while closing the context */
    if((st = canudp_close(&ctx)) != CANUDP_ST_OK)
	fprintf(stderr, "(canudp_close: error %d)\n", st);

    return ret;
}

/** Main program. */
int main(int argc, char *argv[])
{
    struct Command_line command_line;
    struct Canudp_msg msg;

    if(parse_command_line(argc, argv, &command_line, &msg))
	return EXIT_FAILURE;

    return exec_command_line(&command_line, &msg);
}

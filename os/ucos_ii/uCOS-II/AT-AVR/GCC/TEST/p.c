/*
**************************************************************************************************************
*                                                uC/OS-II
*                                          The Real-Time Kernel
*
*
*                                             AVR Sample code
* File        : TEST.C
* By          : Ole Saether
* Version     : V1.01
*
* AVR-GCC port version : 1.0 	2001-04-02 modified/ported to avr-gcc by Jesper Hansen (jesperh@telia.com)
*
*
* Description :
*
*         This file contains a simple example program showing how to use the AVR port of uC/OS-II. It is
*         based on Example #1 from Jean Labrosse's book "MicroC/OS-II, The Real Time Kernel." The main
*         difference is that this example does not display the time of day and the uC/OS-II version number.
*         You must have the AVR UART connected to a VT102 compatible terminal (HyperTerminal in Windows is OK)
*         to get the most out of this example.
*
*         The support routines at the end of this file are included only to make this example run; they should
*         not be used in production code without careful testing.
**************************************************************************************************************
*/

#include "includes.h"

#define inp(port) (port)
#define outp(val, port) (port) = (val)

/*
**************************************************************************************************************
*                                               CONSTANTS
**************************************************************************************************************
*/

#define  TASK_STK_SIZE  OS_TASK_DEF_STK_SIZE            /* Size of each task's stacks (# of bytes)          */
#define  N_TASKS        10                              /* Number of identical tasks                        */

/*
**************************************************************************************************************
*                                               VARIABLES
**************************************************************************************************************
*/

OS_STK          TaskStk[N_TASKS][TASK_STK_SIZE];        /* Tasks stacks                                     */
OS_STK          TaskStartStk[TASK_STK_SIZE];
char            TaskData[N_TASKS];                      /* Parameters to pass to each task                  */
OS_EVENT       *RandomSem;
OS_EVENT       *DispStrSem;
INT32U          RndNext;                                /* Used by random generator                         */
INT8U           UartTxBuf[256];                         /* 256 bytes UART transmit buffer                   */
INT8U           UartTxRdPtr;                            /* UART transmit buffer read pointer                */
INT8U           UartTxWrPtr;                            /* UART transmit buffer write pointer               */
INT8U           UartTxCount;                            /* Number of characters to send                     */
OS_EVENT       *UartTxSem;


unsigned char kurt;

/*
**************************************************************************************************************
*                                           FUNCTION PROTOTYPES
**************************************************************************************************************
*/

void  Task(void *data);                                 /* Function prototypes of tasks                     */
void  TaskStart(void *data);                            /* Function prototypes of Startup task              */
void  PutChar(char c);                                  /* Write a character to the AVR UART                */
void  AvrInit(void);                                    /* Initialize AVR                                   */
void  PutString(const char *s);                         /* Write a null-terminated string to the AVR UART   */
void  SPrintDec(char *, INT16U, INT8U);                 /* Output an INT16U to a string (right adjust)      */
void  PutDec (INT8U x);                                 /* Display an INT8U without leading zeros           */
void  VT102Attribute (INT8U fgcolor, INT8U bgcolor);    /* Set attributes on VT102 terminal                 */
void  VT102DispClrScr(void);                            /* Clear VT102 terminal                             */
void  VT102DispChar(INT8U, INT8U, char, INT8U, INT8U);  /* Display a character on VT102 terminal            */
void  VT102DispStr(INT8U, INT8U, char *, INT8U, INT8U); /* Display a string on VT102 terminal               */
INT8U random(INT8U n);                                  /* Simple random generator (found in K&R)           */

/*
**************************************************************************************************************
*                                                MAIN
**************************************************************************************************************
*/

int main (void)
{
    AvrInit();                                          /* Initialize the AVR UART and Timer                */
    PutString("Truth");
                   
    return 0;
}

/*
**************************************************************************************************************
*                                                  SUPPORT ROUTINES
**************************************************************************************************************
*/

SIGNAL(SIG_UART_TRANS)      
{
    UartTxCount--;                                      /* Decrement number of characters left to send      */
    if (UartTxCount) {
        outp(UartTxBuf[UartTxRdPtr],UDR);               /* Place next character into UART transmit register */
        UartTxRdPtr++;                                  /* Advance to next character                        */
        OSSemPost(UartTxSem);                           /* Signal that we have room for one more character  */
    } else {
        outp(inp(UCR) & ~0x40,UCR);                     /* Disable UART transmit complete interrupt         */
    }
}

void AvrInit (void)
{
    outp(0x05,	TCCR0);                                 /* Set TIMER0 prescaler to CLK/1024                 */
    outp(0x02,  TIMSK);                                 /* Enable TIMER0 overflow interrupt                 */

    outp(35,	UBRR);                                  /* 19200 BAUD at 11.059200MHz                          */

    outp((1<<SRE)/*|(1<<SRW)*/, MCUCR);                   /* Enable external RAM                              */
    outp(0x08,	UCR);                                   /* Enable UART transmitter                          */
    outp(inp(UDR) | 0x40,UDR);                         /* Clear UART transmit complete bit (TXC)           */

    UartTxCount = 0;                                    /* Clear number of characters to send               */
    UartTxRdPtr = 0;                                    /* Initialize transmit buffer read pointer          */
    UartTxWrPtr = 0;                                    /* Initialize transmit buffer write pointer         */
}


void PutChar (char c)
{
    INT8U err;

    if (UartTxCount) {
        OSSemPend(UartTxSem, 0, &err);                  /* Wait for space in transmit buffer                */
    }
    OS_ENTER_CRITICAL();
    if (UartTxCount) {
        UartTxBuf[UartTxWrPtr] = c;                     /* Put character to send in transmit buffer         */
        UartTxWrPtr++;                                  /* Prepare for next character                       */
        UartTxCount++;                                  /* Increment number of characters to send           */
    } else {
        outp(c,	UDR);                                /* Write first char directly to the UART            */
        UartTxCount = 1;
        outp(inp(UCR) | 0x40,UCR);                             /* Enable UART transmit complete interrupt          */
    }
    OS_EXIT_CRITICAL();
}


void PutString (const char *s)
{
    while (*s != '\0') {
        PutChar(*s++);
    }
}

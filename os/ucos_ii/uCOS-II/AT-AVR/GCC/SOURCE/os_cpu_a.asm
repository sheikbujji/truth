;********************************************************************************************************
;                                               uC/OS-II
;                                         The Real-Time Kernel
;
;                                          AVR Specific code
;                                           (AVR-GCC 2.95.2)
;
;
; File         : OS_CPU_A.ASM
; By           : Ole Saether
; Port Version : V1.01
;
; AVR-GCC port version : 1.0 	2001-04-02 modified/ported to avr-gcc by Jesper Hansen (jesperh@telia.com)
;
;
;********************************************************************************************************

#define OS_CPU_A
#include "os_cpu.h"

;********************************************************************************************************
;                                           I/O PORT ADDRESSES
;********************************************************************************************************

SREG    = 0x3F
SPH     = 0x3E
SPL     = 0x3D
TCNT0   = 0x32

;********************************************************************************************************
;                                          PUBLIC DECLARATIONS
;********************************************************************************************************

                .global OSStartHighRdy
                .global OSCtxSw
                .global OSIntCtxSw
                .global	OSTickISR

;********************************************************************************************************
;                                         EXTERNAL DECLARATIONS
;********************************************************************************************************

                .extern	OSIntExit
                .extern	OSIntNesting
                .extern	OSPrioCur
                .extern	OSPrioHighRdy
                .extern	OSRunning
                .extern	OSTaskSwHook
                .extern	OSTCBCur
                .extern	OSTCBHighRdy
                .extern	OSTimeTick

;********************************************************************************************************
;                                         MACROS
;********************************************************************************************************

; Push all registers and the status register	
.macro	PUSHRS

		push	r0
		push	r1
		push	r2
		push	r3
		push	r4
		push	r5
		push	r6
		push	r7
		push	r8
		push	r9
		push	r10
		push	r11
		push	r12
		push	r13
		push	r14
		push	r15
		push	r16
		push	r17
		push	r18
		push	r19
		push	r20
		push	r21
		push	r22
		push	r23
		push	r24
		push	r25
		push	r26
		push	r27
		push	r28
		push	r29
		push	r30
		push	r31
		in		r16,SREG
		push	r16

.endm

; Pop all registers and the status registers
.macro	POPRS

		pop		r16
		out		SREG,r16
		pop		r31
		pop		r30
		pop		r29
		pop		r28
		pop		r27
		pop		r26
		pop		r25
		pop		r24
		pop		r23
		pop		r22
		pop		r21
		pop		r20
		pop		r19
		pop		r18
		pop		r17
		pop		r16
		pop		r15
		pop		r14
		pop		r13
		pop		r12
		pop		r11
		pop		r10
		pop		r9
		pop		r8
		pop		r7
		pop		r6
		pop		r5
		pop		r4
		pop		r3
		pop		r2
		pop		r1
		pop		r0

.endm

			.text
			.section	.text
			

;********************************************************************************************************
;                               START HIGHEST PRIORITY TASK READY-TO-RUN
;
; Description : This function is called by OSStart() to start the highest priority task that was created
;               by your application before calling OSStart().
;
; Note(s)     : 1) The (data)stack frame is assumed to look as follows:
;
;                  OSTCBHighRdy->OSTCBStkPtr --> LSB of (return) stack pointer           (Low memory)
;                                                SPH of (return) stack pointer
;                                                Flags to load in status register
;                                                R31
;                                                R30
;                                                R7
;                                                .
;                                                .
;                                                .
;                                                R0                                      (High memory)
;
;                  where the stack pointer points to the task start address.
;
;
;               2) OSStartHighRdy() MUST:
;                      a) Call OSTaskSwHook() then,
;                      b) Set OSRunning to TRUE,
;                      c) Switch to the highest priority task.
;********************************************************************************************************

OSStartHighRdy: CALL   OSTaskSwHook                ; Invoke user defined context switch hook
                LDS     R16,OSRunning               ; Indicate that we are multitasking
                INC     R16                         ;
                STS     OSRunning,R16               ;

                LDS     R30,OSTCBHighRdy            ; Let Z point to TCB of highest priority task
                LDS     R31,OSTCBHighRdy+1          ; ready to run

                LD      R28,Z+                      ; Load stack L pointer
				out		SPL,R28
                LD      R29,Z+                      ;
				out		SPH,R29

                POPRS                               ; Pop all registers and status register
                RET                                 ; Start task

;********************************************************************************************************
;                                       TASK LEVEL CONTEXT SWITCH
;
; Description : This function is called when a task makes a higher priority task ready-to-run.
;
; Note(s)     : 1) Upon entry,
;                  OSTCBCur     points to the OS_TCB of the task to suspend
;                  OSTCBHighRdy points to the OS_TCB of the task to resume
;
;               2) The stack frame of the task to suspend looks as follows:
;
;                                       SP+0 --> LSB of task code address
;                                         +1     MSB of task code address                (High memory)
;
;               3) The saved context of the task to resume looks as follows:
;
;                  OSTCBHighRdy->OSTCBStkPtr --> LSB of (return) stack pointer           (Low memory)
;                                                SPH of (return) stack pointer
;                                                Flags to load in status register
;                                                R31
;                                                R30
;                                                R7
;                                                .
;                                                .
;                                                .
;                                                R0                                      (High memory)
;********************************************************************************************************

OSCtxSw:        PUSHRS                              ; Save current tasks context

                LDS     R30,OSTCBCur                ; Z = OSTCBCur->OSTCBStkPtr
                LDS     R31,OSTCBCur+1              ;

				in		r28,SPL
                ST      Z+,R28                      ; Save Y (R29:R28) pointer
				in		r29,SPH
                ST      Z+,R29                      ;

                CALL   OSTaskSwHook                ; Call user defined task switch hook

                LDS     R16,OSPrioHighRdy           ; OSPrioCur = OSPrioHighRdy
                STS     OSPrioCur,R16

                LDS     R30,OSTCBHighRdy            ; Let Z point to TCB of highest priority task
                LDS     R31,OSTCBHighRdy+1          ; ready to run
                STS     OSTCBCur,R30                ; OSTCBCur = OSTCBHighRdy
                STS     OSTCBCur+1,R31              ;

                LD      R28,Z+                      ; Restore Y pointer
				out		SPL,R28
                LD      R29,Z+                      ;
				out		SPH,R29

                POPRS                               ; Restore all registers and the status register
                RET


;*********************************************************************************************************
;                                INTERRUPT LEVEL CONTEXT SWITCH
;
; Description : This function is called by OSIntExit() to perform a context switch to a task that has
;               been made ready-to-run by an ISR.
;
; Note(s)     : 1) Upon entry,
;                  OSTCBCur     points to the OS_TCB of the task to suspend
;                  OSTCBHighRdy points to the OS_TCB of the task to resume
;
;               2) The stack frame of the task to suspend looks as follows:
;
;                                       SP+0 --> LSB of return address of OSIntCtxSw()   (Low memory)
;                                         +1     MSB of return address of OSIntCtxSw()
;                                         +2     LSB of return address of OSIntExit()
;                                         +3     MSB of return address of OSIntExit()
;			 							possible SREG save	
;                                         +4     LSB of task code address
;                                         +5     MSB of task code address                (High memory)
;
;               3) The saved context of the task to resume looks as follows:
;
;                  OSTCBHighRdy->OSTCBStkPtr --> Flags to load in status register         (Low memory)
;                                                R31
;                                                R30
;                                                R7
;                                                .
;                                                .
;                                                .
;                                                R0                                      (High memory)
;*********************************************************************************************************

OSIntCtxSw:     IN      R28,SPL                    ; Z = SP
                IN      R29,SPH

#if      OS_CRITICAL_METHOD == 1
                ADIW    R28,4                       ; Use if OS_CRITICAL_METHOD is 1, see OS_CPU.H
#endif
#if      OS_CRITICAL_METHOD == 2
                ADIW    R28,5                       ; Use if OS_CRITICAL_METHOD is 2, see OS_CPU.H
#endif

                LDS     R30,OSTCBCur                ; Z = OSTCBCur->OSTCBStkPtr
                LDS     R31,OSTCBCur+1              ;
                ST      Z+,R28                      ; Save Y pointer
                ST      Z+,R29                      ;

                CALL   OSTaskSwHook                ; Call user defined task switch hook

                LDS     R16,OSPrioHighRdy           ; OSPrioCur = OSPrioHighRdy
                STS     OSPrioCur,R16               ;

                LDS     R30,OSTCBHighRdy            ; Z = OSTCBHighRdy->OSTCBStkPtr
                LDS     R31,OSTCBHighRdy+1          ;
                STS     OSTCBCur,R30                ; OSTCBCur = OSTCBHighRdy
                STS     OSTCBCur+1,R31              ;

                LD      R28,Z+                      ; Restore Y pointer
				out		SPL,R28
                LD      R29,Z+                      ;
				out		SPH,R29

                POPRS                               ; Restore all registers and status register
                RET

;********************************************************************************************************
;                                           SYSTEM TICK ISR
;
; Description : This function is the ISR used to notify uC/OS-II that a system tick has occurred.
;
;
;********************************************************************************************************

.global	_overflow0_
_overflow0_:
OSTickISR:      SEI                                 ; Enable interrupts
                PUSHRS                              ; Save all registers and status register

                LDS     R16,OSIntNesting            ; Notify uC/OS-II of ISR
                INC     R16                         ;
                STS     OSIntNesting,R16            ;
                
                CALL   OSTimeTick                  ; Call uC/OS-IIs tick updating function
				NOP
                CALL   OSIntExit                   ; Notify uC/OS-II about end of ISR
                LDI     R16,256-(11059200/50/1024)   ; Reload timer to overflow at a rate of 50Hz
                OUT     TCNT0,R16                   ; at a prescaler of 1024 and 7.3728 MHz AVR clock

                POPRS                               ; Restore all registers and status register
                RET                                 ; Note: RET instead of RETI

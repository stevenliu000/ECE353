! Name of package being compiled: Main
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_Thread_InitializeScheduler
	.import	_P_Thread_Run
	.import	_P_Thread_PrintReadyList
	.import	_P_Thread_ThreadStartMain
	.import	_P_Thread_ThreadFinish
	.import	_P_Thread_FatalError
	.import	_P_Thread_SetInterruptsTo
	.import	_P_Thread_TimerInterruptHandler
	.import	Switch
	.import	ThreadStartUp
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from other packages
	.import	_P_Synch_Semaphore
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex2
! The following class and its methods are from other packages
	.import	_P_Synch_Condition
! The following class and its methods are from this package
	.export	_P_Main_GameParlor
	.export	_Method_P_Main_GameParlor_1
	.export	_Method_P_Main_GameParlor_2
	.export	_Method_P_Main_GameParlor_3
	.export	_Method_P_Main_GameParlor_4
! The following class and its methods are from this package
	.export	_P_Main_ForkMonitor
	.export	_Method_P_Main_ForkMonitor_1
	.export	_Method_P_Main_ForkMonitor_2
	.export	_Method_P_Main_ForkMonitor_3
	.export	_Method_P_Main_ForkMonitor_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_Thread_readyList
	.import	_P_Thread_currentThread
	.import	_P_Thread_mainThread
	.import	_P_Thread_idleThread
	.import	_P_Thread_threadsToBeDestroyed
	.import	_P_Thread_currentInterruptStatus
! Global variables in this package
	.data
_Global_mon:
	.skip	132
_Global_philospher:
! Static array
	.word	5		! number of elements
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align
_Global_barbers:
	.skip	4092
_Global_customers:
	.skip	36832
_Global_waitingCustomers:
	.skip	20
_Global_barberSemephore:
	.skip	20
_Global_accessLock:
	.skip	20
_Global_occupiedChairs:
	.skip	4
_Global_barberDone:
	.skip	20
_Global_customerDone:
	.skip	20
_Global_gameParlor:
	.skip	44
_Global_Customers:
	.skip	32740
	.align
! String constants
_StringConst_53:
	.word	4			! length
	.ascii	".   "
	.align
_StringConst_52:
	.word	4			! length
	.ascii	"E   "
	.align
_StringConst_51:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_50:
	.word	57			! length
	.ascii	"------------------------------Number of dice now avail = "
	.align
_StringConst_49:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_48:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_47:
	.word	22			! length
	.ascii	"releases and adds back"
	.align
_StringConst_46:
	.word	13			! length
	.ascii	"proceeds with"
	.align
_StringConst_45:
	.word	8			! length
	.ascii	"requests"
	.align
_StringConst_44:
	.word	1			! length
	.ascii	"H"
	.align
_StringConst_43:
	.word	1			! length
	.ascii	"G"
	.align
_StringConst_42:
	.word	1			! length
	.ascii	"F"
	.align
_StringConst_41:
	.word	1			! length
	.ascii	"E"
	.align
_StringConst_40:
	.word	1			! length
	.ascii	"D"
	.align
_StringConst_39:
	.word	1			! length
	.ascii	"C"
	.align
_StringConst_38:
	.word	1			! length
	.ascii	"B"
	.align
_StringConst_37:
	.word	1			! length
	.ascii	"A"
	.align
_StringConst_36:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_35:
	.word	7			! length
	.ascii	"       "
	.align
_StringConst_34:
	.word	1			! length
	.ascii	"-"
	.align
_StringConst_33:
	.word	1			! length
	.ascii	"X"
	.align
_StringConst_32:
	.word	1			! length
	.ascii	"-"
	.align
_StringConst_31:
	.word	1			! length
	.ascii	"X"
	.align
_StringConst_30:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_29:
	.word	8			! length
	.ascii	" BARBER "
	.align
_StringConst_28:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_27:
	.word	1			! length
	.ascii	"L"
	.align
_StringConst_26:
	.word	1			! length
	.ascii	"F"
	.align
_StringConst_25:
	.word	1			! length
	.ascii	"B"
	.align
_StringConst_24:
	.word	1			! length
	.ascii	"S"
	.align
_StringConst_23:
	.word	1			! length
	.ascii	"E"
	.align
_StringConst_22:
	.word	5			! length
	.ascii	" end "
	.align
_StringConst_21:
	.word	7			! length
	.ascii	" start "
	.align
_StringConst_20:
	.word	1			! length
	.ascii	"9"
	.align
_StringConst_19:
	.word	1			! length
	.ascii	"8"
	.align
_StringConst_18:
	.word	1			! length
	.ascii	"7"
	.align
_StringConst_17:
	.word	1			! length
	.ascii	"6"
	.align
_StringConst_16:
	.word	1			! length
	.ascii	"5"
	.align
_StringConst_15:
	.word	1			! length
	.ascii	"4"
	.align
_StringConst_14:
	.word	1			! length
	.ascii	"3"
	.align
_StringConst_13:
	.word	1			! length
	.ascii	"2"
	.align
_StringConst_12:
	.word	1			! length
	.ascii	"1"
	.align
_StringConst_11:
	.word	6			! length
	.ascii	"Barber"
	.align
_StringConst_10:
	.word	9			! length
	.ascii	"Aristotle"
	.align
_StringConst_9:
	.word	9			! length
	.ascii	"Nietzsche"
	.align
_StringConst_8:
	.word	4			! length
	.ascii	"Kant"
	.align
_StringConst_7:
	.word	6			! length
	.ascii	"Sartre"
	.align
_StringConst_6:
	.word	5			! length
	.ascii	"Plato"
	.align
_StringConst_5:
	.word	26			! length
	.ascii	"                Aristotle\n"
	.align
_StringConst_4:
	.word	22			! length
	.ascii	"            Nietzsche\n"
	.align
_StringConst_3:
	.word	13			! length
	.ascii	"        Kant\n"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"    Sartre\n"
	.align
_StringConst_1:
	.word	6			! length
	.ascii	"Plato\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x87d0aa21,r3		! .  hashVal = -2016368095
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_66		! .
	ret				! .
_Label_66:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Main.c\0"
_packageName:
	.ascii	"Main\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0x87d0aa21,r4		! myHashVal = -2016368095
	cmp	r3,r4
	be	_Label_67
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_67:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_68
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_68
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_68
! Make sure _P_Synch_ has hash value 0x8e356f6d (decimal -1909100691)
	set	_packageName,r2
	set	0x8e356f6d,r3
	call	_CheckVersion_P_Synch_
	.import	_CheckVersion_P_Synch_
	cmp	r1,0
	bne	_Label_68
_Label_68:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	12,r13		! source line 12
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	13,r13		! source line 13
	mov	"\0\0CA",r10
	call	_P_Thread_InitializeScheduler
! CALL STATEMENT...
!   Call the function
	mov	18,r13		! source line 18
	mov	"\0\0CA",r10
	call	_function_63_SleepingBarber
! CALL STATEMENT...
!   Call the function
	mov	19,r13		! source line 19
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! RETURN STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_69
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_69:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION DiningPhilosophers  ===============
! 
_function_65_DiningPhilosophers:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_65_DiningPhilosophers,r1
	push	r1
	mov	41,r1
_Label_860:
	push	r0
	sub	r1,1,r1
	bne	_Label_860
	mov	70,r13		! source line 70
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_70 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_70  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_71 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_71  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_72 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_72  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_73 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_73  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	75,r13		! source line 75
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_74 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_74  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	76,r13		! source line 76
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_mon = zeros  (sizeInBytes=132)
	set	_Global_mon,r4
	mov	33,r3
_Label_861:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_861
!   _Global_mon = _P_Main_ForkMonitor
	set	_P_Main_ForkMonitor,r1
	set	_Global_mon,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	79,r13		! source line 79
	mov	"\0\0SE",r10
!   _temp_76 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-136]
!   Send message Init
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	80,r13		! source line 80
	mov	"\0\0SE",r10
!   _temp_77 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-132]
!   Send message PrintAllStatus
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0SE",r10
!   _temp_78 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-128]
!   _temp_79 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-124]
!   Move address of _temp_79 [0 ] into _temp_80
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_78  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	83,r13		! source line 83
	mov	"\0\0SE",r10
!   _temp_81 = _function_64_PhilosphizeAndEat
	set	_function_64_PhilosphizeAndEat,r1
	store	r1,[r14+-116]
!   _temp_82 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-112]
!   Move address of _temp_82 [0 ] into _temp_83
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_81  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_84 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-104]
!   _temp_85 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-100]
!   Move address of _temp_85 [1 ] into _temp_86
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_84  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_87 = _function_64_PhilosphizeAndEat
	set	_function_64_PhilosphizeAndEat,r1
	store	r1,[r14+-92]
!   _temp_88 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-88]
!   Move address of _temp_88 [1 ] into _temp_89
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_87  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0SE",r10
!   _temp_90 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-80]
!   _temp_91 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-76]
!   Move address of _temp_91 [2 ] into _temp_92
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_90  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0SE",r10
!   _temp_93 = _function_64_PhilosphizeAndEat
	set	_function_64_PhilosphizeAndEat,r1
	store	r1,[r14+-68]
!   _temp_94 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-64]
!   Move address of _temp_94 [2 ] into _temp_95
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_93  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_96 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-56]
!   _temp_97 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-52]
!   Move address of _temp_97 [3 ] into _temp_98
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_96  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0SE",r10
!   _temp_99 = _function_64_PhilosphizeAndEat
	set	_function_64_PhilosphizeAndEat,r1
	store	r1,[r14+-44]
!   _temp_100 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-40]
!   Move address of _temp_100 [3 ] into _temp_101
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_99  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0SE",r10
!   _temp_102 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-32]
!   _temp_103 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-28]
!   Move address of _temp_103 [4 ] into _temp_104
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_102  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0SE",r10
!   _temp_105 = _function_64_PhilosphizeAndEat
	set	_function_64_PhilosphizeAndEat,r1
	store	r1,[r14+-20]
!   _temp_106 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-16]
!   Move address of _temp_106 [4 ] into _temp_107
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_105  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0RE",r10
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_65_DiningPhilosophers:
	.word	_sourceFileName
	.word	_Label_108
	.word	0		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_109
	.word	-12
	.word	4
	.word	_Label_110
	.word	-16
	.word	4
	.word	_Label_111
	.word	-20
	.word	4
	.word	_Label_112
	.word	-24
	.word	4
	.word	_Label_113
	.word	-28
	.word	4
	.word	_Label_114
	.word	-32
	.word	4
	.word	_Label_115
	.word	-36
	.word	4
	.word	_Label_116
	.word	-40
	.word	4
	.word	_Label_117
	.word	-44
	.word	4
	.word	_Label_118
	.word	-48
	.word	4
	.word	_Label_119
	.word	-52
	.word	4
	.word	_Label_120
	.word	-56
	.word	4
	.word	_Label_121
	.word	-60
	.word	4
	.word	_Label_122
	.word	-64
	.word	4
	.word	_Label_123
	.word	-68
	.word	4
	.word	_Label_124
	.word	-72
	.word	4
	.word	_Label_125
	.word	-76
	.word	4
	.word	_Label_126
	.word	-80
	.word	4
	.word	_Label_127
	.word	-84
	.word	4
	.word	_Label_128
	.word	-88
	.word	4
	.word	_Label_129
	.word	-92
	.word	4
	.word	_Label_130
	.word	-96
	.word	4
	.word	_Label_131
	.word	-100
	.word	4
	.word	_Label_132
	.word	-104
	.word	4
	.word	_Label_133
	.word	-108
	.word	4
	.word	_Label_134
	.word	-112
	.word	4
	.word	_Label_135
	.word	-116
	.word	4
	.word	_Label_136
	.word	-120
	.word	4
	.word	_Label_137
	.word	-124
	.word	4
	.word	_Label_138
	.word	-128
	.word	4
	.word	_Label_139
	.word	-132
	.word	4
	.word	_Label_140
	.word	-136
	.word	4
	.word	_Label_141
	.word	-140
	.word	4
	.word	_Label_142
	.word	-144
	.word	4
	.word	_Label_143
	.word	-148
	.word	4
	.word	_Label_144
	.word	-152
	.word	4
	.word	_Label_145
	.word	-156
	.word	4
	.word	_Label_146
	.word	-160
	.word	4
	.word	0
_Label_108:
	.ascii	"DiningPhilosophers\0"
	.align
_Label_109:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_110:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_111:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_112:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_113:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_114:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_115:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_116:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_117:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_118:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_119:
	.byte	'?'
	.ascii	"_temp_97\0"
	.align
_Label_120:
	.byte	'?'
	.ascii	"_temp_96\0"
	.align
_Label_121:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_122:
	.byte	'?'
	.ascii	"_temp_94\0"
	.align
_Label_123:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_124:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_90\0"
	.align
_Label_127:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_129:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_131:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
! 
! ===============  FUNCTION PhilosphizeAndEat  ===============
! 
_function_64_PhilosphizeAndEat:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_64_PhilosphizeAndEat,r1
	push	r1
	mov	7,r1
_Label_862:
	push	r0
	sub	r1,1,r1
	bne	_Label_862
	mov	99,r13		! source line 99
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_151 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_152 = 7		(4 bytes)
	mov	7,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_151  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-28]
_Label_147:
!   Perform the FOR-LOOP termination test
!   if i > _temp_152 then goto _Label_150		
	load	[r14+-28],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_150
_Label_148:
	mov	105,r13		! source line 105
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_153 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message PickupForks
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0SE",r10
!   _temp_154 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message PutDownForks
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_149:
!   i = i + 1
	load	[r14+-28],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
	jmp	_Label_147
! END FOR
_Label_150:
! RETURN STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_64_PhilosphizeAndEat:
	.word	_sourceFileName
	.word	_Label_155
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_156
	.word	8
	.word	4
	.word	_Label_157
	.word	-12
	.word	4
	.word	_Label_158
	.word	-16
	.word	4
	.word	_Label_159
	.word	-20
	.word	4
	.word	_Label_160
	.word	-24
	.word	4
	.word	_Label_161
	.word	-28
	.word	4
	.word	0
_Label_155:
	.ascii	"PhilosphizeAndEat\0"
	.align
_Label_156:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_161:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION SleepingBarber  ===============
! 
_function_63_SleepingBarber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_63_SleepingBarber,r1
	push	r1
	mov	10308,r1
_Label_863:
	push	r0
	sub	r1,1,r1
	bne	_Label_863
	mov	239,r13		! source line 239
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	240,r13		! source line 240
	mov	"\0\0AS",r10
!   _temp_162 = &_Global_customers
	set	_Global_customers,r1
	set	-41228,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_164 = &_temp_163
	set	-41224,r1
	add	r14,r1,r1
	store	r1,[r14+-4392]
!   _temp_164 = _temp_164 + 4
	load	[r14+-4392],r1
	add	r1,4,r1
	store	r1,[r14+-4392]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_166 = zeros  (sizeInBytes=4092)
	add	r14,-4384,r4
	mov	1023,r3
_Label_864:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_864
!   _temp_166 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4384]
	mov	9,r1
	store	r1,[r14+-4388]
_Label_168:
!   Data Move: *_temp_164 = _temp_166  (sizeInBytes=4092)
	add	r14,-4384,r5
	load	[r14+-4392],r4
	mov	1023,r3
_Label_865:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_865
!   _temp_164 = _temp_164 + 4092
	load	[r14+-4392],r1
	add	r1,4092,r1
	store	r1,[r14+-4392]
!   _temp_165 = _temp_165 + -1
	load	[r14+-4388],r1
	add	r1,-1,r1
	store	r1,[r14+-4388]
!   if intNotZero (_temp_165) then goto _Label_168
	load	[r14+-4388],r1
	cmp	r1,r0
	bne	_Label_168
!   Initialize the array size...
	mov	9,r1
	set	-41224,r2
	store	r1,[r14+r2]
!   _temp_169 = &_temp_163
	set	-41224,r1
	add	r14,r1,r1
	store	r1,[r14+-288]
!   make sure array has size 9
	set	-41228,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	9, r2
	cmp	r1,0
	be	_Label_866
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_866:
!   make sure array has size 9
	load	[r14+-288],r1
	load	[r1],r1
	set	9, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_162 = *_temp_169  (sizeInBytes=36832)
	load	[r14+-288],r5
	set	-41228,r4
	load	[r14+r4],r4
	mov	9208,r3
_Label_867:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_867
! ASSIGNMENT STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_waitingCustomers = zeros  (sizeInBytes=20)
	set	_Global_waitingCustomers,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_waitingCustomers = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_waitingCustomers,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0SE",r10
!   _temp_171 = &_Global_waitingCustomers
	set	_Global_waitingCustomers,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_barberSemephore = zeros  (sizeInBytes=20)
	set	_Global_barberSemephore,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_barberSemephore = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_barberSemephore,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0SE",r10
!   _temp_173 = &_Global_barberSemephore
	set	_Global_barberSemephore,r1
	store	r1,[r14+-272]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_barberDone = zeros  (sizeInBytes=20)
	set	_Global_barberDone,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_barberDone = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_barberDone,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0SE",r10
!   _temp_175 = &_Global_barberDone
	set	_Global_barberDone,r1
	store	r1,[r14+-264]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-264],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_customerDone = zeros  (sizeInBytes=20)
	set	_Global_customerDone,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_customerDone = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_customerDone,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0SE",r10
!   _temp_177 = &_Global_customerDone
	set	_Global_customerDone,r1
	store	r1,[r14+-256]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-256],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_accessLock = zeros  (sizeInBytes=20)
	set	_Global_accessLock,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_accessLock = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	set	_Global_accessLock,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
!   _temp_179 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-248]
!   Send message Init
	load	[r14+-248],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
!   _Global_occupiedChairs = 0		(4 bytes)
	mov	0,r1
	set	_Global_occupiedChairs,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	255,r13		! source line 255
	mov	"\0\0CA",r10
	call	_function_58_printHeader
! ASSIGNMENT STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_barbers = zeros  (sizeInBytes=4092)
	set	_Global_barbers,r4
	mov	1023,r3
_Label_868:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_868
!   _Global_barbers = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_Global_barbers,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0SE",r10
!   _temp_181 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-240]
!   _temp_182 = &_Global_barbers
	set	_Global_barbers,r1
	store	r1,[r14+-236]
!   Prepare Argument: offset=12  value=_temp_181  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-236],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0SE",r10
!   _temp_183 = _function_62_barber
	set	_function_62_barber,r1
	store	r1,[r14+-232]
!   _temp_184 = &_Global_barbers
	set	_Global_barbers,r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=12  value=_temp_183  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0SE",r10
!   _temp_185 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-224]
!   _temp_186 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-220]
!   Move address of _temp_186 [0 ] into _temp_187
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-220],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-216]
!   Prepare Argument: offset=12  value=_temp_185  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-216],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0SE",r10
!   _temp_188 = _function_61_customer
	set	_function_61_customer,r1
	store	r1,[r14+-212]
!   _temp_189 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-208]
!   Move address of _temp_189 [0 ] into _temp_190
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-208],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-204]
!   Prepare Argument: offset=12  value=_temp_188  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0SE",r10
!   _temp_191 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-200]
!   _temp_192 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-196]
!   Move address of _temp_192 [1 ] into _temp_193
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-196],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   Prepare Argument: offset=12  value=_temp_191  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0SE",r10
!   _temp_194 = _function_61_customer
	set	_function_61_customer,r1
	store	r1,[r14+-188]
!   _temp_195 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-184]
!   Move address of _temp_195 [1 ] into _temp_196
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Prepare Argument: offset=12  value=_temp_194  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0SE",r10
!   _temp_197 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-176]
!   _temp_198 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-172]
!   Move address of _temp_198 [2 ] into _temp_199
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-172],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_197  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0SE",r10
!   _temp_200 = _function_61_customer
	set	_function_61_customer,r1
	store	r1,[r14+-164]
!   _temp_201 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-160]
!   Move address of _temp_201 [2 ] into _temp_202
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_200  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0SE",r10
!   _temp_203 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-152]
!   _temp_204 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-148]
!   Move address of _temp_204 [3 ] into _temp_205
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_203  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_206 = _function_61_customer
	set	_function_61_customer,r1
	store	r1,[r14+-140]
!   _temp_207 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-136]
!   Move address of _temp_207 [3 ] into _temp_208
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_206  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   _temp_209 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-128]
!   _temp_210 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-124]
!   Move address of _temp_210 [4 ] into _temp_211
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_209  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_212 = _function_61_customer
	set	_function_61_customer,r1
	store	r1,[r14+-116]
!   _temp_213 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-112]
!   Move address of _temp_213 [4 ] into _temp_214
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_212  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0SE",r10
!   _temp_215 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-104]
!   _temp_216 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-100]
!   Move address of _temp_216 [5 ] into _temp_217
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_215  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0SE",r10
!   _temp_218 = _function_61_customer
	set	_function_61_customer,r1
	store	r1,[r14+-92]
!   _temp_219 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-88]
!   Move address of _temp_219 [5 ] into _temp_220
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_218  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0SE",r10
!   _temp_221 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-80]
!   _temp_222 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-76]
!   Move address of _temp_222 [6 ] into _temp_223
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_221  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0SE",r10
!   _temp_224 = _function_61_customer
	set	_function_61_customer,r1
	store	r1,[r14+-68]
!   _temp_225 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-64]
!   Move address of _temp_225 [6 ] into _temp_226
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_224  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0SE",r10
!   _temp_227 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-56]
!   _temp_228 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-52]
!   Move address of _temp_228 [7 ] into _temp_229
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_227  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0SE",r10
!   _temp_230 = _function_61_customer
	set	_function_61_customer,r1
	store	r1,[r14+-44]
!   _temp_231 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-40]
!   Move address of _temp_231 [7 ] into _temp_232
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_230  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0SE",r10
!   _temp_233 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-32]
!   _temp_234 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-28]
!   Move address of _temp_234 [8 ] into _temp_235
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_233  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0SE",r10
!   _temp_236 = _function_61_customer
	set	_function_61_customer,r1
	store	r1,[r14+-20]
!   _temp_237 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-16]
!   Move address of _temp_237 [8 ] into _temp_238
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_236  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0RE",r10
	set	41236,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_63_SleepingBarber:
	.word	_sourceFileName
	.word	_Label_239
	.word	0		! total size of parameters
	.word	41232		! frame size = 41232
	.word	_Label_240
	.word	-12
	.word	4
	.word	_Label_241
	.word	-16
	.word	4
	.word	_Label_242
	.word	-20
	.word	4
	.word	_Label_243
	.word	-24
	.word	4
	.word	_Label_244
	.word	-28
	.word	4
	.word	_Label_245
	.word	-32
	.word	4
	.word	_Label_246
	.word	-36
	.word	4
	.word	_Label_247
	.word	-40
	.word	4
	.word	_Label_248
	.word	-44
	.word	4
	.word	_Label_249
	.word	-48
	.word	4
	.word	_Label_250
	.word	-52
	.word	4
	.word	_Label_251
	.word	-56
	.word	4
	.word	_Label_252
	.word	-60
	.word	4
	.word	_Label_253
	.word	-64
	.word	4
	.word	_Label_254
	.word	-68
	.word	4
	.word	_Label_255
	.word	-72
	.word	4
	.word	_Label_256
	.word	-76
	.word	4
	.word	_Label_257
	.word	-80
	.word	4
	.word	_Label_258
	.word	-84
	.word	4
	.word	_Label_259
	.word	-88
	.word	4
	.word	_Label_260
	.word	-92
	.word	4
	.word	_Label_261
	.word	-96
	.word	4
	.word	_Label_262
	.word	-100
	.word	4
	.word	_Label_263
	.word	-104
	.word	4
	.word	_Label_264
	.word	-108
	.word	4
	.word	_Label_265
	.word	-112
	.word	4
	.word	_Label_266
	.word	-116
	.word	4
	.word	_Label_267
	.word	-120
	.word	4
	.word	_Label_268
	.word	-124
	.word	4
	.word	_Label_269
	.word	-128
	.word	4
	.word	_Label_270
	.word	-132
	.word	4
	.word	_Label_271
	.word	-136
	.word	4
	.word	_Label_272
	.word	-140
	.word	4
	.word	_Label_273
	.word	-144
	.word	4
	.word	_Label_274
	.word	-148
	.word	4
	.word	_Label_275
	.word	-152
	.word	4
	.word	_Label_276
	.word	-156
	.word	4
	.word	_Label_277
	.word	-160
	.word	4
	.word	_Label_278
	.word	-164
	.word	4
	.word	_Label_279
	.word	-168
	.word	4
	.word	_Label_280
	.word	-172
	.word	4
	.word	_Label_281
	.word	-176
	.word	4
	.word	_Label_282
	.word	-180
	.word	4
	.word	_Label_283
	.word	-184
	.word	4
	.word	_Label_284
	.word	-188
	.word	4
	.word	_Label_285
	.word	-192
	.word	4
	.word	_Label_286
	.word	-196
	.word	4
	.word	_Label_287
	.word	-200
	.word	4
	.word	_Label_288
	.word	-204
	.word	4
	.word	_Label_289
	.word	-208
	.word	4
	.word	_Label_290
	.word	-212
	.word	4
	.word	_Label_291
	.word	-216
	.word	4
	.word	_Label_292
	.word	-220
	.word	4
	.word	_Label_293
	.word	-224
	.word	4
	.word	_Label_294
	.word	-228
	.word	4
	.word	_Label_295
	.word	-232
	.word	4
	.word	_Label_296
	.word	-236
	.word	4
	.word	_Label_297
	.word	-240
	.word	4
	.word	_Label_298
	.word	-244
	.word	4
	.word	_Label_299
	.word	-248
	.word	4
	.word	_Label_300
	.word	-252
	.word	4
	.word	_Label_301
	.word	-256
	.word	4
	.word	_Label_302
	.word	-260
	.word	4
	.word	_Label_303
	.word	-264
	.word	4
	.word	_Label_304
	.word	-268
	.word	4
	.word	_Label_305
	.word	-272
	.word	4
	.word	_Label_306
	.word	-276
	.word	4
	.word	_Label_307
	.word	-280
	.word	4
	.word	_Label_308
	.word	-284
	.word	4
	.word	_Label_309
	.word	-288
	.word	4
	.word	_Label_310
	.word	-292
	.word	4
	.word	_Label_311
	.word	-4384
	.word	4092
	.word	_Label_312
	.word	-4388
	.word	4
	.word	_Label_313
	.word	-4392
	.word	4
	.word	_Label_314
	.word	-41224
	.word	36832
	.word	_Label_315
	.word	-41228
	.word	4
	.word	0
_Label_239:
	.ascii	"SleepingBarber\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_177\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_176\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_175\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_166\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_163\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
! 
! ===============  FUNCTION barber  ===============
! 
_function_62_barber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_62_barber,r1
	push	r1
	mov	9,r1
_Label_869:
	push	r0
	sub	r1,1,r1
	bne	_Label_869
	mov	282,r13		! source line 282
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	283,r13		! source line 283
	mov	"\0\0WH",r10
_Label_316:
!	jmp	_Label_317
_Label_317:
	mov	283,r13		! source line 283
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0SE",r10
!   _temp_319 = &_Global_waitingCustomers
	set	_Global_waitingCustomers,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	285,r13		! source line 285
	mov	"\0\0SE",r10
!   _temp_320 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	286,r13		! source line 286
	mov	"\0\0AS",r10
!   _Global_occupiedChairs = _Global_occupiedChairs - 1		(int)
	set	_Global_occupiedChairs,r1
	load	[r1],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_occupiedChairs,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	287,r13		! source line 287
	mov	"\0\0SE",r10
!   _temp_321 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! CALL STATEMENT...
!   _temp_322 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	288,r13		! source line 288
	mov	"\0\0CA",r10
	call	_function_57_printBarber
! SEND STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0SE",r10
!   _temp_323 = &_Global_barberSemephore
	set	_Global_barberSemephore,r1
	store	r1,[r14+-24]
!   Send message Up
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	290,r13		! source line 290
	mov	"\0\0CA",r10
	call	_function_60_cutHair
! SEND STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0SE",r10
!   _temp_324 = &_Global_customerDone
	set	_Global_customerDone,r1
	store	r1,[r14+-20]
!   Send message Down
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_325 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	292,r13		! source line 292
	mov	"\0\0CA",r10
	call	_function_57_printBarber
! SEND STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0SE",r10
!   _temp_326 = &_Global_barberDone
	set	_Global_barberDone,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END WHILE...
	jmp	_Label_316
_Label_318:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_62_barber:
	.word	_sourceFileName
	.word	_Label_327
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_328
	.word	8
	.word	4
	.word	_Label_329
	.word	-12
	.word	4
	.word	_Label_330
	.word	-16
	.word	4
	.word	_Label_331
	.word	-20
	.word	4
	.word	_Label_332
	.word	-24
	.word	4
	.word	_Label_333
	.word	-28
	.word	4
	.word	_Label_334
	.word	-32
	.word	4
	.word	_Label_335
	.word	-36
	.word	4
	.word	_Label_336
	.word	-40
	.word	4
	.word	0
_Label_327:
	.ascii	"barber\0"
	.align
_Label_328:
	.byte	'I'
	.ascii	"dumpy\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
! 
! ===============  FUNCTION customer  ===============
! 
_function_61_customer:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_61_customer,r1
	push	r1
	mov	23,r1
_Label_870:
	push	r0
	sub	r1,1,r1
	bne	_Label_870
	mov	297,r13		! source line 297
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0AS",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_340 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-76]
!   Data Move: _temp_339 = *_temp_340  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_339) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_339 [0 ] into _temp_341
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Data Move: _temp_338 = *_temp_341  (sizeInBytes=1)
	load	[r14+-72],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   _temp_337 = charToInt (_temp_338)
	loadb	[r14+-9],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-84]
!   threadNum = _temp_337 - 48		(int)
	load	[r14+-84],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! FOR STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_346 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_347 = numCuts		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_346  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-92]
_Label_342:
!   Perform the FOR-LOOP termination test
!   if i > _temp_347 then goto _Label_345		
	load	[r14+-92],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_345
_Label_343:
	mov	302,r13		! source line 302
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0SE",r10
!   _temp_348 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_349 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=threadNum  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_349  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Call the function
	mov	304,r13		! source line 304
	mov	"\0\0CA",r10
	call	_function_56_printCustomers
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if _Global_occupiedChairs >= 5 then goto _Label_351		(int)
	set	_Global_occupiedChairs,r1
	load	[r1],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_351
!	jmp	_Label_350
_Label_350:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   _Global_occupiedChairs = _Global_occupiedChairs + 1		(int)
	set	_Global_occupiedChairs,r1
	load	[r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_occupiedChairs,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_352 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=threadNum  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_352  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Call the function
	mov	307,r13		! source line 307
	mov	"\0\0CA",r10
	call	_function_56_printCustomers
! SEND STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0SE",r10
!   _temp_353 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-48]
!   Send message Unlock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0SE",r10
!   _temp_354 = &_Global_waitingCustomers
	set	_Global_waitingCustomers,r1
	store	r1,[r14+-44]
!   Send message Up
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_355 = &_Global_barberSemephore
	set	_Global_barberSemephore,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_356 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=threadNum  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_356  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Call the function
	mov	311,r13		! source line 311
	mov	"\0\0CA",r10
	call	_function_56_printCustomers
! CALL STATEMENT...
!   Call the function
	mov	312,r13		! source line 312
	mov	"\0\0CA",r10
	call	_function_59_getHaircut
! CALL STATEMENT...
!   _temp_357 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=threadNum  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_357  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_function_56_printCustomers
! SEND STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0SE",r10
!   _temp_358 = &_Global_customerDone
	set	_Global_customerDone,r1
	store	r1,[r14+-28]
!   Send message Up
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0SE",r10
!   _temp_359 = &_Global_barberDone
	set	_Global_barberDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_360
_Label_351:
! ELSE...
	mov	317,r13		! source line 317
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0SE",r10
!   _temp_361 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-20]
!   Send message Unlock
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_360:
! CALL STATEMENT...
!   _temp_362 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=threadNum  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_362  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Call the function
	mov	319,r13		! source line 319
	mov	"\0\0CA",r10
	call	_function_56_printCustomers
!   Increment the FOR-LOOP index variable and jump back
_Label_344:
!   i = i + 1
	load	[r14+-92],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
	jmp	_Label_342
! END FOR
_Label_345:
! RETURN STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_61_customer:
	.word	_sourceFileName
	.word	_Label_363
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_364
	.word	8
	.word	4
	.word	_Label_365
	.word	-16
	.word	4
	.word	_Label_366
	.word	-20
	.word	4
	.word	_Label_367
	.word	-24
	.word	4
	.word	_Label_368
	.word	-28
	.word	4
	.word	_Label_369
	.word	-32
	.word	4
	.word	_Label_370
	.word	-36
	.word	4
	.word	_Label_371
	.word	-40
	.word	4
	.word	_Label_372
	.word	-44
	.word	4
	.word	_Label_373
	.word	-48
	.word	4
	.word	_Label_374
	.word	-52
	.word	4
	.word	_Label_375
	.word	-56
	.word	4
	.word	_Label_376
	.word	-60
	.word	4
	.word	_Label_377
	.word	-64
	.word	4
	.word	_Label_378
	.word	-68
	.word	4
	.word	_Label_379
	.word	-72
	.word	4
	.word	_Label_380
	.word	-76
	.word	4
	.word	_Label_381
	.word	-80
	.word	4
	.word	_Label_382
	.word	-9
	.word	1
	.word	_Label_383
	.word	-84
	.word	4
	.word	_Label_384
	.word	-88
	.word	4
	.word	_Label_385
	.word	-92
	.word	4
	.word	0
_Label_363:
	.ascii	"customer\0"
	.align
_Label_364:
	.byte	'I'
	.ascii	"numCuts\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_382:
	.byte	'C'
	.ascii	"_temp_338\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_384:
	.byte	'I'
	.ascii	"threadNum\0"
	.align
_Label_385:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION cutHair  ===============
! 
_function_60_cutHair:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_60_cutHair,r1
	push	r1
	mov	1,r1
_Label_871:
	push	r0
	sub	r1,1,r1
	bne	_Label_871
	mov	323,r13		! source line 323
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_60_cutHair:
	.word	_sourceFileName
	.word	_Label_386
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_386:
	.ascii	"cutHair\0"
	.align
! 
! ===============  FUNCTION getHaircut  ===============
! 
_function_59_getHaircut:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_59_getHaircut,r1
	push	r1
	mov	1,r1
_Label_872:
	push	r0
	sub	r1,1,r1
	bne	_Label_872
	mov	327,r13		! source line 327
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_59_getHaircut:
	.word	_sourceFileName
	.word	_Label_387
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_387:
	.ascii	"getHaircut\0"
	.align
! 
! ===============  FUNCTION printHeader  ===============
! 
_function_58_printHeader:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_58_printHeader,r1
	push	r1
	mov	9,r1
_Label_873:
	push	r0
	sub	r1,1,r1
	bne	_Label_873
	mov	331,r13		! source line 331
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_392 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_393 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_392  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-40]
_Label_388:
!   Perform the FOR-LOOP termination test
!   if i > _temp_393 then goto _Label_391		
	load	[r14+-40],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_391
_Label_389:
	mov	334,r13		! source line 334
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_394 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	335,r13		! source line 335
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_390:
!   i = i + 1
	load	[r14+-40],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
	jmp	_Label_388
! END FOR
_Label_391:
! CALL STATEMENT...
!   _temp_395 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	337,r13		! source line 337
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	338,r13		! source line 338
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_400 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_401 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_400  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-40]
_Label_396:
!   Perform the FOR-LOOP termination test
!   if i > _temp_401 then goto _Label_399		
	load	[r14+-40],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_399
_Label_397:
	mov	338,r13		! source line 338
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	339,r13		! source line 339
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_402 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	340,r13		! source line 340
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_398:
!   i = i + 1
	load	[r14+-40],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
	jmp	_Label_396
! END FOR
_Label_399:
! CALL STATEMENT...
!   Call the function
	mov	342,r13		! source line 342
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_58_printHeader:
	.word	_sourceFileName
	.word	_Label_403
	.word	0		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_404
	.word	-12
	.word	4
	.word	_Label_405
	.word	-16
	.word	4
	.word	_Label_406
	.word	-20
	.word	4
	.word	_Label_407
	.word	-24
	.word	4
	.word	_Label_408
	.word	-28
	.word	4
	.word	_Label_409
	.word	-32
	.word	4
	.word	_Label_410
	.word	-36
	.word	4
	.word	_Label_411
	.word	-40
	.word	4
	.word	0
_Label_403:
	.ascii	"printHeader\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_411:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION printBarber  ===============
! 
_function_57_printBarber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_57_printBarber,r1
	push	r1
	mov	7,r1
_Label_874:
	push	r0
	sub	r1,1,r1
	bne	_Label_874
	mov	345,r13		! source line 345
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	350,r13		! source line 350
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! FOR STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_416 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_417 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_416  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-28]
_Label_412:
!   Perform the FOR-LOOP termination test
!   if i > _temp_417 then goto _Label_415		
	load	[r14+-28],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_415
_Label_413:
	mov	351,r13		! source line 351
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0IF",r10
!   if i > _Global_occupiedChairs then goto _Label_419		(int)
	load	[r14+-28],r1
	set	_Global_occupiedChairs,r2
	load	[r2],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_419
!	jmp	_Label_418
_Label_418:
! THEN...
	mov	353,r13		! source line 353
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_420 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	353,r13		! source line 353
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_421
_Label_419:
! ELSE...
	mov	355,r13		! source line 355
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_422 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_422  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	355,r13		! source line 355
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_421:
!   Increment the FOR-LOOP index variable and jump back
_Label_414:
!   i = i + 1
	load	[r14+-28],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
	jmp	_Label_412
! END FOR
_Label_415:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=state  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	358,r13		! source line 358
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	359,r13		! source line 359
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	360,r13		! source line 360
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	360,r13		! source line 360
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	360,r13		! source line 360
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_57_printBarber:
	.word	_sourceFileName
	.word	_Label_423
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_424
	.word	8
	.word	4
	.word	_Label_425
	.word	-12
	.word	4
	.word	_Label_426
	.word	-16
	.word	4
	.word	_Label_427
	.word	-20
	.word	4
	.word	_Label_428
	.word	-24
	.word	4
	.word	_Label_429
	.word	-28
	.word	4
	.word	_Label_430
	.word	-32
	.word	4
	.word	0
_Label_423:
	.ascii	"printBarber\0"
	.align
_Label_424:
	.byte	'P'
	.ascii	"state\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_429:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_430:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION printCustomers  ===============
! 
_function_56_printCustomers:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_56_printCustomers,r1
	push	r1
	mov	11,r1
_Label_875:
	push	r0
	sub	r1,1,r1
	bne	_Label_875
	mov	363,r13		! source line 363
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	368,r13		! source line 368
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! FOR STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_435 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_436 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_435  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-44]
_Label_431:
!   Perform the FOR-LOOP termination test
!   if i > _temp_436 then goto _Label_434		
	load	[r14+-44],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_434
_Label_432:
	mov	369,r13		! source line 369
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	370,r13		! source line 370
	mov	"\0\0IF",r10
!   if i > _Global_occupiedChairs then goto _Label_438		(int)
	load	[r14+-44],r1
	set	_Global_occupiedChairs,r2
	load	[r2],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_438
!	jmp	_Label_437
_Label_437:
! THEN...
	mov	371,r13		! source line 371
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_439 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_439  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	371,r13		! source line 371
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_440
_Label_438:
! ELSE...
	mov	373,r13		! source line 373
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_441 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	373,r13		! source line 373
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_440:
!   Increment the FOR-LOOP index variable and jump back
_Label_433:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_431
! END FOR
_Label_434:
! CALL STATEMENT...
!   _temp_442 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_442  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	376,r13		! source line 376
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	377,r13		! source line 377
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_447 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_448 = customerNumber		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_447  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-44]
_Label_443:
!   Perform the FOR-LOOP termination test
!   if i > _temp_448 then goto _Label_446		
	load	[r14+-44],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_446
_Label_444:
	mov	377,r13		! source line 377
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_449 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_449  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	378,r13		! source line 378
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_445:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_443
! END FOR
_Label_446:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=state  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	380,r13		! source line 380
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	381,r13		! source line 381
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	382,r13		! source line 382
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! RETURN STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_56_printCustomers:
	.word	_sourceFileName
	.word	_Label_450
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_451
	.word	8
	.word	4
	.word	_Label_452
	.word	12
	.word	4
	.word	_Label_453
	.word	-12
	.word	4
	.word	_Label_454
	.word	-16
	.word	4
	.word	_Label_455
	.word	-20
	.word	4
	.word	_Label_456
	.word	-24
	.word	4
	.word	_Label_457
	.word	-28
	.word	4
	.word	_Label_458
	.word	-32
	.word	4
	.word	_Label_459
	.word	-36
	.word	4
	.word	_Label_460
	.word	-40
	.word	4
	.word	_Label_461
	.word	-44
	.word	4
	.word	_Label_462
	.word	-48
	.word	4
	.word	0
_Label_450:
	.ascii	"printCustomers\0"
	.align
_Label_451:
	.byte	'I'
	.ascii	"customerNumber\0"
	.align
_Label_452:
	.byte	'P'
	.ascii	"state\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_461:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_462:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION GamingParlor  ===============
! 
_function_55_GamingParlor:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_55_GamingParlor,r1
	push	r1
	mov	9266,r1
_Label_876:
	push	r0
	sub	r1,1,r1
	bne	_Label_876
	mov	397,r13		! source line 397
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_gameParlor = zeros  (sizeInBytes=44)
	set	_Global_gameParlor,r4
	mov	11,r3
_Label_877:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_877
!   _Global_gameParlor = _P_Main_GameParlor
	set	_P_Main_GameParlor,r1
	set	_Global_gameParlor,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0SE",r10
!   _temp_464 = &_Global_gameParlor
	set	_Global_gameParlor,r1
	set	-37056,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-37056,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0AS",r10
!   _temp_465 = &_Global_Customers
	set	_Global_Customers,r1
	set	-37052,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_467 = &_temp_466
	set	-37048,r1
	add	r14,r1,r1
	store	r1,[r14+-4308]
!   _temp_467 = _temp_467 + 4
	load	[r14+-4308],r1
	add	r1,4,r1
	store	r1,[r14+-4308]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_469 = zeros  (sizeInBytes=4092)
	add	r14,-4300,r4
	mov	1023,r3
_Label_878:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_878
!   _temp_469 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4300]
	mov	8,r1
	store	r1,[r14+-4304]
_Label_471:
!   Data Move: *_temp_467 = _temp_469  (sizeInBytes=4092)
	add	r14,-4300,r5
	load	[r14+-4308],r4
	mov	1023,r3
_Label_879:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_879
!   _temp_467 = _temp_467 + 4092
	load	[r14+-4308],r1
	add	r1,4092,r1
	store	r1,[r14+-4308]
!   _temp_468 = _temp_468 + -1
	load	[r14+-4304],r1
	add	r1,-1,r1
	store	r1,[r14+-4304]
!   if intNotZero (_temp_468) then goto _Label_471
	load	[r14+-4304],r1
	cmp	r1,r0
	bne	_Label_471
!   Initialize the array size...
	mov	8,r1
	set	-37048,r2
	store	r1,[r14+r2]
!   _temp_472 = &_temp_466
	set	-37048,r1
	add	r14,r1,r1
	store	r1,[r14+-204]
!   make sure array has size 8
	set	-37052,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	8, r2
	cmp	r1,0
	be	_Label_880
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_880:
!   make sure array has size 8
	load	[r14+-204],r1
	load	[r1],r1
	set	8, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_465 = *_temp_472  (sizeInBytes=32740)
	load	[r14+-204],r5
	set	-37052,r4
	load	[r14+r4],r4
	mov	8185,r3
_Label_881:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_881
! SEND STATEMENT...
	mov	402,r13		! source line 402
	mov	"\0\0SE",r10
!   _temp_473 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-200]
!   _temp_474 = &_Global_Customers
	set	_Global_Customers,r1
	store	r1,[r14+-196]
!   Move address of _temp_474 [0 ] into _temp_475
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-196],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   Prepare Argument: offset=12  value=_temp_473  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0SE",r10
!   _temp_476 = _function_54_playGame
	set	_function_54_playGame,r1
	store	r1,[r14+-188]
!   _temp_477 = &_Global_Customers
	set	_Global_Customers,r1
	store	r1,[r14+-184]
!   Move address of _temp_477 [0 ] into _temp_478
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Prepare Argument: offset=12  value=_temp_476  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0SE",r10
!   _temp_479 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-176]
!   _temp_480 = &_Global_Customers
	set	_Global_Customers,r1
	store	r1,[r14+-172]
!   Move address of _temp_480 [1 ] into _temp_481
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-172],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_479  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	405,r13		! source line 405
	mov	"\0\0SE",r10
!   _temp_482 = _function_54_playGame
	set	_function_54_playGame,r1
	store	r1,[r14+-164]
!   _temp_483 = &_Global_Customers
	set	_Global_Customers,r1
	store	r1,[r14+-160]
!   Move address of _temp_483 [1 ] into _temp_484
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_482  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0SE",r10
!   _temp_485 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-152]
!   _temp_486 = &_Global_Customers
	set	_Global_Customers,r1
	store	r1,[r14+-148]
!   Move address of _temp_486 [2 ] into _temp_487
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_485  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0SE",r10
!   _temp_488 = _function_54_playGame
	set	_function_54_playGame,r1
	store	r1,[r14+-140]
!   _temp_489 = &_Global_Customers
	set	_Global_Customers,r1
	store	r1,[r14+-136]
!   Move address of _temp_489 [2 ] into _temp_490
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_488  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0SE",r10
!   _temp_491 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-128]
!   _temp_492 = &_Global_Customers
	set	_Global_Customers,r1
	store	r1,[r14+-124]
!   Move address of _temp_492 [3 ] into _temp_493
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_491  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0SE",r10
!   _temp_494 = _function_54_playGame
	set	_function_54_playGame,r1
	store	r1,[r14+-116]
!   _temp_495 = &_Global_Customers
	set	_Global_Customers,r1
	store	r1,[r14+-112]
!   Move address of _temp_495 [3 ] into _temp_496
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_494  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
!   _temp_497 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-104]
!   _temp_498 = &_Global_Customers
	set	_Global_Customers,r1
	store	r1,[r14+-100]
!   Move address of _temp_498 [4 ] into _temp_499
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_497  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0SE",r10
!   _temp_500 = _function_54_playGame
	set	_function_54_playGame,r1
	store	r1,[r14+-92]
!   _temp_501 = &_Global_Customers
	set	_Global_Customers,r1
	store	r1,[r14+-88]
!   Move address of _temp_501 [4 ] into _temp_502
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_500  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0SE",r10
!   _temp_503 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-80]
!   _temp_504 = &_Global_Customers
	set	_Global_Customers,r1
	store	r1,[r14+-76]
!   Move address of _temp_504 [5 ] into _temp_505
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_503  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_506 = _function_54_playGame
	set	_function_54_playGame,r1
	store	r1,[r14+-68]
!   _temp_507 = &_Global_Customers
	set	_Global_Customers,r1
	store	r1,[r14+-64]
!   Move address of _temp_507 [5 ] into _temp_508
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_506  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
!   _temp_509 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-56]
!   _temp_510 = &_Global_Customers
	set	_Global_Customers,r1
	store	r1,[r14+-52]
!   Move address of _temp_510 [6 ] into _temp_511
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_509  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_512 = _function_54_playGame
	set	_function_54_playGame,r1
	store	r1,[r14+-44]
!   _temp_513 = &_Global_Customers
	set	_Global_Customers,r1
	store	r1,[r14+-40]
!   Move address of _temp_513 [6 ] into _temp_514
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_512  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0SE",r10
!   _temp_515 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-32]
!   _temp_516 = &_Global_Customers
	set	_Global_Customers,r1
	store	r1,[r14+-28]
!   Move address of _temp_516 [7 ] into _temp_517
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_515  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0SE",r10
!   _temp_518 = _function_54_playGame
	set	_function_54_playGame,r1
	store	r1,[r14+-20]
!   _temp_519 = &_Global_Customers
	set	_Global_Customers,r1
	store	r1,[r14+-16]
!   Move address of _temp_519 [7 ] into _temp_520
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_518  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0RE",r10
	set	37068,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_55_GamingParlor:
	.word	_sourceFileName
	.word	_Label_521
	.word	0		! total size of parameters
	.word	37064		! frame size = 37064
	.word	_Label_522
	.word	-12
	.word	4
	.word	_Label_523
	.word	-16
	.word	4
	.word	_Label_524
	.word	-20
	.word	4
	.word	_Label_525
	.word	-24
	.word	4
	.word	_Label_526
	.word	-28
	.word	4
	.word	_Label_527
	.word	-32
	.word	4
	.word	_Label_528
	.word	-36
	.word	4
	.word	_Label_529
	.word	-40
	.word	4
	.word	_Label_530
	.word	-44
	.word	4
	.word	_Label_531
	.word	-48
	.word	4
	.word	_Label_532
	.word	-52
	.word	4
	.word	_Label_533
	.word	-56
	.word	4
	.word	_Label_534
	.word	-60
	.word	4
	.word	_Label_535
	.word	-64
	.word	4
	.word	_Label_536
	.word	-68
	.word	4
	.word	_Label_537
	.word	-72
	.word	4
	.word	_Label_538
	.word	-76
	.word	4
	.word	_Label_539
	.word	-80
	.word	4
	.word	_Label_540
	.word	-84
	.word	4
	.word	_Label_541
	.word	-88
	.word	4
	.word	_Label_542
	.word	-92
	.word	4
	.word	_Label_543
	.word	-96
	.word	4
	.word	_Label_544
	.word	-100
	.word	4
	.word	_Label_545
	.word	-104
	.word	4
	.word	_Label_546
	.word	-108
	.word	4
	.word	_Label_547
	.word	-112
	.word	4
	.word	_Label_548
	.word	-116
	.word	4
	.word	_Label_549
	.word	-120
	.word	4
	.word	_Label_550
	.word	-124
	.word	4
	.word	_Label_551
	.word	-128
	.word	4
	.word	_Label_552
	.word	-132
	.word	4
	.word	_Label_553
	.word	-136
	.word	4
	.word	_Label_554
	.word	-140
	.word	4
	.word	_Label_555
	.word	-144
	.word	4
	.word	_Label_556
	.word	-148
	.word	4
	.word	_Label_557
	.word	-152
	.word	4
	.word	_Label_558
	.word	-156
	.word	4
	.word	_Label_559
	.word	-160
	.word	4
	.word	_Label_560
	.word	-164
	.word	4
	.word	_Label_561
	.word	-168
	.word	4
	.word	_Label_562
	.word	-172
	.word	4
	.word	_Label_563
	.word	-176
	.word	4
	.word	_Label_564
	.word	-180
	.word	4
	.word	_Label_565
	.word	-184
	.word	4
	.word	_Label_566
	.word	-188
	.word	4
	.word	_Label_567
	.word	-192
	.word	4
	.word	_Label_568
	.word	-196
	.word	4
	.word	_Label_569
	.word	-200
	.word	4
	.word	_Label_570
	.word	-204
	.word	4
	.word	_Label_571
	.word	-208
	.word	4
	.word	_Label_572
	.word	-4300
	.word	4092
	.word	_Label_573
	.word	-4304
	.word	4
	.word	_Label_574
	.word	-4308
	.word	4
	.word	_Label_575
	.word	-37048
	.word	32740
	.word	_Label_576
	.word	-37052
	.word	4
	.word	_Label_577
	.word	-37056
	.word	4
	.word	_Label_578
	.word	-37060
	.word	4
	.word	0
_Label_521:
	.ascii	"GamingParlor\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_476\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
! 
! ===============  FUNCTION playGame  ===============
! 
_function_54_playGame:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_54_playGame,r1
	push	r1
	mov	7,r1
_Label_882:
	push	r0
	sub	r1,1,r1
	bne	_Label_882
	mov	420,r13		! source line 420
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	422,r13		! source line 422
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_583 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_584 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_583  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-28]
_Label_579:
!   Perform the FOR-LOOP termination test
!   if i > _temp_584 then goto _Label_582		
	load	[r14+-28],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_582
_Label_580:
	mov	422,r13		! source line 422
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	423,r13		! source line 423
	mov	"\0\0SE",r10
!   _temp_585 = &_Global_gameParlor
	set	_Global_gameParlor,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=game  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message Request
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0SE",r10
!   _temp_586 = &_Global_gameParlor
	set	_Global_gameParlor,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=game  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message Return
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_581:
!   i = i + 1
	load	[r14+-28],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
	jmp	_Label_579
! END FOR
_Label_582:
! RETURN STATEMENT...
	mov	422,r13		! source line 422
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_54_playGame:
	.word	_sourceFileName
	.word	_Label_587
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_588
	.word	8
	.word	4
	.word	_Label_589
	.word	-12
	.word	4
	.word	_Label_590
	.word	-16
	.word	4
	.word	_Label_591
	.word	-20
	.word	4
	.word	_Label_592
	.word	-24
	.word	4
	.word	_Label_593
	.word	-28
	.word	4
	.word	0
_Label_587:
	.ascii	"playGame\0"
	.align
_Label_588:
	.byte	'I'
	.ascii	"game\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_593:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  CLASS GameParlor  ===============
! 
! Dispatch Table:
! 
_P_Main_GameParlor:
	.word	_Label_594
	jmp	_Method_P_Main_GameParlor_1	! 4:	Init
	jmp	_Method_P_Main_GameParlor_2	! 8:	Request
	jmp	_Method_P_Main_GameParlor_3	! 12:	Return
	jmp	_Method_P_Main_GameParlor_4	! 16:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_594:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_595
	.word	_sourceFileName
	.word	429		! line number
	.word	44		! size of instances, in bytes
	.word	_P_Main_GameParlor
	.word	_P_System_Object
	.word	0
_Label_595:
	.ascii	"GameParlor\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_GameParlor_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GameParlor_1,r1
	push	r1
	mov	5,r1
_Label_883:
	push	r0
	sub	r1,1,r1
	bne	_Label_883
	mov	444,r13		! source line 444
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	445,r13		! source line 445
	mov	"\0\0AS",r10
!   numberDiceAvail = 8		(4 bytes)
	mov	8,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: con = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   con = _P_Synch_Condition
	set	_P_Synch_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0SE",r10
!   _temp_597 = &con
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: mutex = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   mutex = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! SEND STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0SE",r10
!   _temp_599 = &mutex
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GameParlor_1:
	.word	_sourceFileName
	.word	_Label_600
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_601
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_602
	.word	-12
	.word	4
	.word	_Label_603
	.word	-16
	.word	4
	.word	_Label_604
	.word	-20
	.word	4
	.word	_Label_605
	.word	-24
	.word	4
	.word	0
_Label_600:
	.ascii	"GameParlor"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_601:
	.ascii	"Pself\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
! 
! ===============  METHOD Request  ===============
! 
_Method_P_Main_GameParlor_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GameParlor_2,r1
	push	r1
	mov	11,r1
_Label_884:
	push	r0
	sub	r1,1,r1
	bne	_Label_884
	mov	452,r13		! source line 452
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0SE",r10
!   _temp_606 = &mutex
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0SE",r10
!   _temp_607 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_608) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_607  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=dice  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Send message Print
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! WHILE STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0WH",r10
_Label_609:
!   if dice <= numberDiceAvail then goto _Label_611		(int)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_611
!	jmp	_Label_610
_Label_610:
	mov	455,r13		! source line 455
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0SE",r10
!   _temp_612 = &mutex
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-28]
!   _temp_613 = &con
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_612  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_609
_Label_611:
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   numberDiceAvail = numberDiceAvail - dice		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+12],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0SE",r10
!   _temp_614 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_615) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_614  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=dice  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0SE",r10
!   _temp_616 = &mutex
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GameParlor_2:
	.word	_sourceFileName
	.word	_Label_617
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_618
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_619
	.word	12
	.word	4
	.word	_Label_620
	.word	-12
	.word	4
	.word	_Label_621
	.word	-16
	.word	4
	.word	_Label_622
	.word	-20
	.word	4
	.word	_Label_623
	.word	-24
	.word	4
	.word	_Label_624
	.word	-28
	.word	4
	.word	_Label_625
	.word	-32
	.word	4
	.word	_Label_626
	.word	-36
	.word	4
	.word	_Label_627
	.word	-40
	.word	4
	.word	0
_Label_617:
	.ascii	"GameParlor"
	.ascii	"::"
	.ascii	"Request\0"
	.align
_Label_618:
	.ascii	"Pself\0"
	.align
_Label_619:
	.byte	'I'
	.ascii	"dice\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
! 
! ===============  METHOD Return  ===============
! 
_Method_P_Main_GameParlor_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GameParlor_3,r1
	push	r1
	mov	9,r1
_Label_885:
	push	r0
	sub	r1,1,r1
	bne	_Label_885
	mov	463,r13		! source line 463
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0SE",r10
!   _temp_628 = &mutex
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   numberDiceAvail = numberDiceAvail + dice		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0SE",r10
!   _temp_629 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_630) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_629  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=dice  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0SE",r10
!   _temp_631 = &mutex
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   _temp_632 = &con
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_631  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0SE",r10
!   _temp_633 = &mutex
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GameParlor_3:
	.word	_sourceFileName
	.word	_Label_634
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_635
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_636
	.word	12
	.word	4
	.word	_Label_637
	.word	-12
	.word	4
	.word	_Label_638
	.word	-16
	.word	4
	.word	_Label_639
	.word	-20
	.word	4
	.word	_Label_640
	.word	-24
	.word	4
	.word	_Label_641
	.word	-28
	.word	4
	.word	_Label_642
	.word	-32
	.word	4
	.word	0
_Label_634:
	.ascii	"GameParlor"
	.ascii	"::"
	.ascii	"Return\0"
	.align
_Label_635:
	.ascii	"Pself\0"
	.align
_Label_636:
	.byte	'I'
	.ascii	"dice\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Main_GameParlor_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GameParlor_4,r1
	push	r1
	mov	6,r1
_Label_886:
	push	r0
	sub	r1,1,r1
	bne	_Label_886
	mov	471,r13		! source line 471
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_644 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_643 = *_temp_644  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_643  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	475,r13		! source line 475
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_645 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_645  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	476,r13		! source line 476
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_646 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_646  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	478,r13		! source line 478
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=count  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	479,r13		! source line 479
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	480,r13		! source line 480
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_647 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_647  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	481,r13		! source line 481
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberDiceAvail  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4],r1
	store	r1,[r15+0]
!   Call the function
	mov	482,r13		! source line 482
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	483,r13		! source line 483
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GameParlor_4:
	.word	_sourceFileName
	.word	_Label_648
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_649
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_650
	.word	12
	.word	4
	.word	_Label_651
	.word	16
	.word	4
	.word	_Label_652
	.word	-12
	.word	4
	.word	_Label_653
	.word	-16
	.word	4
	.word	_Label_654
	.word	-20
	.word	4
	.word	_Label_655
	.word	-24
	.word	4
	.word	_Label_656
	.word	-28
	.word	4
	.word	0
_Label_648:
	.ascii	"GameParlor"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_649:
	.ascii	"Pself\0"
	.align
_Label_650:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_651:
	.byte	'I'
	.ascii	"count\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
! 
! ===============  CLASS ForkMonitor  ===============
! 
! Dispatch Table:
! 
_P_Main_ForkMonitor:
	.word	_Label_657
	jmp	_Method_P_Main_ForkMonitor_1	! 4:	Init
	jmp	_Method_P_Main_ForkMonitor_2	! 8:	PickupForks
	jmp	_Method_P_Main_ForkMonitor_3	! 12:	PutDownForks
	jmp	_Method_P_Main_ForkMonitor_4	! 16:	PrintAllStatus
	.word	0
! 
! Class descriptor:
! 
_Label_657:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_658
	.word	_sourceFileName
	.word	113		! line number
	.word	132		! size of instances, in bytes
	.word	_P_Main_ForkMonitor
	.word	_P_System_Object
	.word	0
_Label_658:
	.ascii	"ForkMonitor\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_ForkMonitor_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_ForkMonitor_1,r1
	push	r1
	mov	48,r1
_Label_887:
	push	r0
	sub	r1,1,r1
	bne	_Label_887
	mov	128,r13		! source line 128
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0AS",r10
!   _temp_659 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   NEW ARRAY Constructor...
!   _temp_661 = &_temp_660
	add	r14,-188,r1
	store	r1,[r14+-164]
!   _temp_661 = _temp_661 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Next value...
	mov	5,r1
	store	r1,[r14+-160]
_Label_663:
!   Data Move: *_temp_661 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-164],r2
	store	r1,[r2]
!   _temp_661 = _temp_661 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   _temp_662 = _temp_662 + -1
	load	[r14+-160],r1
	add	r1,-1,r1
	store	r1,[r14+-160]
!   if intNotZero (_temp_662) then goto _Label_663
	load	[r14+-160],r1
	cmp	r1,r0
	bne	_Label_663
!   Initialize the array size...
	mov	5,r1
	store	r1,[r14+-188]
!   _temp_664 = &_temp_660
	add	r14,-188,r1
	store	r1,[r14+-156]
!   make sure array has size 5
	load	[r14+-192],r1
	load	[r1],r1
	set	5, r2
	cmp	r1,0
	be	_Label_888
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_888:
!   make sure array has size 5
	load	[r14+-156],r1
	load	[r1],r1
	set	5, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_659 = *_temp_664  (sizeInBytes=24)
	load	[r14+-156],r5
	load	[r14+-192],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
	load	[r5+16],r1
	store	r1,[r4+16]
	load	[r5+20],r1
	store	r1,[r4+20]
! ASSIGNMENT STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: monitorLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   monitorLock = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0SE",r10
!   _temp_666 = &monitorLock
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-148]
!   Send message Init
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0AS",r10
!   _temp_667 = &con
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-144]
!   NEW ARRAY Constructor...
!   _temp_669 = &_temp_668
	add	r14,-140,r1
	store	r1,[r14+-56]
!   _temp_669 = _temp_669 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_671 = zeros  (sizeInBytes=16)
	add	r14,-48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   _temp_671 = _P_Synch_Condition
	set	_P_Synch_Condition,r1
	store	r1,[r14+-48]
	mov	5,r1
	store	r1,[r14+-52]
_Label_673:
!   Data Move: *_temp_669 = _temp_671  (sizeInBytes=16)
	add	r14,-48,r5
	load	[r14+-56],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
!   _temp_669 = _temp_669 + 16
	load	[r14+-56],r1
	add	r1,16,r1
	store	r1,[r14+-56]
!   _temp_670 = _temp_670 + -1
	load	[r14+-52],r1
	add	r1,-1,r1
	store	r1,[r14+-52]
!   if intNotZero (_temp_670) then goto _Label_673
	load	[r14+-52],r1
	cmp	r1,r0
	bne	_Label_673
!   Initialize the array size...
	mov	5,r1
	store	r1,[r14+-140]
!   _temp_674 = &_temp_668
	add	r14,-140,r1
	store	r1,[r14+-28]
!   make sure array has size 5
	load	[r14+-144],r1
	load	[r1],r1
	set	5, r2
	cmp	r1,0
	be	_Label_889
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_889:
!   make sure array has size 5
	load	[r14+-28],r1
	load	[r1],r1
	set	5, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_667 = *_temp_674  (sizeInBytes=84)
	load	[r14+-28],r5
	load	[r14+-144],r4
	mov	21,r3
_Label_890:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_890
! FOR STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_679 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_680 = 4		(4 bytes)
	mov	4,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_679  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-196]
_Label_675:
!   Perform the FOR-LOOP termination test
!   if i > _temp_680 then goto _Label_678		
	load	[r14+-196],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_678
_Label_676:
	mov	138,r13		! source line 138
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0SE",r10
!   _temp_681 = &con
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-16]
!   Move address of _temp_681 [i ] into _temp_682
!     make sure index expr is >= 0
	load	[r14+-196],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	16,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_677:
!   i = i + 1
	load	[r14+-196],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
	jmp	_Label_675
! END FOR
_Label_678:
! RETURN STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0RE",r10
	add	r15,196,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_ForkMonitor_1:
	.word	_sourceFileName
	.word	_Label_683
	.word	4		! total size of parameters
	.word	192		! frame size = 192
	.word	_Label_684
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_685
	.word	-12
	.word	4
	.word	_Label_686
	.word	-16
	.word	4
	.word	_Label_687
	.word	-20
	.word	4
	.word	_Label_688
	.word	-24
	.word	4
	.word	_Label_689
	.word	-28
	.word	4
	.word	_Label_690
	.word	-32
	.word	4
	.word	_Label_691
	.word	-48
	.word	16
	.word	_Label_692
	.word	-52
	.word	4
	.word	_Label_693
	.word	-56
	.word	4
	.word	_Label_694
	.word	-140
	.word	84
	.word	_Label_695
	.word	-144
	.word	4
	.word	_Label_696
	.word	-148
	.word	4
	.word	_Label_697
	.word	-152
	.word	4
	.word	_Label_698
	.word	-156
	.word	4
	.word	_Label_699
	.word	-160
	.word	4
	.word	_Label_700
	.word	-164
	.word	4
	.word	_Label_701
	.word	-188
	.word	24
	.word	_Label_702
	.word	-192
	.word	4
	.word	_Label_703
	.word	-196
	.word	4
	.word	0
_Label_683:
	.ascii	"ForkMonitor"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_684:
	.ascii	"Pself\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_703:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD PickupForks  ===============
! 
_Method_P_Main_ForkMonitor_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_ForkMonitor_2,r1
	push	r1
	mov	23,r1
_Label_891:
	push	r0
	sub	r1,1,r1
	bne	_Label_891
	mov	145,r13		! source line 145
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0SE",r10
!   _temp_704 = &monitorLock
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-84]
!   Send message Lock
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0AS",r10
!   _temp_705 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Move address of _temp_705 [p ] into _temp_706
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-76]
!   Data Move: *_temp_706 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	154,r13		! source line 154
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_707) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintAllStatus
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0AS",r10
!   _temp_708 = p + 4		(int)
	load	[r14+12],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   left = _temp_708 rem 5		(int)
	load	[r14+-68],r1
	mov	5,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	156,r13		! source line 156
	mov	"\0\0AS",r10
!   _temp_709 = p + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   right = _temp_709 rem 5		(int)
	load	[r14+-64],r1
	mov	5,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	157,r13		! source line 157
	mov	"\0\0IF",r10
!   _temp_714 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_714 [left ] into _temp_715
!     make sure index expr is >= 0
	load	[r14+-88],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Data Move: _temp_713 = *_temp_715  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if _temp_713 != 2 then goto _Label_712		(int)
	load	[r14+-60],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_712
	jmp	_Label_710
_Label_712:
!   _temp_717 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_717 [right ] into _temp_718
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Data Move: _temp_716 = *_temp_718  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_716 != 2 then goto _Label_711		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_711
!	jmp	_Label_710
_Label_710:
! THEN...
	mov	158,r13		! source line 158
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	158,r13		! source line 158
	mov	"\0\0SE",r10
!   _temp_719 = &monitorLock
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   _temp_720 = &con
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Move address of _temp_720 [p ] into _temp_721
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	16,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_719  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_722
_Label_711:
! ELSE...
	mov	160,r13		! source line 160
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0AS",r10
!   _temp_723 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Move address of _temp_723 [p ] into _temp_724
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: *_temp_724 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_725) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintAllStatus
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_722:
! SEND STATEMENT...
	mov	163,r13		! source line 163
	mov	"\0\0SE",r10
!   _temp_726 = &monitorLock
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	163,r13		! source line 163
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_ForkMonitor_2:
	.word	_sourceFileName
	.word	_Label_727
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_728
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_729
	.word	12
	.word	4
	.word	_Label_730
	.word	-12
	.word	4
	.word	_Label_731
	.word	-16
	.word	4
	.word	_Label_732
	.word	-20
	.word	4
	.word	_Label_733
	.word	-24
	.word	4
	.word	_Label_734
	.word	-28
	.word	4
	.word	_Label_735
	.word	-32
	.word	4
	.word	_Label_736
	.word	-36
	.word	4
	.word	_Label_737
	.word	-40
	.word	4
	.word	_Label_738
	.word	-44
	.word	4
	.word	_Label_739
	.word	-48
	.word	4
	.word	_Label_740
	.word	-52
	.word	4
	.word	_Label_741
	.word	-56
	.word	4
	.word	_Label_742
	.word	-60
	.word	4
	.word	_Label_743
	.word	-64
	.word	4
	.word	_Label_744
	.word	-68
	.word	4
	.word	_Label_745
	.word	-72
	.word	4
	.word	_Label_746
	.word	-76
	.word	4
	.word	_Label_747
	.word	-80
	.word	4
	.word	_Label_748
	.word	-84
	.word	4
	.word	_Label_749
	.word	-88
	.word	4
	.word	_Label_750
	.word	-92
	.word	4
	.word	0
_Label_727:
	.ascii	"ForkMonitor"
	.ascii	"::"
	.ascii	"PickupForks\0"
	.align
_Label_728:
	.ascii	"Pself\0"
	.align
_Label_729:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_749:
	.byte	'I'
	.ascii	"left\0"
	.align
_Label_750:
	.byte	'I'
	.ascii	"right\0"
	.align
! 
! ===============  METHOD PutDownForks  ===============
! 
_Method_P_Main_ForkMonitor_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_ForkMonitor_3,r1
	push	r1
	mov	39,r1
_Label_892:
	push	r0
	sub	r1,1,r1
	bne	_Label_892
	mov	166,r13		! source line 166
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0SE",r10
!   _temp_751 = &monitorLock
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-148]
!   Send message Lock
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0AS",r10
!   _temp_752 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-144]
!   Move address of _temp_752 [p ] into _temp_753
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: *_temp_753 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-140],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_754) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintAllStatus
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0AS",r10
!   _temp_755 = p + 4		(int)
	load	[r14+12],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
!   left = _temp_755 rem 5		(int)
	load	[r14+-132],r1
	mov	5,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
! ASSIGNMENT STATEMENT...
	mov	177,r13		! source line 177
	mov	"\0\0AS",r10
!   _temp_756 = p + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   right = _temp_756 rem 5		(int)
	load	[r14+-128],r1
	mov	5,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	178,r13		! source line 178
	mov	"\0\0IF",r10
!   _temp_761 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-120]
!   Move address of _temp_761 [left ] into _temp_762
!     make sure index expr is >= 0
	load	[r14+-152],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-120],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-116]
!   Data Move: _temp_760 = *_temp_762  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if _temp_760 != 1 then goto _Label_758		(int)
	load	[r14+-124],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_758
!	jmp	_Label_759
_Label_759:
!   _temp_764 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   _temp_766 = left + 4		(int)
	load	[r14+-152],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
!   _temp_765 = _temp_766 rem 5		(int)
	load	[r14+-100],r1
	mov	5,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
!   Move address of _temp_764 [_temp_765 ] into _temp_767
!     make sure index expr is >= 0
	load	[r14+-104],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-108],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Data Move: _temp_763 = *_temp_767  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_763 == 2 then goto _Label_758		(int)
	load	[r14+-112],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_758
!	jmp	_Label_757
_Label_757:
! THEN...
	mov	179,r13		! source line 179
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	179,r13		! source line 179
	mov	"\0\0AS",r10
!   _temp_768 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Move address of _temp_768 [left ] into _temp_769
!     make sure index expr is >= 0
	load	[r14+-152],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   Data Move: *_temp_769 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-88],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_770) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintAllStatus
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0SE",r10
!   _temp_771 = &monitorLock
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-80]
!   _temp_772 = &con
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-76]
!   Move address of _temp_772 [left ] into _temp_773
!     make sure index expr is >= 0
	load	[r14+-152],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	16,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_771  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_758:
! IF STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0IF",r10
!   _temp_778 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Move address of _temp_778 [right ] into _temp_779
!     make sure index expr is >= 0
	load	[r14+-156],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Data Move: _temp_777 = *_temp_779  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_777 != 1 then goto _Label_775		(int)
	load	[r14+-68],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_775
!	jmp	_Label_776
_Label_776:
!   _temp_781 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_783 = right + 1		(int)
	load	[r14+-156],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   _temp_782 = _temp_783 rem 5		(int)
	load	[r14+-44],r1
	mov	5,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Move address of _temp_781 [_temp_782 ] into _temp_784
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Data Move: _temp_780 = *_temp_784  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_780 == 2 then goto _Label_775		(int)
	load	[r14+-56],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_775
!	jmp	_Label_774
_Label_774:
! THEN...
	mov	184,r13		! source line 184
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0AS",r10
!   _temp_785 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_785 [right ] into _temp_786
!     make sure index expr is >= 0
	load	[r14+-156],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: *_temp_786 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	185,r13		! source line 185
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_787) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintAllStatus
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0SE",r10
!   _temp_788 = &monitorLock
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   _temp_789 = &con
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-20]
!   Move address of _temp_789 [right ] into _temp_790
!     make sure index expr is >= 0
	load	[r14+-156],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	16,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_788  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_775:
! SEND STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0SE",r10
!   _temp_791 = &monitorLock
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0RE",r10
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_ForkMonitor_3:
	.word	_sourceFileName
	.word	_Label_792
	.word	8		! total size of parameters
	.word	156		! frame size = 156
	.word	_Label_793
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_794
	.word	12
	.word	4
	.word	_Label_795
	.word	-12
	.word	4
	.word	_Label_796
	.word	-16
	.word	4
	.word	_Label_797
	.word	-20
	.word	4
	.word	_Label_798
	.word	-24
	.word	4
	.word	_Label_799
	.word	-28
	.word	4
	.word	_Label_800
	.word	-32
	.word	4
	.word	_Label_801
	.word	-36
	.word	4
	.word	_Label_802
	.word	-40
	.word	4
	.word	_Label_803
	.word	-44
	.word	4
	.word	_Label_804
	.word	-48
	.word	4
	.word	_Label_805
	.word	-52
	.word	4
	.word	_Label_806
	.word	-56
	.word	4
	.word	_Label_807
	.word	-60
	.word	4
	.word	_Label_808
	.word	-64
	.word	4
	.word	_Label_809
	.word	-68
	.word	4
	.word	_Label_810
	.word	-72
	.word	4
	.word	_Label_811
	.word	-76
	.word	4
	.word	_Label_812
	.word	-80
	.word	4
	.word	_Label_813
	.word	-84
	.word	4
	.word	_Label_814
	.word	-88
	.word	4
	.word	_Label_815
	.word	-92
	.word	4
	.word	_Label_816
	.word	-96
	.word	4
	.word	_Label_817
	.word	-100
	.word	4
	.word	_Label_818
	.word	-104
	.word	4
	.word	_Label_819
	.word	-108
	.word	4
	.word	_Label_820
	.word	-112
	.word	4
	.word	_Label_821
	.word	-116
	.word	4
	.word	_Label_822
	.word	-120
	.word	4
	.word	_Label_823
	.word	-124
	.word	4
	.word	_Label_824
	.word	-128
	.word	4
	.word	_Label_825
	.word	-132
	.word	4
	.word	_Label_826
	.word	-136
	.word	4
	.word	_Label_827
	.word	-140
	.word	4
	.word	_Label_828
	.word	-144
	.word	4
	.word	_Label_829
	.word	-148
	.word	4
	.word	_Label_830
	.word	-152
	.word	4
	.word	_Label_831
	.word	-156
	.word	4
	.word	0
_Label_792:
	.ascii	"ForkMonitor"
	.ascii	"::"
	.ascii	"PutDownForks\0"
	.align
_Label_793:
	.ascii	"Pself\0"
	.align
_Label_794:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_830:
	.byte	'I'
	.ascii	"left\0"
	.align
_Label_831:
	.byte	'I'
	.ascii	"right\0"
	.align
! 
! ===============  METHOD PrintAllStatus  ===============
! 
_Method_P_Main_ForkMonitor_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_ForkMonitor_4,r1
	push	r1
	mov	10,r1
_Label_893:
	push	r0
	sub	r1,1,r1
	bne	_Label_893
	mov	191,r13		! source line 191
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_836 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_837 = 4		(4 bytes)
	mov	4,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: p = _temp_836  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-44]
_Label_832:
!   Perform the FOR-LOOP termination test
!   if p > _temp_837 then goto _Label_835		
	load	[r14+-44],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_835
_Label_833:
	mov	205,r13		! source line 205
	mov	"\0\0FB",r10
! SWITCH STATEMENT (using series of tests)...
	mov	206,r13		! source line 206
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   _temp_844 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_844 [p ] into _temp_845
!     make sure index expr is >= 0
	load	[r14+-44],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: _temp_843 = *_temp_845  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   Branch to the right case label
	load	[r14+-32],r1
	cmp	r1,1
	be	_Label_840
	cmp	r1,2
	be	_Label_841
	cmp	r1,3
	be	_Label_842
	jmp	_Label_838
! CASE 1...
_Label_840:
! CALL STATEMENT...
!   _temp_846 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_846  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	208,r13		! source line 208
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	209,r13		! source line 209
	mov	"\0\0BR",r10
	jmp	_Label_839
! CASE 2...
_Label_841:
! CALL STATEMENT...
!   _temp_847 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_847  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	211,r13		! source line 211
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0BR",r10
	jmp	_Label_839
! CASE 3...
_Label_842:
! CALL STATEMENT...
!   _temp_848 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_848  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0BR",r10
	jmp	_Label_839
! DEFAULT CASE...
_Label_838:
! END SWITCH...
_Label_839:
!   Increment the FOR-LOOP index variable and jump back
_Label_834:
!   p = p + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_832
! END FOR
_Label_835:
! CALL STATEMENT...
!   Call the function
	mov	218,r13		! source line 218
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	218,r13		! source line 218
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_ForkMonitor_4:
	.word	_sourceFileName
	.word	_Label_849
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_850
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_851
	.word	-12
	.word	4
	.word	_Label_852
	.word	-16
	.word	4
	.word	_Label_853
	.word	-20
	.word	4
	.word	_Label_854
	.word	-24
	.word	4
	.word	_Label_855
	.word	-28
	.word	4
	.word	_Label_856
	.word	-32
	.word	4
	.word	_Label_857
	.word	-36
	.word	4
	.word	_Label_858
	.word	-40
	.word	4
	.word	_Label_859
	.word	-44
	.word	4
	.word	0
_Label_849:
	.ascii	"ForkMonitor"
	.ascii	"::"
	.ascii	"PrintAllStatus\0"
	.align
_Label_850:
	.ascii	"Pself\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_859:
	.byte	'I'
	.ascii	"p\0"
	.align

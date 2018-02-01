! Name of package being compiled: Synch
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
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from this package
	.export	_P_Synch_Semaphore
	.export	_Method_P_Synch_Semaphore_1
	.export	_Method_P_Synch_Semaphore_2
	.export	_Method_P_Synch_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Synch_Mutex
	.export	_Method_P_Synch_Mutex_1
	.export	_Method_P_Synch_Mutex_2
	.export	_Method_P_Synch_Mutex_3
	.export	_Method_P_Synch_Mutex_4
! The following class and its methods are from this package
	.export	_P_Synch_Mutex2
	.export	_Method_P_Synch_Mutex2_1
	.export	_Method_P_Synch_Mutex2_2
	.export	_Method_P_Synch_Mutex2_3
	.export	_Method_P_Synch_Mutex2_4
! The following class and its methods are from this package
	.export	_P_Synch_Condition
	.export	_Method_P_Synch_Condition_1
	.export	_Method_P_Synch_Condition_2
	.export	_Method_P_Synch_Condition_3
	.export	_Method_P_Synch_Condition_4
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
	.align
! String constants
_StringConst_8:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_7:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_6:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_5:
	.word	65			! length
	.ascii	"A thread that does not hold the lock try to unlock the mutex lock"
	.align
_StringConst_4:
	.word	65			! length
	.ascii	"The thread that holds the lock already try to lock the mutex lock"
	.align
_StringConst_3:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_2:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_1:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Synch.c\0"
_packageName:
	.ascii	"Synch\0"
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
_CheckVersion_P_Synch_:
	.export	_CheckVersion_P_Synch_
	set	0x8e356f6d,r4		! myHashVal = -1909100691
	cmp	r3,r4
	be	_Label_9
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
_Label_9:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_10
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_10
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_10
_Label_10:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Synch_Semaphore:
	.word	_Label_11
	jmp	_Method_P_Synch_Semaphore_1	! 4:	Init
	jmp	_Method_P_Synch_Semaphore_3	! 8:	Down
	jmp	_Method_P_Synch_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_11:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_12
	.word	_sourceFileName
	.word	5		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Synch_Semaphore
	.word	_P_System_Object
	.word	0
_Label_12:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_183:
	push	r0
	sub	r1,1,r1
	bne	_Label_183
	mov	33,r13		! source line 33
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_14		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_14
!	jmp	_Label_13
_Label_13:
! THEN...
	mov	35,r13		! source line 35
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_15 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_15  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	35,r13		! source line 35
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_14:
! ASSIGNMENT STATEMENT...
	mov	37,r13		! source line 37
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_17
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_18
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_19
	.word	12
	.word	4
	.word	_Label_20
	.word	-12
	.word	4
	.word	_Label_21
	.word	-16
	.word	4
	.word	0
_Label_17:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_18:
	.ascii	"Pself\0"
	.align
_Label_19:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_20:
	.byte	'?'
	.ascii	"_temp_16\0"
	.align
_Label_21:
	.byte	'?'
	.ascii	"_temp_15\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Synch_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_184:
	push	r0
	sub	r1,1,r1
	bne	_Label_184
	mov	43,r13		! source line 43
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_23		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_23
!	jmp	_Label_22
_Label_22:
! THEN...
	mov	49,r13		! source line 49
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_24 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_24  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_23:
! ASSIGNMENT STATEMENT...
	mov	51,r13		! source line 51
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_26		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_26
!	jmp	_Label_25
_Label_25:
! THEN...
	mov	53,r13		! source line 53
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0AS",r10
	mov	53,r13		! source line 53
	mov	"\0\0SE",r10
!   _temp_27 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_28 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_28 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_29 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_26:
! ASSIGNMENT STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	57,r13		! source line 57
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_30
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_31
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_32
	.word	-12
	.word	4
	.word	_Label_33
	.word	-16
	.word	4
	.word	_Label_34
	.word	-20
	.word	4
	.word	_Label_35
	.word	-24
	.word	4
	.word	_Label_36
	.word	-28
	.word	4
	.word	_Label_37
	.word	-32
	.word	4
	.word	0
_Label_30:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_31:
	.ascii	"Pself\0"
	.align
_Label_32:
	.byte	'?'
	.ascii	"_temp_29\0"
	.align
_Label_33:
	.byte	'?'
	.ascii	"_temp_28\0"
	.align
_Label_34:
	.byte	'?'
	.ascii	"_temp_27\0"
	.align
_Label_35:
	.byte	'?'
	.ascii	"_temp_24\0"
	.align
_Label_36:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_37:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Synch_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_185:
	push	r0
	sub	r1,1,r1
	bne	_Label_185
	mov	62,r13		! source line 62
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	65,r13		! source line 65
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_39		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_39
!	jmp	_Label_38
_Label_38:
! THEN...
	mov	67,r13		! source line 67
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_40 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_40  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	67,r13		! source line 67
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_39:
! ASSIGNMENT STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_42		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_42
!	jmp	_Label_41
_Label_41:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0SE",r10
!   _temp_43 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_42:
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_44
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_45
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_46
	.word	-12
	.word	4
	.word	_Label_47
	.word	-16
	.word	4
	.word	_Label_48
	.word	-20
	.word	4
	.word	0
_Label_44:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_45:
	.ascii	"Pself\0"
	.align
_Label_46:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_47:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_48:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Synch_Mutex:
	.word	_Label_49
	jmp	_Method_P_Synch_Mutex_1	! 4:	Init
	jmp	_Method_P_Synch_Mutex_2	! 8:	Lock
	jmp	_Method_P_Synch_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Synch_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_49:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_50
	.word	_sourceFileName
	.word	16		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Synch_Mutex
	.word	_P_System_Object
	.word	0
_Label_50:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_186:
	push	r0
	sub	r1,1,r1
	bne	_Label_186
	mov	97,r13		! source line 97
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	98,r13		! source line 98
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_1:
	.word	_sourceFileName
	.word	_Label_52
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_53
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_54
	.word	-12
	.word	4
	.word	0
_Label_52:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_53:
	.ascii	"Pself\0"
	.align
_Label_54:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Synch_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_187:
	push	r0
	sub	r1,1,r1
	bne	_Label_187
	mov	104,r13		! source line 104
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0IF",r10
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_57) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_55 else goto _Label_56
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_56
	jmp	_Label_55
_Label_55:
! THEN...
	mov	109,r13		! source line 109
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_58 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_58  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	109,r13		! source line 109
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_56:
! IF STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0IF",r10
!   if intIsZero (heldBy) then goto _Label_59
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_Label_59
	jmp	_Label_60
_Label_59:
! THEN...
	mov	112,r13		! source line 112
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0AS",r10
!   heldBy = _P_Thread_currentThread		(4 bytes)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_61
_Label_60:
! ELSE...
	mov	114,r13		! source line 114
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0SE",r10
!   _temp_62 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_61:
! ASSIGNMENT STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	117,r13		! source line 117
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_2:
	.word	_sourceFileName
	.word	_Label_63
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_64
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_65
	.word	-12
	.word	4
	.word	_Label_66
	.word	-16
	.word	4
	.word	_Label_67
	.word	-20
	.word	4
	.word	_Label_68
	.word	-24
	.word	4
	.word	0
_Label_63:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_64:
	.ascii	"Pself\0"
	.align
_Label_65:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_66:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_67:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_68:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Synch_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_3,r1
	push	r1
	mov	11,r1
_Label_188:
	push	r0
	sub	r1,1,r1
	bne	_Label_188
	mov	122,r13		! source line 122
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	126,r13		! source line 126
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! IF STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0IF",r10
	mov	127,r13		! source line 127
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_72) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_71  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_71 then goto _Label_70 else goto _Label_69
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_69
	jmp	_Label_70
_Label_69:
! THEN...
	mov	128,r13		! source line 128
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_73 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_73  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_70:
! IF STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0IF",r10
	mov	130,r13		! source line 130
	mov	"\0\0SE",r10
!   _temp_77 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-28]
!   Send message IsEmpty
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_76  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_76 then goto _Label_75 else goto _Label_74
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_74
	jmp	_Label_75
_Label_74:
! THEN...
	mov	131,r13		! source line 131
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0AS",r10
	mov	131,r13		! source line 131
	mov	"\0\0SE",r10
!   _temp_78 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=Threadwaitedlongest  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0AS",r10
!   if intIsZero (Threadwaitedlongest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_79 = Threadwaitedlongest + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_79 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0SE",r10
!   _temp_80 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=Threadwaitedlongest  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0AS",r10
!   heldBy = Threadwaitedlongest		(4 bytes)
	load	[r14+-44],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_81
_Label_75:
! ELSE...
	mov	136,r13		! source line 136
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_81:
! ASSIGNMENT STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	138,r13		! source line 138
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_3:
	.word	_sourceFileName
	.word	_Label_82
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_83
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_84
	.word	-16
	.word	4
	.word	_Label_85
	.word	-20
	.word	4
	.word	_Label_86
	.word	-24
	.word	4
	.word	_Label_87
	.word	-28
	.word	4
	.word	_Label_88
	.word	-9
	.word	1
	.word	_Label_89
	.word	-32
	.word	4
	.word	_Label_90
	.word	-36
	.word	4
	.word	_Label_91
	.word	-10
	.word	1
	.word	_Label_92
	.word	-40
	.word	4
	.word	_Label_93
	.word	-44
	.word	4
	.word	0
_Label_82:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_83:
	.ascii	"Pself\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_88:
	.byte	'C'
	.ascii	"_temp_76\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_91:
	.byte	'C'
	.ascii	"_temp_71\0"
	.align
_Label_92:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_93:
	.byte	'P'
	.ascii	"Threadwaitedlongest\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Synch_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_189:
	push	r0
	sub	r1,1,r1
	bne	_Label_189
	mov	143,r13		! source line 143
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0RE",r10
!   if heldBy != _P_Thread_currentThread then goto _Label_96		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_96
!	jmp	_Label_95
_Label_95:
!   _temp_94 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_97
_Label_96:
!   _temp_94 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_97:
!   ReturnResult: _temp_94  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_4:
	.word	_sourceFileName
	.word	_Label_98
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_99
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_100
	.word	-9
	.word	1
	.word	0
_Label_98:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_99:
	.ascii	"Pself\0"
	.align
_Label_100:
	.byte	'C'
	.ascii	"_temp_94\0"
	.align
! 
! ===============  CLASS Mutex2  ===============
! 
! Dispatch Table:
! 
_P_Synch_Mutex2:
	.word	_Label_101
	jmp	_Method_P_Synch_Mutex2_1	! 4:	Init
	jmp	_Method_P_Synch_Mutex2_2	! 8:	Lock
	jmp	_Method_P_Synch_Mutex2_3	! 12:	Unlock
	jmp	_Method_P_Synch_Mutex2_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_101:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_102
	.word	_sourceFileName
	.word	28		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Synch_Mutex2
	.word	_P_System_Object
	.word	0
_Label_102:
	.ascii	"Mutex2\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Mutex2_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex2_1,r1
	push	r1
	mov	4,r1
_Label_190:
	push	r0
	sub	r1,1,r1
	bne	_Label_190
	mov	154,r13		! source line 154
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: sem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   sem = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	156,r13		! source line 156
	mov	"\0\0SE",r10
!   _temp_104 = &sem
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	156,r13		! source line 156
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex2_1:
	.word	_sourceFileName
	.word	_Label_105
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_106
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_107
	.word	-12
	.word	4
	.word	_Label_108
	.word	-16
	.word	4
	.word	0
_Label_105:
	.ascii	"Mutex2"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_106:
	.ascii	"Pself\0"
	.align
_Label_107:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Synch_Mutex2_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex2_2,r1
	push	r1
	mov	2,r1
_Label_191:
	push	r0
	sub	r1,1,r1
	bne	_Label_191
	mov	159,r13		! source line 159
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0SE",r10
!   _temp_109 = &sem
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0AS",r10
!   heldBy = _P_Thread_currentThread		(4 bytes)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! RETURN STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex2_2:
	.word	_sourceFileName
	.word	_Label_110
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_111
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_112
	.word	-12
	.word	4
	.word	0
_Label_110:
	.ascii	"Mutex2"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_111:
	.ascii	"Pself\0"
	.align
_Label_112:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Synch_Mutex2_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex2_3,r1
	push	r1
	mov	2,r1
_Label_192:
	push	r0
	sub	r1,1,r1
	bne	_Label_192
	mov	164,r13		! source line 164
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0SE",r10
!   _temp_113 = &sem
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex2_3:
	.word	_sourceFileName
	.word	_Label_114
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_115
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_116
	.word	-12
	.word	4
	.word	0
_Label_114:
	.ascii	"Mutex2"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_115:
	.ascii	"Pself\0"
	.align
_Label_116:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Synch_Mutex2_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex2_4,r1
	push	r1
	mov	1,r1
_Label_193:
	push	r0
	sub	r1,1,r1
	bne	_Label_193
	mov	169,r13		! source line 169
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	170,r13		! source line 170
	mov	"\0\0RE",r10
!   if heldBy != _P_Thread_currentThread then goto _Label_119		(int)
	load	[r14+8],r1
	load	[r1+24],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_119
!	jmp	_Label_118
_Label_118:
!   _temp_117 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_120
_Label_119:
!   _temp_117 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_120:
!   ReturnResult: _temp_117  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex2_4:
	.word	_sourceFileName
	.word	_Label_121
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_122
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_123
	.word	-9
	.word	1
	.word	0
_Label_121:
	.ascii	"Mutex2"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_122:
	.ascii	"Pself\0"
	.align
_Label_123:
	.byte	'C'
	.ascii	"_temp_117\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Synch_Condition:
	.word	_Label_124
	jmp	_Method_P_Synch_Condition_1	! 4:	Init
	jmp	_Method_P_Synch_Condition_2	! 8:	Wait
	jmp	_Method_P_Synch_Condition_3	! 12:	Signal
	jmp	_Method_P_Synch_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_124:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_125
	.word	_sourceFileName
	.word	42		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Synch_Condition
	.word	_P_System_Object
	.word	0
_Label_125:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_1,r1
	push	r1
	mov	1,r1
_Label_194:
	push	r0
	sub	r1,1,r1
	bne	_Label_194
	mov	210,r13		! source line 210
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_1:
	.word	_sourceFileName
	.word	_Label_127
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_128
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_129
	.word	-12
	.word	4
	.word	0
_Label_127:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_128:
	.ascii	"Pself\0"
	.align
_Label_129:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Synch_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_2,r1
	push	r1
	mov	6,r1
_Label_195:
	push	r0
	sub	r1,1,r1
	bne	_Label_195
	mov	216,r13		! source line 216
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	219,r13		! source line 219
	mov	"\0\0IF",r10
	mov	219,r13		! source line 219
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_132  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_132 then goto _Label_131 else goto _Label_130
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_130
	jmp	_Label_131
_Label_130:
! THEN...
	mov	220,r13		! source line 220
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_133 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_133  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	220,r13		! source line 220
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_131:
! ASSIGNMENT STATEMENT...
	mov	222,r13		! source line 222
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	222,r13		! source line 222
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	223,r13		! source line 223
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0SE",r10
!   _temp_134 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	227,r13		! source line 227
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	227,r13		! source line 227
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	227,r13		! source line 227
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_2:
	.word	_sourceFileName
	.word	_Label_135
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_136
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_137
	.word	12
	.word	4
	.word	_Label_138
	.word	-16
	.word	4
	.word	_Label_139
	.word	-20
	.word	4
	.word	_Label_140
	.word	-9
	.word	1
	.word	_Label_141
	.word	-24
	.word	4
	.word	0
_Label_135:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_136:
	.ascii	"Pself\0"
	.align
_Label_137:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_140:
	.byte	'C'
	.ascii	"_temp_132\0"
	.align
_Label_141:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Synch_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_3,r1
	push	r1
	mov	9,r1
_Label_196:
	push	r0
	sub	r1,1,r1
	bne	_Label_196
	mov	232,r13		! source line 232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0IF",r10
	mov	236,r13		! source line 236
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_144  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_144 then goto _Label_143 else goto _Label_142
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_142
	jmp	_Label_143
_Label_142:
! THEN...
	mov	237,r13		! source line 237
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_145 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_145  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	237,r13		! source line 237
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_143:
! ASSIGNMENT STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	239,r13		! source line 239
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	240,r13		! source line 240
	mov	"\0\0AS",r10
	mov	240,r13		! source line 240
	mov	"\0\0SE",r10
!   _temp_146 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_148		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_148
!	jmp	_Label_147
_Label_147:
! THEN...
	mov	242,r13		! source line 242
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_149 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_149 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0SE",r10
!   _temp_150 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_148:
! ASSIGNMENT STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_3:
	.word	_sourceFileName
	.word	_Label_151
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_152
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_153
	.word	12
	.word	4
	.word	_Label_154
	.word	-16
	.word	4
	.word	_Label_155
	.word	-20
	.word	4
	.word	_Label_156
	.word	-24
	.word	4
	.word	_Label_157
	.word	-28
	.word	4
	.word	_Label_158
	.word	-9
	.word	1
	.word	_Label_159
	.word	-32
	.word	4
	.word	_Label_160
	.word	-36
	.word	4
	.word	0
_Label_151:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_152:
	.ascii	"Pself\0"
	.align
_Label_153:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_158:
	.byte	'C'
	.ascii	"_temp_144\0"
	.align
_Label_159:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_160:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Synch_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_4,r1
	push	r1
	mov	9,r1
_Label_197:
	push	r0
	sub	r1,1,r1
	bne	_Label_197
	mov	250,r13		! source line 250
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0IF",r10
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_163  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_163 then goto _Label_162 else goto _Label_161
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_161
	jmp	_Label_162
_Label_161:
! THEN...
	mov	255,r13		! source line 255
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_164 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_164  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	255,r13		! source line 255
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_162:
! ASSIGNMENT STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	257,r13		! source line 257
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0WH",r10
_Label_165:
!	jmp	_Label_166
_Label_166:
	mov	258,r13		! source line 258
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0AS",r10
	mov	259,r13		! source line 259
	mov	"\0\0SE",r10
!   _temp_168 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_169
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_169
	jmp	_Label_170
_Label_169:
! THEN...
	mov	261,r13		! source line 261
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0BR",r10
	jmp	_Label_167
! END IF...
_Label_170:
! ASSIGNMENT STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_171 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_171 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0SE",r10
!   _temp_172 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_165
_Label_167:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	266,r13		! source line 266
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_4:
	.word	_sourceFileName
	.word	_Label_173
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_174
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_175
	.word	12
	.word	4
	.word	_Label_176
	.word	-16
	.word	4
	.word	_Label_177
	.word	-20
	.word	4
	.word	_Label_178
	.word	-24
	.word	4
	.word	_Label_179
	.word	-28
	.word	4
	.word	_Label_180
	.word	-9
	.word	1
	.word	_Label_181
	.word	-32
	.word	4
	.word	_Label_182
	.word	-36
	.word	4
	.word	0
_Label_173:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_174:
	.ascii	"Pself\0"
	.align
_Label_175:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_168\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_180:
	.byte	'C'
	.ascii	"_temp_163\0"
	.align
_Label_181:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_182:
	.byte	'P'
	.ascii	"t\0"
	.align

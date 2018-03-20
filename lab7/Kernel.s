! Name of package being compiled: Kernel
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
	.import	_P_System_PrintMemory
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
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.export	_P_Kernel_StartUserProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
	.export	_Method_P_Kernel_ProcessManager_6
	.export	_Method_P_Kernel_ProcessManager_7
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1756
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_184:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_183:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_182:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_181:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_180:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_179:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_178:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_177:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_176:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_175:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_174:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_173:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_172:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_171:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_170:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_169:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_168:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_167:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_166:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_165:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_164:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_163:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_162:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_161:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_160:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_159:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_158:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_157:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_156:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_155:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_154:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_153:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_152:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_151:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_150:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_149:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_148:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_147:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_146:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_145:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_144:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_143:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_142:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_141:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_140:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_139:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_138:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_137:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_136:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_135:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_134:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_133:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_132:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_131:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_130:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_129:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_128:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_125:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_122:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_119:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_118:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_117:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_116:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_115:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_114:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_113:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_112:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_111:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_110:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_109:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_108:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_107:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_106:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_105:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_104:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_103:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_102:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_101:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_100:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_99:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_98:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_97:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_96:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_95:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_94:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_93:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_92:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_91:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_90:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_89:
	.word	22			! length
	.ascii	"    File Descriptors:\n"
	.align
_StringConst_88:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_87:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_86:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_85:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_84:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_83:
	.word	14			! length
	.ascii	"ThreadNameHere"
	.align
_StringConst_82:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_81:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_80:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_79:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_78:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_77:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_76:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_73:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_72:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_71:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_70:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_69:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_68:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_67:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_66:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_65:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_64:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_62:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_61:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_60:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_59:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_58:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_57:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_56:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_55:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_54:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_53:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_52:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_51:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_50:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_49:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_48:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_47:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_46:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_45:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_44:
	.word	20			! length
	.ascii	"Becoming User Thread"
	.align
_StringConst_43:
	.word	12			! length
	.ascii	"TestProgram4"
	.align
_StringConst_42:
	.word	11			! length
	.ascii	"UserProgram"
	.align
_StringConst_41:
	.word	26			! length
	.ascii	"Loading initial program..."
	.align
_StringConst_40:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_39:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_38:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_37:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_36:
	.word	26			! length
	.ascii	"Handle_Sys_Create invoked!"
	.align
_StringConst_35:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_34:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_33:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_32:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_31:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_30:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_29:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_27:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_24:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_23:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
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
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0xe21258ec,r4		! myHashVal = -502114068
	cmp	r3,r4
	be	_Label_193
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
_Label_193:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_194
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_194
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_194
_Label_194:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_3961:
	push	r0
	sub	r1,1,r1
	bne	_Label_3961
	mov	8,r13		! source line 8
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_195 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_195  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	16,r13		! source line 16
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3962:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3962
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0SE",r10
!   _temp_199 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_200 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_199  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   _temp_201 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_202 = _temp_201 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_202 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3963:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3963
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_204 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_205 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_204  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_206 = _function_192_IdleFunction
	set	_function_192_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_207 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_206  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	28,r13		! source line 28
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_208
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_209
	.word	-12
	.word	4
	.word	_Label_210
	.word	-16
	.word	4
	.word	_Label_211
	.word	-20
	.word	4
	.word	_Label_212
	.word	-24
	.word	4
	.word	_Label_213
	.word	-28
	.word	4
	.word	_Label_214
	.word	-32
	.word	4
	.word	_Label_215
	.word	-36
	.word	4
	.word	_Label_216
	.word	-40
	.word	4
	.word	_Label_217
	.word	-44
	.word	4
	.word	_Label_218
	.word	-48
	.word	4
	.word	_Label_219
	.word	-52
	.word	4
	.word	_Label_220
	.word	-56
	.word	4
	.word	_Label_221
	.word	-60
	.word	4
	.word	0
_Label_208:
	.ascii	"InitializeScheduler\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_192_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_192_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3964:
	push	r0
	sub	r1,1,r1
	bne	_Label_3964
	mov	33,r13		! source line 33
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0WH",r10
_Label_222:
!	jmp	_Label_223
_Label_223:
	mov	43,r13		! source line 43
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	44,r13		! source line 44
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	45,r13		! source line 45
	mov	"\0\0IF",r10
	mov	45,r13		! source line 45
	mov	"\0\0SE",r10
!   _temp_227 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_225 else goto _Label_226
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_226
	jmp	_Label_225
_Label_225:
! THEN...
	mov	46,r13		! source line 46
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_228
_Label_226:
! ELSE...
	mov	48,r13		! source line 48
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_228:
! END WHILE...
	jmp	_Label_222
_Label_224:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_192_IdleFunction:
	.word	_sourceFileName
	.word	_Label_229
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_230
	.word	8
	.word	4
	.word	_Label_231
	.word	-12
	.word	4
	.word	_Label_232
	.word	-16
	.word	4
	.word	0
_Label_229:
	.ascii	"IdleFunction\0"
	.align
_Label_230:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_232:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_3965:
	push	r0
	sub	r1,1,r1
	bne	_Label_3965
	mov	55,r13		! source line 55
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_235 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_235 ) then goto _Label_234		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_234
!	jmp	_Label_233
_Label_233:
! THEN...
	mov	72,r13		! source line 72
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_237 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_237 [0 ] into _temp_238
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_236 = _temp_238		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_236  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_234:
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_239 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_239 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	81,r13		! source line 81
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0WH",r10
_Label_240:
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_244 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_243  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_243 then goto _Label_242 else goto _Label_241
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_241
	jmp	_Label_242
_Label_241:
	mov	85,r13		! source line 85
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0AS",r10
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_245 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_246 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_240
_Label_242:
! IF STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_249 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_249 ) then goto _Label_248		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_248
!	jmp	_Label_247
_Label_247:
! THEN...
	mov	91,r13		! source line 91
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_251 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_251 [0 ] into _temp_252
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_250 = _temp_252		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_250  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	91,r13		! source line 91
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_254 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_253 = *_temp_254  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_253) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_255 = _temp_253 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_248:
! RETURN STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_256
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_257
	.word	8
	.word	4
	.word	_Label_258
	.word	-16
	.word	4
	.word	_Label_259
	.word	-20
	.word	4
	.word	_Label_260
	.word	-24
	.word	4
	.word	_Label_261
	.word	-28
	.word	4
	.word	_Label_262
	.word	-32
	.word	4
	.word	_Label_263
	.word	-36
	.word	4
	.word	_Label_264
	.word	-40
	.word	4
	.word	_Label_265
	.word	-44
	.word	4
	.word	_Label_266
	.word	-48
	.word	4
	.word	_Label_267
	.word	-52
	.word	4
	.word	_Label_268
	.word	-9
	.word	1
	.word	_Label_269
	.word	-56
	.word	4
	.word	_Label_270
	.word	-60
	.word	4
	.word	_Label_271
	.word	-64
	.word	4
	.word	_Label_272
	.word	-68
	.word	4
	.word	_Label_273
	.word	-72
	.word	4
	.word	_Label_274
	.word	-76
	.word	4
	.word	_Label_275
	.word	-80
	.word	4
	.word	0
_Label_256:
	.ascii	"Run\0"
	.align
_Label_257:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_268:
	.byte	'C'
	.ascii	"_temp_243\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_274:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_275:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_3966:
	push	r0
	sub	r1,1,r1
	bne	_Label_3966
	mov	98,r13		! source line 98
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_276 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_276  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_277 = _function_191_ThreadPrintShort
	set	_function_191_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_278 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_277  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_279
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_280
	.word	-12
	.word	4
	.word	_Label_281
	.word	-16
	.word	4
	.word	_Label_282
	.word	-20
	.word	4
	.word	_Label_283
	.word	-24
	.word	4
	.word	0
_Label_279:
	.ascii	"PrintReadyList\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_283:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_3967:
	push	r0
	sub	r1,1,r1
	bne	_Label_3967
	mov	113,r13		! source line 113
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	125,r13		! source line 125
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_284 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_284  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_286 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_285 = *_temp_286  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_285  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	127,r13		! source line 127
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_287 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	129,r13		! source line 129
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_288
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_289
	.word	-12
	.word	4
	.word	_Label_290
	.word	-16
	.word	4
	.word	_Label_291
	.word	-20
	.word	4
	.word	_Label_292
	.word	-24
	.word	4
	.word	_Label_293
	.word	-28
	.word	4
	.word	_Label_294
	.word	-32
	.word	4
	.word	0
_Label_288:
	.ascii	"ThreadStartMain\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_293:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_294:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_3968:
	push	r0
	sub	r1,1,r1
	bne	_Label_3968
	mov	134,r13		! source line 134
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	145,r13		! source line 145
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   _temp_295 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	150,r13		! source line 150
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_296 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_296  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	152,r13		! source line 152
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_297
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_298
	.word	-12
	.word	4
	.word	_Label_299
	.word	-16
	.word	4
	.word	_Label_300
	.word	-20
	.word	4
	.word	0
_Label_297:
	.ascii	"ThreadFinish\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_300:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_3969:
	push	r0
	sub	r1,1,r1
	bne	_Label_3969
	mov	157,r13		! source line 157
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_301 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_303		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_303
!	jmp	_Label_302
_Label_302:
! THEN...
	mov	168,r13		! source line 168
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_304 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_304  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_306 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_305 = *_temp_306  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_305  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_303:
! CALL STATEMENT...
!   _temp_307 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_307  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_308 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_309 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_310
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_311
	.word	8
	.word	4
	.word	_Label_312
	.word	-12
	.word	4
	.word	_Label_313
	.word	-16
	.word	4
	.word	_Label_314
	.word	-20
	.word	4
	.word	_Label_315
	.word	-24
	.word	4
	.word	_Label_316
	.word	-28
	.word	4
	.word	_Label_317
	.word	-32
	.word	4
	.word	_Label_318
	.word	-36
	.word	4
	.word	_Label_319
	.word	-40
	.word	4
	.word	0
_Label_310:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_311:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_319:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_3970:
	push	r0
	sub	r1,1,r1
	bne	_Label_3970
	mov	180,r13		! source line 180
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	193,r13		! source line 193
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_321		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_321
!	jmp	_Label_320
_Label_320:
! THEN...
	mov	196,r13		! source line 196
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	197,r13		! source line 197
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_322
_Label_321:
! ELSE...
	mov	199,r13		! source line 199
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	200,r13		! source line 200
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_322:
! RETURN STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_323
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_324
	.word	8
	.word	4
	.word	_Label_325
	.word	-12
	.word	4
	.word	0
_Label_323:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_324:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_325:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_191_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_191_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3971:
	push	r0
	sub	r1,1,r1
	bne	_Label_3971
	mov	641,r13		! source line 641
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_329		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_329
!   _temp_328 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_330
_Label_329:
!   _temp_328 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_330:
!   if _temp_328 then goto _Label_327 else goto _Label_326
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_326
	jmp	_Label_327
_Label_326:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_331 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_327:
! CALL STATEMENT...
!   _temp_332 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_334 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_333 = *_temp_334  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_335 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	656,r13		! source line 656
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_344 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_343 = *_temp_344  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_338
	cmp	r1,2
	be	_Label_339
	cmp	r1,3
	be	_Label_340
	cmp	r1,4
	be	_Label_341
	cmp	r1,5
	be	_Label_342
	jmp	_Label_336
! CASE 1...
_Label_338:
! CALL STATEMENT...
!   _temp_345 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_337
! CASE 2...
_Label_339:
! CALL STATEMENT...
!   _temp_346 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_337
! CASE 3...
_Label_340:
! CALL STATEMENT...
!   _temp_347 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_337
! CASE 4...
_Label_341:
! CALL STATEMENT...
!   _temp_348 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_337
! CASE 5...
_Label_342:
! CALL STATEMENT...
!   _temp_349 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_337
! DEFAULT CASE...
_Label_336:
! CALL STATEMENT...
!   _temp_350 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	673,r13		! source line 673
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_337:
! CALL STATEMENT...
!   _temp_351 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_352 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_353 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_191_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_354
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_355
	.word	8
	.word	4
	.word	_Label_356
	.word	-16
	.word	4
	.word	_Label_357
	.word	-20
	.word	4
	.word	_Label_358
	.word	-24
	.word	4
	.word	_Label_359
	.word	-28
	.word	4
	.word	_Label_360
	.word	-32
	.word	4
	.word	_Label_361
	.word	-36
	.word	4
	.word	_Label_362
	.word	-40
	.word	4
	.word	_Label_363
	.word	-44
	.word	4
	.word	_Label_364
	.word	-48
	.word	4
	.word	_Label_365
	.word	-52
	.word	4
	.word	_Label_366
	.word	-56
	.word	4
	.word	_Label_367
	.word	-60
	.word	4
	.word	_Label_368
	.word	-64
	.word	4
	.word	_Label_369
	.word	-68
	.word	4
	.word	_Label_370
	.word	-72
	.word	4
	.word	_Label_371
	.word	-76
	.word	4
	.word	_Label_372
	.word	-9
	.word	1
	.word	_Label_373
	.word	-80
	.word	4
	.word	0
_Label_354:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_355:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_372:
	.byte	'C'
	.ascii	"_temp_328\0"
	.align
_Label_373:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_190_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_190_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3972:
	push	r0
	sub	r1,1,r1
	bne	_Label_3972
	mov	1029,r13		! source line 1029
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_374 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1033,r13		! source line 1033
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1034,r13		! source line 1034
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1034,r13		! source line 1034
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_190_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_375
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_376
	.word	8
	.word	4
	.word	_Label_377
	.word	-12
	.word	4
	.word	0
_Label_375:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_376:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	37,r1
_Label_3973:
	push	r0
	sub	r1,1,r1
	bne	_Label_3973
	mov	1039,r13		! source line 1039
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1050,r13		! source line 1050
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_379 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_378 = *_temp_379  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_378) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_380 = _temp_378 + 28
	load	[r14+-140],r1
	add	r1,28,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_380 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-132],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1051,r13		! source line 1051
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=status  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_381 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_381 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-128],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=status  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1053,r13		! source line 1053
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=status  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! SEND STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_384 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: _temp_383 = *_temp_384  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_383) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_385 = _temp_383 + 32
	load	[r14+-120],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   _temp_382 = _temp_385		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_386 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_382  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_388 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_387 = *_temp_388  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   _temp_389 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_387  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! FOR STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_394 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_395 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_394  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-148]
_Label_390:
!   Perform the FOR-LOOP termination test
!   if i > _temp_395 then goto _Label_393		
	load	[r14+-148],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_393
_Label_391:
	mov	1057,r13		! source line 1057
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1058,r13		! source line 1058
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_400 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_399 = *_temp_400  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_399) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_401 = _temp_399 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_401 [i ] into _temp_402
!     make sure index expr is >= 0
	load	[r14+-148],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
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
	store	r2,[r14+-68]
!   Data Move: _temp_398 = *_temp_402  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_398) then goto _Label_397
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_397
!	jmp	_Label_396
_Label_396:
! THEN...
	mov	1059,r13		! source line 1059
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_405 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_404 = *_temp_405  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_404) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_406 = _temp_404 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_406 [i ] into _temp_407
!     make sure index expr is >= 0
	load	[r14+-148],r2
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
	store	r2,[r14+-48]
!   Data Move: _temp_403 = *_temp_407  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_408 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_403  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_410 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_409 = *_temp_410  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_409) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_411 = _temp_409 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_411 [i ] into _temp_412
!     make sure index expr is >= 0
	load	[r14+-148],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: *_temp_412 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! END IF...
_Label_397:
!   Increment the FOR-LOOP index variable and jump back
_Label_392:
!   i = i + 1
	load	[r14+-148],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
	jmp	_Label_390
! END FOR
_Label_393:
! ASSIGNMENT STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1064,r13		! source line 1064
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=status  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	1065,r13		! source line 1065
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_414 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_413 = *_temp_414  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_413) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_415 = _temp_413 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_415 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_416 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_416 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1067,r13		! source line 1067
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=status  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1067,r13		! source line 1067
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=status  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! CALL STATEMENT...
!   Call the function
	mov	1068,r13		! source line 1068
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0RE",r10
	add	r15,152,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_417
	.word	4		! total size of parameters
	.word	148		! frame size = 148
	.word	_Label_418
	.word	8
	.word	4
	.word	_Label_419
	.word	-12
	.word	4
	.word	_Label_420
	.word	-16
	.word	4
	.word	_Label_421
	.word	-20
	.word	4
	.word	_Label_422
	.word	-24
	.word	4
	.word	_Label_423
	.word	-28
	.word	4
	.word	_Label_424
	.word	-32
	.word	4
	.word	_Label_425
	.word	-36
	.word	4
	.word	_Label_426
	.word	-40
	.word	4
	.word	_Label_427
	.word	-44
	.word	4
	.word	_Label_428
	.word	-48
	.word	4
	.word	_Label_429
	.word	-52
	.word	4
	.word	_Label_430
	.word	-56
	.word	4
	.word	_Label_431
	.word	-60
	.word	4
	.word	_Label_432
	.word	-64
	.word	4
	.word	_Label_433
	.word	-68
	.word	4
	.word	_Label_434
	.word	-72
	.word	4
	.word	_Label_435
	.word	-76
	.word	4
	.word	_Label_436
	.word	-80
	.word	4
	.word	_Label_437
	.word	-84
	.word	4
	.word	_Label_438
	.word	-88
	.word	4
	.word	_Label_439
	.word	-92
	.word	4
	.word	_Label_440
	.word	-96
	.word	4
	.word	_Label_441
	.word	-100
	.word	4
	.word	_Label_442
	.word	-104
	.word	4
	.word	_Label_443
	.word	-108
	.word	4
	.word	_Label_444
	.word	-112
	.word	4
	.word	_Label_445
	.word	-116
	.word	4
	.word	_Label_446
	.word	-120
	.word	4
	.word	_Label_447
	.word	-124
	.word	4
	.word	_Label_448
	.word	-128
	.word	4
	.word	_Label_449
	.word	-132
	.word	4
	.word	_Label_450
	.word	-136
	.word	4
	.word	_Label_451
	.word	-140
	.word	4
	.word	_Label_452
	.word	-144
	.word	4
	.word	_Label_453
	.word	-148
	.word	4
	.word	0
_Label_417:
	.ascii	"ProcessFinish\0"
	.align
_Label_418:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_452:
	.byte	'I'
	.ascii	"status\0"
	.align
_Label_453:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_3974:
	push	r0
	sub	r1,1,r1
	bne	_Label_3974
	mov	1551,r13		! source line 1551
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_454
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_454:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_3975:
	push	r0
	sub	r1,1,r1
	bne	_Label_3975
	mov	1569,r13		! source line 1569
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1580,r13		! source line 1580
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1582,r13		! source line 1582
	mov	"\0\0IF",r10
!   _temp_458 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_459 = _temp_458 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_457 = *_temp_459  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_457 == 0 then goto _Label_456		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_456
!	jmp	_Label_455
_Label_455:
! THEN...
	mov	1583,r13		! source line 1583
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0SE",r10
!   _temp_461 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_462 = _temp_461 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_460 = *_temp_462  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_460) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_456:
! RETURN STATEMENT...
	mov	1582,r13		! source line 1582
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_463
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_464
	.word	-12
	.word	4
	.word	_Label_465
	.word	-16
	.word	4
	.word	_Label_466
	.word	-20
	.word	4
	.word	_Label_467
	.word	-24
	.word	4
	.word	_Label_468
	.word	-28
	.word	4
	.word	_Label_469
	.word	-32
	.word	4
	.word	0
_Label_463:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1590,r13		! source line 1590
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1599,r13		! source line 1599
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1599,r13		! source line 1599
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_470
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_470:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3976:
	push	r0
	sub	r1,1,r1
	bne	_Label_3976
	mov	1604,r13		! source line 1604
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1610,r13		! source line 1610
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_471 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_471  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1611,r13		! source line 1611
	mov	"\0\0CA",r10
	call	_function_189_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_472
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_473
	.word	-12
	.word	4
	.word	0
_Label_472:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3977:
	push	r0
	sub	r1,1,r1
	bne	_Label_3977
	mov	1616,r13		! source line 1616
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_474 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_474  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1623,r13		! source line 1623
	mov	"\0\0CA",r10
	call	_function_189_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_475
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_476
	.word	-12
	.word	4
	.word	0
_Label_475:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3978:
	push	r0
	sub	r1,1,r1
	bne	_Label_3978
	mov	1628,r13		! source line 1628
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1634,r13		! source line 1634
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_477 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_477  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1635,r13		! source line 1635
	mov	"\0\0CA",r10
	call	_function_189_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_478
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_479
	.word	-12
	.word	4
	.word	0
_Label_478:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3979:
	push	r0
	sub	r1,1,r1
	bne	_Label_3979
	mov	1640,r13		! source line 1640
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_480 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_480  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1647,r13		! source line 1647
	mov	"\0\0CA",r10
	call	_function_189_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1647,r13		! source line 1647
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_481
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_482
	.word	-12
	.word	4
	.word	0
_Label_481:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3980:
	push	r0
	sub	r1,1,r1
	bne	_Label_3980
	mov	1652,r13		! source line 1652
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1658,r13		! source line 1658
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_483 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_483  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1659,r13		! source line 1659
	mov	"\0\0CA",r10
	call	_function_189_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_484
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_485
	.word	-12
	.word	4
	.word	0
_Label_484:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3981:
	push	r0
	sub	r1,1,r1
	bne	_Label_3981
	mov	1664,r13		! source line 1664
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1670,r13		! source line 1670
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_486 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_486  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1671,r13		! source line 1671
	mov	"\0\0CA",r10
	call	_function_189_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_487
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_488
	.word	-12
	.word	4
	.word	0
_Label_487:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3982:
	push	r0
	sub	r1,1,r1
	bne	_Label_3982
	mov	1676,r13		! source line 1676
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1682,r13		! source line 1682
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_489 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_489  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1683,r13		! source line 1683
	mov	"\0\0CA",r10
	call	_function_189_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1683,r13		! source line 1683
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_490
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_491
	.word	-12
	.word	4
	.word	0
_Label_490:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_189_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_189_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3983:
	push	r0
	sub	r1,1,r1
	bne	_Label_3983
	mov	1688,r13		! source line 1688
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_492 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_492  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1693,r13		! source line 1693
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_493 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_493  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1695,r13		! source line 1695
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_497 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_496 = *_temp_497  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_496 == 0 then goto _Label_495		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_495
!	jmp	_Label_494
_Label_494:
! THEN...
	mov	1699,r13		! source line 1699
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1699,r13		! source line 1699
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_499 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_498 = *_temp_499  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_498) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_500
_Label_495:
! ELSE...
	mov	1701,r13		! source line 1701
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_501 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1701,r13		! source line 1701
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_500:
! SEND STATEMENT...
	mov	1703,r13		! source line 1703
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1709,r13		! source line 1709
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_189_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_502
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_503
	.word	8
	.word	4
	.word	_Label_504
	.word	-12
	.word	4
	.word	_Label_505
	.word	-16
	.word	4
	.word	_Label_506
	.word	-20
	.word	4
	.word	_Label_507
	.word	-24
	.word	4
	.word	_Label_508
	.word	-28
	.word	4
	.word	_Label_509
	.word	-32
	.word	4
	.word	_Label_510
	.word	-36
	.word	4
	.word	0
_Label_502:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_503:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3984:
	push	r0
	sub	r1,1,r1
	bne	_Label_3984
	mov	1714,r13		! source line 1714
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1721,r13		! source line 1721
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1735,r13		! source line 1735
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3985
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_511
_Label_3985:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_511
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_511
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_525,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_525:
	jmp	_Label_517	! 1:	
	jmp	_Label_524	! 2:	
	jmp	_Label_514	! 3:	
	jmp	_Label_513	! 4:	
	jmp	_Label_516	! 5:	
	jmp	_Label_515	! 6:	
	jmp	_Label_518	! 7:	
	jmp	_Label_519	! 8:	
	jmp	_Label_520	! 9:	
	jmp	_Label_521	! 10:	
	jmp	_Label_522	! 11:	
	jmp	_Label_523	! 12:	
! CASE 4...
_Label_513:
! RETURN STATEMENT...
	mov	1737,r13		! source line 1737
	mov	"\0\0RE",r10
!   Call the function
	mov	1737,r13		! source line 1737
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_526  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_526  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_514:
! CALL STATEMENT...
!   Call the function
	mov	1739,r13		! source line 1739
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1740,r13		! source line 1740
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_515:
! RETURN STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1742,r13		! source line 1742
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_527  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_527  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_516:
! RETURN STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1744,r13		! source line 1744
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_528  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_528  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_517:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1746,r13		! source line 1746
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_518:
! RETURN STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1749,r13		! source line 1749
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_529  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_529  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_519:
! RETURN STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1751,r13		! source line 1751
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_530  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_530  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_520:
! RETURN STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_531  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_531  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_521:
! RETURN STATEMENT...
	mov	1755,r13		! source line 1755
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1755,r13		! source line 1755
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_532  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_532  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_522:
! RETURN STATEMENT...
	mov	1757,r13		! source line 1757
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1757,r13		! source line 1757
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_533  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_533  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_523:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1759,r13		! source line 1759
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_524:
! CALL STATEMENT...
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_511:
! CALL STATEMENT...
!   _temp_534 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_534  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1765,r13		! source line 1765
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1766,r13		! source line 1766
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1767,r13		! source line 1767
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_535 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_535  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1768,r13		! source line 1768
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_512:
! RETURN STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_536
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_537
	.word	8
	.word	4
	.word	_Label_538
	.word	12
	.word	4
	.word	_Label_539
	.word	16
	.word	4
	.word	_Label_540
	.word	20
	.word	4
	.word	_Label_541
	.word	24
	.word	4
	.word	_Label_542
	.word	-12
	.word	4
	.word	_Label_543
	.word	-16
	.word	4
	.word	_Label_544
	.word	-20
	.word	4
	.word	_Label_545
	.word	-24
	.word	4
	.word	_Label_546
	.word	-28
	.word	4
	.word	_Label_547
	.word	-32
	.word	4
	.word	_Label_548
	.word	-36
	.word	4
	.word	_Label_549
	.word	-40
	.word	4
	.word	_Label_550
	.word	-44
	.word	4
	.word	_Label_551
	.word	-48
	.word	4
	.word	0
_Label_536:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_537:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_538:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_539:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_540:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_541:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1,r1
_Label_3986:
	push	r0
	sub	r1,1,r1
	bne	_Label_3986
	mov	1775,r13		! source line 1775
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1777,r13		! source line 1777
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1777,r13		! source line 1777
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_552
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_553
	.word	8
	.word	4
	.word	0
_Label_552:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_553:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_3987:
	push	r0
	sub	r1,1,r1
	bne	_Label_3987
	mov	1782,r13		! source line 1782
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_554 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_554  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1784,r13		! source line 1784
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	1785,r13		! source line 1785
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1785,r13		! source line 1785
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_555
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_556
	.word	-12
	.word	4
	.word	0
_Label_555:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1,r1
_Label_3988:
	push	r0
	sub	r1,1,r1
	bne	_Label_3988
	mov	1790,r13		! source line 1790
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_557
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_557:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	85,r1
_Label_3989:
	push	r0
	sub	r1,1,r1
	bne	_Label_3989
	mov	1798,r13		! source line 1798
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0AS",r10
	mov	1807,r13		! source line 1807
	mov	"\0\0SE",r10
!   _temp_558 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-316]
!   Send message GetANewThread
	load	[r14+-316],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-320]
! ASSIGNMENT STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0AS",r10
	mov	1808,r13		! source line 1808
	mov	"\0\0SE",r10
!   _temp_559 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-312]
!   Send message GetANewProcess
	load	[r14+-312],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-324]
! ASSIGNMENT STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_560 = newPCB + 24
	load	[r14+-324],r1
	add	r1,24,r1
	store	r1,[r14+-308]
!   Data Move: *_temp_560 = newThread  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r14+-308],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_561 = newPCB + 16
	load	[r14+-324],r1
	add	r1,16,r1
	store	r1,[r14+-304]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_564 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-292]
!   Data Move: _temp_563 = *_temp_564  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_563) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_565 = _temp_563 + 12
	load	[r14+-296],r1
	add	r1,12,r1
	store	r1,[r14+-288]
!   Data Move: _temp_562 = *_temp_565  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   Data Move: *_temp_561 = _temp_562  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r14+-304],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_566 = newThread + 76
	load	[r14+-320],r1
	add	r1,76,r1
	store	r1,[r14+-284]
!   Data Move: *_temp_566 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-284],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_567 = newThread + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-280]
!   Data Move: *_temp_567 = newPCB  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r14+-280],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_569 = newThread + 4096
	load	[r14+-320],r1
	add	r1,4096,r1
	store	r1,[r14+-272]
!   Move address of _temp_569 [0 ] into _temp_570
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-272],r1
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
	store	r2,[r14+-268]
!   _temp_568 = _temp_570		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=_temp_568  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+0]
!   Call the function
	mov	1814,r13		! source line 1814
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! FOR STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_575 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
!   Calculate and save the FOR-LOOP ending value
!   _temp_576 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-260]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_575  (sizeInBytes=4)
	load	[r14+-264],r1
	store	r1,[r14+-336]
_Label_571:
!   Perform the FOR-LOOP termination test
!   if i > _temp_576 then goto _Label_574		
	load	[r14+-336],r1
	load	[r14+-260],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_574
_Label_572:
	mov	1818,r13		! source line 1818
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_581 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_580 = *_temp_581  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_580) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_582 = _temp_580 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_582 [i ] into _temp_583
!     make sure index expr is >= 0
	load	[r14+-336],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-244],r1
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
	store	r2,[r14+-240]
!   Data Move: _temp_579 = *_temp_583  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_579) then goto _Label_578
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_578
!	jmp	_Label_577
_Label_577:
! THEN...
	mov	1820,r13		! source line 1820
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1820,r13		! source line 1820
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_586 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-228]
!   Data Move: _temp_585 = *_temp_586  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_585) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_587 = _temp_585 + 124
	load	[r14+-232],r1
	add	r1,124,r1
	store	r1,[r14+-224]
!   Move address of _temp_587 [i ] into _temp_588
!     make sure index expr is >= 0
	load	[r14+-336],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-224],r1
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
	store	r2,[r14+-220]
!   Data Move: _temp_584 = *_temp_588  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_584) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_589 = _temp_584 + 24
	load	[r14+-236],r1
	add	r1,24,r1
	store	r1,[r14+-216]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_594 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_593 = *_temp_594  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_593) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_595 = _temp_593 + 124
	load	[r14+-200],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   Move address of _temp_595 [i ] into _temp_596
!     make sure index expr is >= 0
	load	[r14+-336],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-192],r1
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
	store	r2,[r14+-188]
!   Data Move: _temp_592 = *_temp_596  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_592) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_597 = _temp_592 + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-184]
!   Data Move: _temp_591 = *_temp_597  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_590 = _temp_591 + 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   Data Move: *_temp_589 = _temp_590  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r14+-216],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_599 = newThread + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_598 = *_temp_599  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_598) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_600 = _temp_598 + 124
	load	[r14+-180],r1
	add	r1,124,r1
	store	r1,[r14+-172]
!   Move address of _temp_600 [i ] into _temp_601
!     make sure index expr is >= 0
	load	[r14+-336],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_603 = *_temp_604  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_603) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_605 = _temp_603 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_605 [i ] into _temp_606
!     make sure index expr is >= 0
	load	[r14+-336],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
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
	store	r2,[r14+-148]
!   Data Move: _temp_602 = *_temp_606  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   Data Move: *_temp_601 = _temp_602  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r14+-168],r2
	store	r1,[r2]
! END IF...
_Label_578:
!   Increment the FOR-LOOP index variable and jump back
_Label_573:
!   i = i + 1
	load	[r14+-336],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-336]
	jmp	_Label_571
! END FOR
_Label_574:
! ASSIGNMENT STATEMENT...
	mov	1826,r13		! source line 1826
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_607 = newThread + 68
	load	[r14+-320],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = newThread + 88
	load	[r14+-320],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_609 [999 ] into _temp_610
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_608 = _temp_610		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_607 = _temp_608  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_612 = newPCB + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_611 = _temp_612		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_614 = *_temp_615  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_614) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_616 = _temp_614 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_617 = _temp_616 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_613 = *_temp_617  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_618 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_611  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_613  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_623 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_626 = *_temp_627  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_626) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = _temp_626 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_629 = _temp_628 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_625 = *_temp_629  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_624 = _temp_625 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_623  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-336]
_Label_619:
!   Perform the FOR-LOOP termination test
!   if i > _temp_624 then goto _Label_622		
	load	[r14+-336],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_622
_Label_620:
	mov	1829,r13		! source line 1829
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_631 = newPCB + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_630  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1830,r13		! source line 1830
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_634 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_633 = *_temp_634  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_633) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_635 = _temp_633 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_632  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_630  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_632  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1830,r13		! source line 1830
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0IF",r10
	mov	1831,r13		! source line 1831
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_640 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_639 = *_temp_640  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_639) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_641 = _temp_639 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_638  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_642 = _temp_638 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_642 then goto _Label_637 else goto _Label_636
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_636
	jmp	_Label_637
_Label_636:
! THEN...
	mov	1832,r13		! source line 1832
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_643 = newPCB + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
	jmp	_Label_644
_Label_637:
! ELSE...
	mov	1834,r13		! source line 1834
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_645 = newPCB + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
! END IF...
_Label_644:
!   Increment the FOR-LOOP index variable and jump back
_Label_621:
!   i = i + 1
	load	[r14+-336],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-336]
	jmp	_Label_619
! END FOR
_Label_622:
! ASSIGNMENT STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0AS",r10
!   Call the function
	mov	1838,r13		! source line 1838
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
! SEND STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0SE",r10
!   _temp_646 = _function_188_ResumeChildAfterFork
	set	_function_188_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_646  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-328],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-320],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_648 = newPCB + 12
	load	[r14+-324],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_647 = *_temp_648  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_647  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,344,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_649
	.word	0		! total size of parameters
	.word	340		! frame size = 340
	.word	_Label_650
	.word	-16
	.word	4
	.word	_Label_651
	.word	-20
	.word	4
	.word	_Label_652
	.word	-24
	.word	4
	.word	_Label_653
	.word	-28
	.word	4
	.word	_Label_654
	.word	-32
	.word	4
	.word	_Label_655
	.word	-9
	.word	1
	.word	_Label_656
	.word	-36
	.word	4
	.word	_Label_657
	.word	-40
	.word	4
	.word	_Label_658
	.word	-44
	.word	4
	.word	_Label_659
	.word	-10
	.word	1
	.word	_Label_660
	.word	-48
	.word	4
	.word	_Label_661
	.word	-52
	.word	4
	.word	_Label_662
	.word	-56
	.word	4
	.word	_Label_663
	.word	-60
	.word	4
	.word	_Label_664
	.word	-64
	.word	4
	.word	_Label_665
	.word	-68
	.word	4
	.word	_Label_666
	.word	-72
	.word	4
	.word	_Label_667
	.word	-76
	.word	4
	.word	_Label_668
	.word	-80
	.word	4
	.word	_Label_669
	.word	-84
	.word	4
	.word	_Label_670
	.word	-88
	.word	4
	.word	_Label_671
	.word	-92
	.word	4
	.word	_Label_672
	.word	-96
	.word	4
	.word	_Label_673
	.word	-100
	.word	4
	.word	_Label_674
	.word	-104
	.word	4
	.word	_Label_675
	.word	-108
	.word	4
	.word	_Label_676
	.word	-112
	.word	4
	.word	_Label_677
	.word	-116
	.word	4
	.word	_Label_678
	.word	-120
	.word	4
	.word	_Label_679
	.word	-124
	.word	4
	.word	_Label_680
	.word	-128
	.word	4
	.word	_Label_681
	.word	-132
	.word	4
	.word	_Label_682
	.word	-136
	.word	4
	.word	_Label_683
	.word	-140
	.word	4
	.word	_Label_684
	.word	-144
	.word	4
	.word	_Label_685
	.word	-148
	.word	4
	.word	_Label_686
	.word	-152
	.word	4
	.word	_Label_687
	.word	-156
	.word	4
	.word	_Label_688
	.word	-160
	.word	4
	.word	_Label_689
	.word	-164
	.word	4
	.word	_Label_690
	.word	-168
	.word	4
	.word	_Label_691
	.word	-172
	.word	4
	.word	_Label_692
	.word	-176
	.word	4
	.word	_Label_693
	.word	-180
	.word	4
	.word	_Label_694
	.word	-184
	.word	4
	.word	_Label_695
	.word	-188
	.word	4
	.word	_Label_696
	.word	-192
	.word	4
	.word	_Label_697
	.word	-196
	.word	4
	.word	_Label_698
	.word	-200
	.word	4
	.word	_Label_699
	.word	-204
	.word	4
	.word	_Label_700
	.word	-208
	.word	4
	.word	_Label_701
	.word	-212
	.word	4
	.word	_Label_702
	.word	-216
	.word	4
	.word	_Label_703
	.word	-220
	.word	4
	.word	_Label_704
	.word	-224
	.word	4
	.word	_Label_705
	.word	-228
	.word	4
	.word	_Label_706
	.word	-232
	.word	4
	.word	_Label_707
	.word	-236
	.word	4
	.word	_Label_708
	.word	-240
	.word	4
	.word	_Label_709
	.word	-244
	.word	4
	.word	_Label_710
	.word	-248
	.word	4
	.word	_Label_711
	.word	-252
	.word	4
	.word	_Label_712
	.word	-256
	.word	4
	.word	_Label_713
	.word	-260
	.word	4
	.word	_Label_714
	.word	-264
	.word	4
	.word	_Label_715
	.word	-268
	.word	4
	.word	_Label_716
	.word	-272
	.word	4
	.word	_Label_717
	.word	-276
	.word	4
	.word	_Label_718
	.word	-280
	.word	4
	.word	_Label_719
	.word	-284
	.word	4
	.word	_Label_720
	.word	-288
	.word	4
	.word	_Label_721
	.word	-292
	.word	4
	.word	_Label_722
	.word	-296
	.word	4
	.word	_Label_723
	.word	-300
	.word	4
	.word	_Label_724
	.word	-304
	.word	4
	.word	_Label_725
	.word	-308
	.word	4
	.word	_Label_726
	.word	-312
	.word	4
	.word	_Label_727
	.word	-316
	.word	4
	.word	_Label_728
	.word	-320
	.word	4
	.word	_Label_729
	.word	-324
	.word	4
	.word	_Label_730
	.word	-328
	.word	4
	.word	_Label_731
	.word	-332
	.word	4
	.word	_Label_732
	.word	-336
	.word	4
	.word	0
_Label_649:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_655:
	.byte	'C'
	.ascii	"_temp_642\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_659:
	.byte	'C'
	.ascii	"_temp_638\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_728:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_729:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_730:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_731:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_732:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_188_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_188_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3990:
	push	r0
	sub	r1,1,r1
	bne	_Label_3990
	mov	1846,r13		! source line 1846
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1853,r13		! source line 1853
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1854,r13		! source line 1854
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_734 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_733 = *_temp_734  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_733) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_735 = _temp_733 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Send message SetToThisPageTable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_737 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_737 [0 ] into _temp_738
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_736 = _temp_738		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1855,r13		! source line 1855
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1856,r13		! source line 1856
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_739 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_739 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1857,r13		! source line 1857
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_740 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_740 [14 ] into _temp_741
!     make sure index expr is >= 0
	mov	14,r2
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
!   Data Move: userStackTop = *_temp_741  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1858,r13		! source line 1858
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_742 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_742 [999 ] into _temp_743
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   systemStackTop = _temp_743		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-64]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=userStackTop  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=PC  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=systemStackTop  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Call the function
	mov	1859,r13		! source line 1859
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_188_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_744
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_745
	.word	8
	.word	4
	.word	_Label_746
	.word	-12
	.word	4
	.word	_Label_747
	.word	-16
	.word	4
	.word	_Label_748
	.word	-20
	.word	4
	.word	_Label_749
	.word	-24
	.word	4
	.word	_Label_750
	.word	-28
	.word	4
	.word	_Label_751
	.word	-32
	.word	4
	.word	_Label_752
	.word	-36
	.word	4
	.word	_Label_753
	.word	-40
	.word	4
	.word	_Label_754
	.word	-44
	.word	4
	.word	_Label_755
	.word	-48
	.word	4
	.word	_Label_756
	.word	-52
	.word	4
	.word	_Label_757
	.word	-56
	.word	4
	.word	_Label_758
	.word	-60
	.word	4
	.word	_Label_759
	.word	-64
	.word	4
	.word	0
_Label_744:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_745:
	.byte	'I'
	.ascii	"PC\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_757:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_758:
	.byte	'I'
	.ascii	"userStackTop\0"
	.align
_Label_759:
	.byte	'I'
	.ascii	"systemStackTop\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	30,r1
_Label_3991:
	push	r0
	sub	r1,1,r1
	bne	_Label_3991
	mov	1865,r13		! source line 1865
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1871,r13		! source line 1871
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_764 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_765 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_764  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_760:
!   Perform the FOR-LOOP termination test
!   if i > _temp_765 then goto _Label_763		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_763
_Label_761:
	mov	1871,r13		! source line 1871
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0IF",r10
!   _temp_771 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_772 = _temp_771 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_772 [i ] into _temp_773
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_774 = _temp_773 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_770 = *_temp_774  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_770 != processID then goto _Label_767		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_767
!	jmp	_Label_769
_Label_769:
!   _temp_776 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_777 = _temp_776 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_777 [i ] into _temp_778
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_779 = _temp_778 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_775 = *_temp_779  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_782 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_781 = *_temp_782  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_781) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_783 = _temp_781 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_780 = *_temp_783  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_775 != _temp_780 then goto _Label_767		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_767
!	jmp	_Label_768
_Label_768:
!   _temp_785 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_786 = _temp_785 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_786 [i ] into _temp_787
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_788 = _temp_787 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_784 = *_temp_788  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_784 == 3 then goto _Label_767		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_767
!	jmp	_Label_766
_Label_766:
! THEN...
	mov	1873,r13		! source line 1873
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1873,r13		! source line 1873
	mov	"\0\0AS",r10
	mov	1873,r13		! source line 1873
	mov	"\0\0SE",r10
!   _temp_790 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_791 = _temp_790 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_791 [i ] into _temp_792
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_789 = _temp_792		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_793 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_789  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message WaitForZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=childExitStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! RETURN STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0RE",r10
!   ReturnResult: childExitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_767:
!   Increment the FOR-LOOP index variable and jump back
_Label_762:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_760
! END FOR
_Label_763:
! RETURN STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_794
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_795
	.word	8
	.word	4
	.word	_Label_796
	.word	-12
	.word	4
	.word	_Label_797
	.word	-16
	.word	4
	.word	_Label_798
	.word	-20
	.word	4
	.word	_Label_799
	.word	-24
	.word	4
	.word	_Label_800
	.word	-28
	.word	4
	.word	_Label_801
	.word	-32
	.word	4
	.word	_Label_802
	.word	-36
	.word	4
	.word	_Label_803
	.word	-40
	.word	4
	.word	_Label_804
	.word	-44
	.word	4
	.word	_Label_805
	.word	-48
	.word	4
	.word	_Label_806
	.word	-52
	.word	4
	.word	_Label_807
	.word	-56
	.word	4
	.word	_Label_808
	.word	-60
	.word	4
	.word	_Label_809
	.word	-64
	.word	4
	.word	_Label_810
	.word	-68
	.word	4
	.word	_Label_811
	.word	-72
	.word	4
	.word	_Label_812
	.word	-76
	.word	4
	.word	_Label_813
	.word	-80
	.word	4
	.word	_Label_814
	.word	-84
	.word	4
	.word	_Label_815
	.word	-88
	.word	4
	.word	_Label_816
	.word	-92
	.word	4
	.word	_Label_817
	.word	-96
	.word	4
	.word	_Label_818
	.word	-100
	.word	4
	.word	_Label_819
	.word	-104
	.word	4
	.word	_Label_820
	.word	-108
	.word	4
	.word	_Label_821
	.word	-112
	.word	4
	.word	_Label_822
	.word	-116
	.word	4
	.word	_Label_823
	.word	-120
	.word	4
	.word	0
_Label_794:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_795:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_822:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_823:
	.byte	'I'
	.ascii	"childExitStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	65,r1
_Label_3992:
	push	r0
	sub	r1,1,r1
	bne	_Label_3992
	mov	1884,r13		! source line 1884
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1897,r13		! source line 1897
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=InterruptStauts  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0AS",r10
	mov	1898,r13		! source line 1898
	mov	"\0\0SE",r10
!   _temp_824 = &strBuffer
	add	r14,-228,r1
	store	r1,[r14+-112]
!   _temp_825 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_827 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_826 = *_temp_827  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_826) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_828 = _temp_826 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_824  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_825  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0IF",r10
!   if ret >= 0 then goto _Label_830		(int)
	load	[r14+-252],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_830
!	jmp	_Label_829
_Label_829:
! THEN...
	mov	1901,r13		! source line 1901
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1901,r13		! source line 1901
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_830:
! ASSIGNMENT STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_3993:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3993
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! SEND STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0SE",r10
!   _temp_832 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-88]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1907,r13		! source line 1907
	mov	"\0\0AS",r10
	mov	1907,r13		! source line 1907
	mov	"\0\0SE",r10
!   _temp_833 = &strBuffer
	add	r14,-228,r1
	store	r1,[r14+-84]
!   _temp_834 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_833  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newOpenFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! IF STATEMENT...
	mov	1908,r13		! source line 1908
	mov	"\0\0IF",r10
!   if intIsZero (newOpenFile) then goto _Label_835
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_835
	jmp	_Label_836
_Label_835:
! THEN...
	mov	1909,r13		! source line 1909
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_836:
! ASSIGNMENT STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0AS",r10
	mov	1912,r13		! source line 1912
	mov	"\0\0SE",r10
!   _temp_837 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (newOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_837  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-244],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=PC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! IF STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0IF",r10
!   if PC >= 0 then goto _Label_839		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_839
!	jmp	_Label_838
_Label_838:
! THEN...
	mov	1914,r13		! source line 1914
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_839:
! SEND STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_842 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_841 = *_temp_842  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_841) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_843 = _temp_841 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_840 = _temp_843		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_844 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_840  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_846 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_845 = *_temp_846  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_845) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_847 = _temp_845 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_847 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_3994:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3994
! SEND STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0SE",r10
!   _temp_848 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=newOpenFile  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_849 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_849 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0AS",r10
!   _temp_851 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-28]
!   _temp_852 = _temp_851 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_850 = *_temp_852  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   initUStack = _temp_850 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_853 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_853 [999 ] into _temp_854
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   initSStack = _temp_854		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-236]
! SEND STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0SE",r10
!   _temp_855 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-12]
!   Send message SetToThisPageTable
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUStack  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=PC  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSStack  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+8]
!   Call the function
	mov	1926,r13		! source line 1926
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_856
	.word	4		! total size of parameters
	.word	260		! frame size = 260
	.word	_Label_857
	.word	8
	.word	4
	.word	_Label_858
	.word	-12
	.word	4
	.word	_Label_859
	.word	-16
	.word	4
	.word	_Label_860
	.word	-20
	.word	4
	.word	_Label_861
	.word	-24
	.word	4
	.word	_Label_862
	.word	-28
	.word	4
	.word	_Label_863
	.word	-32
	.word	4
	.word	_Label_864
	.word	-36
	.word	4
	.word	_Label_865
	.word	-40
	.word	4
	.word	_Label_866
	.word	-44
	.word	4
	.word	_Label_867
	.word	-48
	.word	4
	.word	_Label_868
	.word	-52
	.word	4
	.word	_Label_869
	.word	-56
	.word	4
	.word	_Label_870
	.word	-60
	.word	4
	.word	_Label_871
	.word	-64
	.word	4
	.word	_Label_872
	.word	-68
	.word	4
	.word	_Label_873
	.word	-72
	.word	4
	.word	_Label_874
	.word	-76
	.word	4
	.word	_Label_875
	.word	-80
	.word	4
	.word	_Label_876
	.word	-84
	.word	4
	.word	_Label_877
	.word	-88
	.word	4
	.word	_Label_878
	.word	-92
	.word	4
	.word	_Label_879
	.word	-96
	.word	4
	.word	_Label_880
	.word	-100
	.word	4
	.word	_Label_881
	.word	-104
	.word	4
	.word	_Label_882
	.word	-108
	.word	4
	.word	_Label_883
	.word	-112
	.word	4
	.word	_Label_884
	.word	-204
	.word	92
	.word	_Label_885
	.word	-228
	.word	24
	.word	_Label_886
	.word	-232
	.word	4
	.word	_Label_887
	.word	-236
	.word	4
	.word	_Label_888
	.word	-240
	.word	4
	.word	_Label_889
	.word	-244
	.word	4
	.word	_Label_890
	.word	-248
	.word	4
	.word	_Label_891
	.word	-252
	.word	4
	.word	0
_Label_856:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_857:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_884:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_885:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_886:
	.byte	'I'
	.ascii	"initUStack\0"
	.align
_Label_887:
	.byte	'I'
	.ascii	"initSStack\0"
	.align
_Label_888:
	.byte	'I'
	.ascii	"PC\0"
	.align
_Label_889:
	.byte	'P'
	.ascii	"newOpenFile\0"
	.align
_Label_890:
	.byte	'I'
	.ascii	"InterruptStauts\0"
	.align
_Label_891:
	.byte	'I'
	.ascii	"ret\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	21,r1
_Label_3995:
	push	r0
	sub	r1,1,r1
	bne	_Label_3995
	mov	1932,r13		! source line 1932
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1938,r13		! source line 1938
	mov	"\0\0AS",r10
	mov	1938,r13		! source line 1938
	mov	"\0\0SE",r10
!   _temp_892 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_893 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_895 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_894 = *_temp_895  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_894) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_896 = _temp_894 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_892  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_893  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_897 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_897  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1939,r13		! source line 1939
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1940,r13		! source line 1940
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_898 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_898  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1941,r13		! source line 1941
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_899 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_899  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1942,r13		! source line 1942
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1943,r13		! source line 1943
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_900 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_900  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1944,r13		! source line 1944
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_901 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_901  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1945,r13		! source line 1945
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1946,r13		! source line 1946
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_902
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_903
	.word	8
	.word	4
	.word	_Label_904
	.word	-12
	.word	4
	.word	_Label_905
	.word	-16
	.word	4
	.word	_Label_906
	.word	-20
	.word	4
	.word	_Label_907
	.word	-24
	.word	4
	.word	_Label_908
	.word	-28
	.word	4
	.word	_Label_909
	.word	-32
	.word	4
	.word	_Label_910
	.word	-36
	.word	4
	.word	_Label_911
	.word	-40
	.word	4
	.word	_Label_912
	.word	-44
	.word	4
	.word	_Label_913
	.word	-48
	.word	4
	.word	_Label_914
	.word	-52
	.word	4
	.word	_Label_915
	.word	-76
	.word	24
	.word	0
_Label_902:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_903:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_914:
	.byte	'I'
	.ascii	"ret\0"
	.align
_Label_915:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	32,r1
_Label_3996:
	push	r0
	sub	r1,1,r1
	bne	_Label_3996
	mov	1952,r13		! source line 1952
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0AS",r10
	mov	1961,r13		! source line 1961
	mov	"\0\0SE",r10
!   _temp_916 = &strBuffer
	add	r14,-108,r1
	store	r1,[r14+-80]
!   _temp_917 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_919 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_918 = *_temp_919  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_918) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_920 = _temp_918 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_916  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_917  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0AS",r10
!   fileDescriptorEmptySlot = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-116]
! FOR STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_925 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_926 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_925  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-120]
_Label_921:
!   Perform the FOR-LOOP termination test
!   if i > _temp_926 then goto _Label_924		
	load	[r14+-120],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_924
_Label_922:
	mov	1964,r13		! source line 1964
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_931 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_930 = *_temp_931  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_930) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_932 = _temp_930 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_932 [i ] into _temp_933
!     make sure index expr is >= 0
	load	[r14+-120],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_929 = *_temp_933  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_929) then goto _Label_927
	load	[r14+-52],r1
	cmp	r1,r0
	be	_Label_927
	jmp	_Label_928
_Label_927:
! THEN...
	mov	1966,r13		! source line 1966
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0AS",r10
!   fileDescriptorEmptySlot = i		(4 bytes)
	load	[r14+-120],r1
	store	r1,[r14+-116]
! BREAK STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0BR",r10
	jmp	_Label_924
! END IF...
_Label_928:
!   Increment the FOR-LOOP index variable and jump back
_Label_923:
!   i = i + 1
	load	[r14+-120],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
	jmp	_Label_921
! END FOR
_Label_924:
! IF STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0IF",r10
!   if fileDescriptorEmptySlot != -1 then goto _Label_935		(int)
	load	[r14+-116],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_935
!	jmp	_Label_934
_Label_934:
! THEN...
	mov	1972,r13		! source line 1972
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_935:
! ASSIGNMENT STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0AS",r10
	mov	1975,r13		! source line 1975
	mov	"\0\0SE",r10
!   _temp_936 = &strBuffer
	add	r14,-108,r1
	store	r1,[r14+-32]
!   _temp_937 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_936  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! IF STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_938
	load	[r14+-112],r1
	cmp	r1,r0
	be	_Label_938
	jmp	_Label_939
_Label_938:
! THEN...
	mov	1977,r13		! source line 1977
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_939:
! ASSIGNMENT STATEMENT...
	mov	1980,r13		! source line 1980
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_941 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_940 = *_temp_941  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_940) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_942 = _temp_940 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_942 [fileDescriptorEmptySlot ] into _temp_943
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: *_temp_943 = openFile  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0RE",r10
!   ReturnResult: fileDescriptorEmptySlot  (sizeInBytes=4)
	load	[r14+-116],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_944
	.word	4		! total size of parameters
	.word	128		! frame size = 128
	.word	_Label_945
	.word	8
	.word	4
	.word	_Label_946
	.word	-12
	.word	4
	.word	_Label_947
	.word	-16
	.word	4
	.word	_Label_948
	.word	-20
	.word	4
	.word	_Label_949
	.word	-24
	.word	4
	.word	_Label_950
	.word	-28
	.word	4
	.word	_Label_951
	.word	-32
	.word	4
	.word	_Label_952
	.word	-36
	.word	4
	.word	_Label_953
	.word	-40
	.word	4
	.word	_Label_954
	.word	-44
	.word	4
	.word	_Label_955
	.word	-48
	.word	4
	.word	_Label_956
	.word	-52
	.word	4
	.word	_Label_957
	.word	-56
	.word	4
	.word	_Label_958
	.word	-60
	.word	4
	.word	_Label_959
	.word	-64
	.word	4
	.word	_Label_960
	.word	-68
	.word	4
	.word	_Label_961
	.word	-72
	.word	4
	.word	_Label_962
	.word	-76
	.word	4
	.word	_Label_963
	.word	-80
	.word	4
	.word	_Label_964
	.word	-84
	.word	4
	.word	_Label_965
	.word	-108
	.word	24
	.word	_Label_966
	.word	-112
	.word	4
	.word	_Label_967
	.word	-116
	.word	4
	.word	_Label_968
	.word	-120
	.word	4
	.word	0
_Label_944:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_945:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_964:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_965:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_966:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_967:
	.byte	'I'
	.ascii	"fileDescriptorEmptySlot\0"
	.align
_Label_968:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	78,r1
_Label_3997:
	push	r0
	sub	r1,1,r1
	bne	_Label_3997
	mov	1987,r13		! source line 1987
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_973		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_973
	jmp	_Label_969
_Label_973:
!   if fileDesc <= 9 then goto _Label_972		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_972
	jmp	_Label_969
_Label_972:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_976 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: _temp_975 = *_temp_976  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_975) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_977 = _temp_975 + 124
	load	[r14+-260],r1
	add	r1,124,r1
	store	r1,[r14+-252]
!   Move address of _temp_977 [fileDesc ] into _temp_978
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-252],r1
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
	store	r2,[r14+-248]
!   Data Move: _temp_974 = *_temp_978  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-264]
!   if intIsZero (_temp_974) then goto _Label_969
	load	[r14+-264],r1
	cmp	r1,r0
	be	_Label_969
!	jmp	_Label_971
_Label_971:
!   if sizeInBytes >= 0 then goto _Label_970		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_970
!	jmp	_Label_969
_Label_969:
! THEN...
	mov	2002,r13		! source line 2002
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_970:
! ASSIGNMENT STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2006,r13		! source line 2006
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-268],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-268],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2008,r13		! source line 2008
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2009,r13		! source line 2009
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_980 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-240]
!   Data Move: _temp_979 = *_temp_980  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   if intIsZero (_temp_979) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_981 = _temp_979 + 124
	load	[r14+-244],r1
	add	r1,124,r1
	store	r1,[r14+-236]
!   Move address of _temp_981 [fileDesc ] into _temp_982
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-236],r1
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
	store	r2,[r14+-232]
!   Data Move: openFile = *_temp_982  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_983 = openFile + 16
	load	[r14+-284],r1
	add	r1,16,r1
	store	r1,[r14+-228]
!   Data Move: nextPosInFile = *_temp_983  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_985 = openFile + 20
	load	[r14+-284],r1
	add	r1,20,r1
	store	r1,[r14+-220]
!   Data Move: _temp_984 = *_temp_985  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_984) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_986 = _temp_984 + 24
	load	[r14+-224],r1
	add	r1,24,r1
	store	r1,[r14+-216]
!   Data Move: sizeOfFile = *_temp_986  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-292]
! WHILE STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0WH",r10
_Label_987:
!	jmp	_Label_988
_Label_988:
	mov	2012,r13		! source line 2012
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-296]
! IF STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0IF",r10
!   _temp_992 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-288],r1
	load	[r14+-296],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   if _temp_992 <= sizeOfFile then goto _Label_991		(int)
	load	[r14+-212],r1
	load	[r14+-292],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_991
!	jmp	_Label_990
_Label_990:
! THEN...
	mov	2015,r13		! source line 2015
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2015,r13		! source line 2015
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-292],r1
	load	[r14+-288],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-296]
! END IF...
_Label_991:
! IF STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0IF",r10
!   _temp_995 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-296],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if _temp_995 <= sizeInBytes then goto _Label_994		(int)
	load	[r14+-208],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_994
!	jmp	_Label_993
_Label_993:
! THEN...
	mov	2018,r13		! source line 2018
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-296]
! END IF...
_Label_994:
! IF STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_997		(int)
	load	[r14+-296],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_997
!	jmp	_Label_996
_Label_996:
! THEN...
	mov	2022,r13		! source line 2022
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0BR",r10
	jmp	_Label_989
! END IF...
_Label_997:
! IF STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1002		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1002
	jmp	_Label_998
_Label_1002:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1006 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1005 = *_temp_1006  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_1005) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1007 = _temp_1005 + 32
	load	[r14+-196],r1
	add	r1,32,r1
	store	r1,[r14+-188]
!   _temp_1008 = _temp_1007 + 4
	load	[r14+-188],r1
	add	r1,4,r1
	store	r1,[r14+-184]
!   Data Move: _temp_1004 = *_temp_1008  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   _temp_1003 = _temp_1004 - 1		(int)
	load	[r14+-200],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if virtPage <= _temp_1003 then goto _Label_1001		(int)
	load	[r14+-272],r1
	load	[r14+-204],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1001
	jmp	_Label_998
_Label_1001:
	mov	2025,r13		! source line 2025
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1011 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_1010 = *_temp_1011  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_1010) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1012 = _temp_1010 + 32
	load	[r14+-180],r1
	add	r1,32,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1009  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1013 = _temp_1009 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1013 then goto _Label_1000 else goto _Label_998
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_998
	jmp	_Label_1000
_Label_1000:
	mov	2025,r13		! source line 2025
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1016 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-164]
!   Data Move: _temp_1015 = *_temp_1016  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1015) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1017 = _temp_1015 + 32
	load	[r14+-168],r1
	add	r1,32,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1014  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1018 = _temp_1014 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1018 then goto _Label_999 else goto _Label_998
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_998
	jmp	_Label_999
_Label_998:
! THEN...
	mov	2026,r13		! source line 2026
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_999:
! ASSIGNMENT STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-288],r1
	load	[r14+-296],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-296],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-272],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1020		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1020
!	jmp	_Label_1019
_Label_1019:
! THEN...
	mov	2035,r13		! source line 2035
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0BR",r10
	jmp	_Label_989
! END IF...
_Label_1020:
! END WHILE...
	jmp	_Label_987
_Label_989:
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-268],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-268],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1022 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: _temp_1021 = *_temp_1022  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_1021) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1023 = _temp_1021 + 124
	load	[r14+-156],r1
	add	r1,124,r1
	store	r1,[r14+-148]
!   Move address of _temp_1023 [fileDesc ] into _temp_1024
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Data Move: openFile = *_temp_1024  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1025 = openFile + 16
	load	[r14+-284],r1
	add	r1,16,r1
	store	r1,[r14+-140]
!   Data Move: nextPosInFile = *_temp_1025  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1027 = openFile + 20
	load	[r14+-284],r1
	add	r1,20,r1
	store	r1,[r14+-132]
!   Data Move: _temp_1026 = *_temp_1027  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_1026) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1028 = _temp_1026 + 24
	load	[r14+-136],r1
	add	r1,24,r1
	store	r1,[r14+-128]
!   Data Move: sizeOfFile = *_temp_1028  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-292]
! WHILE STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0WH",r10
_Label_1029:
!	jmp	_Label_1030
_Label_1030:
	mov	2048,r13		! source line 2048
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-296]
! IF STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0IF",r10
!   _temp_1034 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-288],r1
	load	[r14+-296],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   if _temp_1034 <= sizeOfFile then goto _Label_1033		(int)
	load	[r14+-124],r1
	load	[r14+-292],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1033
!	jmp	_Label_1032
_Label_1032:
! THEN...
	mov	2051,r13		! source line 2051
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-292],r1
	load	[r14+-288],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-296]
! END IF...
_Label_1033:
! IF STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0IF",r10
!   _temp_1037 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-296],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1037 <= sizeInBytes then goto _Label_1036		(int)
	load	[r14+-120],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1036
!	jmp	_Label_1035
_Label_1035:
! THEN...
	mov	2054,r13		! source line 2054
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-296]
! END IF...
_Label_1036:
! IF STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1039		(int)
	load	[r14+-296],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1039
!	jmp	_Label_1038
_Label_1038:
! THEN...
	mov	2058,r13		! source line 2058
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0BR",r10
	jmp	_Label_1031
! END IF...
_Label_1039:
! IF STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1044		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1044
	jmp	_Label_1040
_Label_1044:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1048 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1047 = *_temp_1048  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1047) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1049 = _temp_1047 + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-100]
!   _temp_1050 = _temp_1049 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1046 = *_temp_1050  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   _temp_1045 = _temp_1046 - 1		(int)
	load	[r14+-112],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if virtPage <= _temp_1045 then goto _Label_1043		(int)
	load	[r14+-272],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1043
	jmp	_Label_1040
_Label_1043:
	mov	2061,r13		! source line 2061
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1053 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1052 = *_temp_1053  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1052) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1054 = _temp_1052 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1051  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1055 = _temp_1051 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1055 then goto _Label_1042 else goto _Label_1040
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1040
	jmp	_Label_1042
_Label_1042:
	mov	2061,r13		! source line 2061
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1058 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1057 = *_temp_1058  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1057) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1059 = _temp_1057 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1056  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1060 = _temp_1056 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1060 then goto _Label_1041 else goto _Label_1040
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1040
	jmp	_Label_1041
_Label_1040:
! THEN...
	mov	2062,r13		! source line 2062
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1041:
! SEND STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1062 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1061 = *_temp_1062  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1061) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1063 = _temp_1061 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1065 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1064 = *_temp_1065  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1064) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1066 = _temp_1064 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
	mov	2067,r13		! source line 2067
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1069 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1068 = *_temp_1069  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1068) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1070 = _temp_1068 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1067  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   destAddr = _temp_1067 + offset		(int)
	load	[r14+-44],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-300]
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
	mov	2068,r13		! source line 2068
	mov	"\0\0SE",r10
!   _temp_1071 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunkSize  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=junk  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-17]
! ASSIGNMENT STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-288],r1
	load	[r14+-296],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-296],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-272],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1073		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1073
!	jmp	_Label_1072
_Label_1072:
! THEN...
	mov	2076,r13		! source line 2076
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0BR",r10
	jmp	_Label_1031
! END IF...
_Label_1073:
! END WHILE...
	jmp	_Label_1029
_Label_1031:
! ASSIGNMENT STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1074 = openFile + 16
	load	[r14+-284],r1
	add	r1,16,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1074 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r14+-24],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-280],r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1075
	.word	12		! total size of parameters
	.word	312		! frame size = 312
	.word	_Label_1076
	.word	8
	.word	4
	.word	_Label_1077
	.word	12
	.word	4
	.word	_Label_1078
	.word	16
	.word	4
	.word	_Label_1079
	.word	-24
	.word	4
	.word	_Label_1080
	.word	-28
	.word	4
	.word	_Label_1081
	.word	-32
	.word	4
	.word	_Label_1082
	.word	-36
	.word	4
	.word	_Label_1083
	.word	-40
	.word	4
	.word	_Label_1084
	.word	-44
	.word	4
	.word	_Label_1085
	.word	-48
	.word	4
	.word	_Label_1086
	.word	-52
	.word	4
	.word	_Label_1087
	.word	-56
	.word	4
	.word	_Label_1088
	.word	-60
	.word	4
	.word	_Label_1089
	.word	-64
	.word	4
	.word	_Label_1090
	.word	-68
	.word	4
	.word	_Label_1091
	.word	-9
	.word	1
	.word	_Label_1092
	.word	-72
	.word	4
	.word	_Label_1093
	.word	-76
	.word	4
	.word	_Label_1094
	.word	-80
	.word	4
	.word	_Label_1095
	.word	-10
	.word	1
	.word	_Label_1096
	.word	-11
	.word	1
	.word	_Label_1097
	.word	-84
	.word	4
	.word	_Label_1098
	.word	-88
	.word	4
	.word	_Label_1099
	.word	-92
	.word	4
	.word	_Label_1100
	.word	-12
	.word	1
	.word	_Label_1101
	.word	-96
	.word	4
	.word	_Label_1102
	.word	-100
	.word	4
	.word	_Label_1103
	.word	-104
	.word	4
	.word	_Label_1104
	.word	-108
	.word	4
	.word	_Label_1105
	.word	-112
	.word	4
	.word	_Label_1106
	.word	-116
	.word	4
	.word	_Label_1107
	.word	-120
	.word	4
	.word	_Label_1108
	.word	-124
	.word	4
	.word	_Label_1109
	.word	-128
	.word	4
	.word	_Label_1110
	.word	-132
	.word	4
	.word	_Label_1111
	.word	-136
	.word	4
	.word	_Label_1112
	.word	-140
	.word	4
	.word	_Label_1113
	.word	-144
	.word	4
	.word	_Label_1114
	.word	-148
	.word	4
	.word	_Label_1115
	.word	-152
	.word	4
	.word	_Label_1116
	.word	-156
	.word	4
	.word	_Label_1117
	.word	-13
	.word	1
	.word	_Label_1118
	.word	-160
	.word	4
	.word	_Label_1119
	.word	-164
	.word	4
	.word	_Label_1120
	.word	-168
	.word	4
	.word	_Label_1121
	.word	-14
	.word	1
	.word	_Label_1122
	.word	-15
	.word	1
	.word	_Label_1123
	.word	-172
	.word	4
	.word	_Label_1124
	.word	-176
	.word	4
	.word	_Label_1125
	.word	-180
	.word	4
	.word	_Label_1126
	.word	-16
	.word	1
	.word	_Label_1127
	.word	-184
	.word	4
	.word	_Label_1128
	.word	-188
	.word	4
	.word	_Label_1129
	.word	-192
	.word	4
	.word	_Label_1130
	.word	-196
	.word	4
	.word	_Label_1131
	.word	-200
	.word	4
	.word	_Label_1132
	.word	-204
	.word	4
	.word	_Label_1133
	.word	-208
	.word	4
	.word	_Label_1134
	.word	-212
	.word	4
	.word	_Label_1135
	.word	-216
	.word	4
	.word	_Label_1136
	.word	-220
	.word	4
	.word	_Label_1137
	.word	-224
	.word	4
	.word	_Label_1138
	.word	-228
	.word	4
	.word	_Label_1139
	.word	-232
	.word	4
	.word	_Label_1140
	.word	-236
	.word	4
	.word	_Label_1141
	.word	-240
	.word	4
	.word	_Label_1142
	.word	-244
	.word	4
	.word	_Label_1143
	.word	-248
	.word	4
	.word	_Label_1144
	.word	-252
	.word	4
	.word	_Label_1145
	.word	-256
	.word	4
	.word	_Label_1146
	.word	-260
	.word	4
	.word	_Label_1147
	.word	-264
	.word	4
	.word	_Label_1148
	.word	-268
	.word	4
	.word	_Label_1149
	.word	-272
	.word	4
	.word	_Label_1150
	.word	-276
	.word	4
	.word	_Label_1151
	.word	-280
	.word	4
	.word	_Label_1152
	.word	-284
	.word	4
	.word	_Label_1153
	.word	-288
	.word	4
	.word	_Label_1154
	.word	-292
	.word	4
	.word	_Label_1155
	.word	-296
	.word	4
	.word	_Label_1156
	.word	-300
	.word	4
	.word	_Label_1157
	.word	-17
	.word	1
	.word	0
_Label_1075:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1076:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1077:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1078:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1091:
	.byte	'C'
	.ascii	"_temp_1060\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1095:
	.byte	'C'
	.ascii	"_temp_1056\0"
	.align
_Label_1096:
	.byte	'C'
	.ascii	"_temp_1055\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1100:
	.byte	'C'
	.ascii	"_temp_1051\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1117:
	.byte	'C'
	.ascii	"_temp_1018\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1121:
	.byte	'C'
	.ascii	"_temp_1014\0"
	.align
_Label_1122:
	.byte	'C'
	.ascii	"_temp_1013\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1126:
	.byte	'C'
	.ascii	"_temp_1009\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1148:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1149:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1150:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1151:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1152:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1153:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1154:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1155:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1156:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1157:
	.byte	'B'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	75,r1
_Label_3998:
	push	r0
	sub	r1,1,r1
	bne	_Label_3998
	mov	2086,r13		! source line 2086
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1162		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1162
	jmp	_Label_1158
_Label_1162:
!   if fileDesc <= 9 then goto _Label_1161		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1161
	jmp	_Label_1158
_Label_1161:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1165 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-244]
!   Data Move: _temp_1164 = *_temp_1165  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   if intIsZero (_temp_1164) then goto _runtimeErrorNullPointer
	load	[r14+-248],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1166 = _temp_1164 + 124
	load	[r14+-248],r1
	add	r1,124,r1
	store	r1,[r14+-240]
!   Move address of _temp_1166 [fileDesc ] into _temp_1167
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-240],r1
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
	store	r2,[r14+-236]
!   Data Move: _temp_1163 = *_temp_1167  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_1163) then goto _Label_1158
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_1158
!	jmp	_Label_1160
_Label_1160:
!   if sizeInBytes >= 0 then goto _Label_1159		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1159
!	jmp	_Label_1158
_Label_1158:
! THEN...
	mov	2101,r13		! source line 2101
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,304,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1159:
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-256],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-256],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1169 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-228]
!   Data Move: _temp_1168 = *_temp_1169  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_1168) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1170 = _temp_1168 + 124
	load	[r14+-232],r1
	add	r1,124,r1
	store	r1,[r14+-224]
!   Move address of _temp_1170 [fileDesc ] into _temp_1171
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-224],r1
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
	store	r2,[r14+-220]
!   Data Move: openFile = *_temp_1171  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1172 = openFile + 16
	load	[r14+-272],r1
	add	r1,16,r1
	store	r1,[r14+-216]
!   Data Move: nextPosInFile = *_temp_1172  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1174 = openFile + 20
	load	[r14+-272],r1
	add	r1,20,r1
	store	r1,[r14+-208]
!   Data Move: _temp_1173 = *_temp_1174  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_1173) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1175 = _temp_1173 + 24
	load	[r14+-212],r1
	add	r1,24,r1
	store	r1,[r14+-204]
!   Data Move: sizeOfFile = *_temp_1175  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-280]
! WHILE STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0WH",r10
_Label_1176:
!	jmp	_Label_1177
_Label_1177:
	mov	2111,r13		! source line 2111
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-264],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
! IF STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0IF",r10
!   _temp_1181 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-284],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
!   if _temp_1181 <= sizeOfFile then goto _Label_1180		(int)
	load	[r14+-200],r1
	load	[r14+-280],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1180
!	jmp	_Label_1179
_Label_1179:
! THEN...
	mov	2114,r13		! source line 2114
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-280],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
! END IF...
_Label_1180:
! IF STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0IF",r10
!   _temp_1184 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-284],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
!   if _temp_1184 <= sizeInBytes then goto _Label_1183		(int)
	load	[r14+-196],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1183
!	jmp	_Label_1182
_Label_1182:
! THEN...
	mov	2117,r13		! source line 2117
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
! END IF...
_Label_1183:
! IF STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1186		(int)
	load	[r14+-284],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1186
!	jmp	_Label_1185
_Label_1185:
! THEN...
	mov	2121,r13		! source line 2121
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0BR",r10
	jmp	_Label_1178
! END IF...
_Label_1186:
! IF STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1191		(int)
	load	[r14+-260],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1191
	jmp	_Label_1187
_Label_1191:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1195 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1194 = *_temp_1195  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_1194) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1196 = _temp_1194 + 32
	load	[r14+-184],r1
	add	r1,32,r1
	store	r1,[r14+-176]
!   _temp_1197 = _temp_1196 + 4
	load	[r14+-176],r1
	add	r1,4,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1193 = *_temp_1197  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   _temp_1192 = _temp_1193 - 1		(int)
	load	[r14+-188],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
!   if virtPage <= _temp_1192 then goto _Label_1190		(int)
	load	[r14+-260],r1
	load	[r14+-192],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1190
	jmp	_Label_1187
_Label_1190:
	mov	2124,r13		! source line 2124
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1200 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-164]
!   Data Move: _temp_1199 = *_temp_1200  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1199) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1201 = _temp_1199 + 32
	load	[r14+-168],r1
	add	r1,32,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1198  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1202 = _temp_1198 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1202 then goto _Label_1189 else goto _Label_1187
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1187
	jmp	_Label_1189
_Label_1189:
	mov	2124,r13		! source line 2124
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1205 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: _temp_1204 = *_temp_1205  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_1204) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1206 = _temp_1204 + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1203  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1207 = _temp_1203 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1207 then goto _Label_1188 else goto _Label_1187
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1187
	jmp	_Label_1188
_Label_1187:
! THEN...
	mov	2125,r13		! source line 2125
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,304,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1188:
! ASSIGNMENT STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-284],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-284],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-260],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1209		(int)
	load	[r14+-268],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1209
!	jmp	_Label_1208
_Label_1208:
! THEN...
	mov	2134,r13		! source line 2134
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0BR",r10
	jmp	_Label_1178
! END IF...
_Label_1209:
! END WHILE...
	jmp	_Label_1176
_Label_1178:
! ASSIGNMENT STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-256],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-256],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1211 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1210 = *_temp_1211  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1210) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1212 = _temp_1210 + 124
	load	[r14+-144],r1
	add	r1,124,r1
	store	r1,[r14+-136]
!   Move address of _temp_1212 [fileDesc ] into _temp_1213
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Data Move: openFile = *_temp_1213  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1214 = openFile + 16
	load	[r14+-272],r1
	add	r1,16,r1
	store	r1,[r14+-128]
!   Data Move: nextPosInFile = *_temp_1214  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1216 = openFile + 20
	load	[r14+-272],r1
	add	r1,20,r1
	store	r1,[r14+-120]
!   Data Move: _temp_1215 = *_temp_1216  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_1215) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1217 = _temp_1215 + 24
	load	[r14+-124],r1
	add	r1,24,r1
	store	r1,[r14+-116]
!   Data Move: sizeOfFile = *_temp_1217  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-280]
! WHILE STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0WH",r10
_Label_1218:
!	jmp	_Label_1219
_Label_1219:
	mov	2146,r13		! source line 2146
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-264],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
! IF STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0IF",r10
!   _temp_1223 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-284],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if _temp_1223 <= sizeOfFile then goto _Label_1222		(int)
	load	[r14+-112],r1
	load	[r14+-280],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1222
!	jmp	_Label_1221
_Label_1221:
! THEN...
	mov	2149,r13		! source line 2149
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-280],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
! END IF...
_Label_1222:
! IF STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0IF",r10
!   _temp_1226 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-284],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
!   if _temp_1226 <= sizeInBytes then goto _Label_1225		(int)
	load	[r14+-108],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1225
!	jmp	_Label_1224
_Label_1224:
! THEN...
	mov	2152,r13		! source line 2152
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
! END IF...
_Label_1225:
! IF STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1228		(int)
	load	[r14+-284],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1228
!	jmp	_Label_1227
_Label_1227:
! THEN...
	mov	2156,r13		! source line 2156
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0BR",r10
	jmp	_Label_1220
! END IF...
_Label_1228:
! IF STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1233		(int)
	load	[r14+-260],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1233
	jmp	_Label_1229
_Label_1233:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1237 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1236 = *_temp_1237  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1236) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1238 = _temp_1236 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   _temp_1239 = _temp_1238 + 4
	load	[r14+-88],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1235 = *_temp_1239  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   _temp_1234 = _temp_1235 - 1		(int)
	load	[r14+-100],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
!   if virtPage <= _temp_1234 then goto _Label_1232		(int)
	load	[r14+-260],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1232
	jmp	_Label_1229
_Label_1232:
	mov	2159,r13		! source line 2159
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1242 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1241 = *_temp_1242  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1241) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1243 = _temp_1241 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1240  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1244 = _temp_1240 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1244 then goto _Label_1231 else goto _Label_1229
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1229
	jmp	_Label_1231
_Label_1231:
	mov	2159,r13		! source line 2159
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1247 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1246 = *_temp_1247  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1246) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1248 = _temp_1246 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1245  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1249 = _temp_1245 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1249 then goto _Label_1230 else goto _Label_1229
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1229
	jmp	_Label_1230
_Label_1229:
! THEN...
	mov	2160,r13		! source line 2160
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,304,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1230:
! SEND STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1251 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1250 = *_temp_1251  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1250) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1252 = _temp_1250 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0AS",r10
	mov	2164,r13		! source line 2164
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1255 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1254 = *_temp_1255  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1254) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1256 = _temp_1254 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1253  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   destAddr = _temp_1253 + offset		(int)
	load	[r14+-44],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0AS",r10
	mov	2165,r13		! source line 2165
	mov	"\0\0SE",r10
!   _temp_1257 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunkSize  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=junk  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-17]
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-284],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-284],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-260],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1259		(int)
	load	[r14+-268],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1259
!	jmp	_Label_1258
_Label_1258:
! THEN...
	mov	2173,r13		! source line 2173
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0BR",r10
	jmp	_Label_1220
! END IF...
_Label_1259:
! END WHILE...
	jmp	_Label_1218
_Label_1220:
! ASSIGNMENT STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1260 = openFile + 16
	load	[r14+-272],r1
	add	r1,16,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1260 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-276],r1
	load	[r14+-24],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-268],r1
	store	r1,[r14+8]
	add	r15,304,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1261
	.word	12		! total size of parameters
	.word	300		! frame size = 300
	.word	_Label_1262
	.word	8
	.word	4
	.word	_Label_1263
	.word	12
	.word	4
	.word	_Label_1264
	.word	16
	.word	4
	.word	_Label_1265
	.word	-24
	.word	4
	.word	_Label_1266
	.word	-28
	.word	4
	.word	_Label_1267
	.word	-32
	.word	4
	.word	_Label_1268
	.word	-36
	.word	4
	.word	_Label_1269
	.word	-40
	.word	4
	.word	_Label_1270
	.word	-44
	.word	4
	.word	_Label_1271
	.word	-48
	.word	4
	.word	_Label_1272
	.word	-52
	.word	4
	.word	_Label_1273
	.word	-56
	.word	4
	.word	_Label_1274
	.word	-9
	.word	1
	.word	_Label_1275
	.word	-60
	.word	4
	.word	_Label_1276
	.word	-64
	.word	4
	.word	_Label_1277
	.word	-68
	.word	4
	.word	_Label_1278
	.word	-10
	.word	1
	.word	_Label_1279
	.word	-11
	.word	1
	.word	_Label_1280
	.word	-72
	.word	4
	.word	_Label_1281
	.word	-76
	.word	4
	.word	_Label_1282
	.word	-80
	.word	4
	.word	_Label_1283
	.word	-12
	.word	1
	.word	_Label_1284
	.word	-84
	.word	4
	.word	_Label_1285
	.word	-88
	.word	4
	.word	_Label_1286
	.word	-92
	.word	4
	.word	_Label_1287
	.word	-96
	.word	4
	.word	_Label_1288
	.word	-100
	.word	4
	.word	_Label_1289
	.word	-104
	.word	4
	.word	_Label_1290
	.word	-108
	.word	4
	.word	_Label_1291
	.word	-112
	.word	4
	.word	_Label_1292
	.word	-116
	.word	4
	.word	_Label_1293
	.word	-120
	.word	4
	.word	_Label_1294
	.word	-124
	.word	4
	.word	_Label_1295
	.word	-128
	.word	4
	.word	_Label_1296
	.word	-132
	.word	4
	.word	_Label_1297
	.word	-136
	.word	4
	.word	_Label_1298
	.word	-140
	.word	4
	.word	_Label_1299
	.word	-144
	.word	4
	.word	_Label_1300
	.word	-13
	.word	1
	.word	_Label_1301
	.word	-148
	.word	4
	.word	_Label_1302
	.word	-152
	.word	4
	.word	_Label_1303
	.word	-156
	.word	4
	.word	_Label_1304
	.word	-14
	.word	1
	.word	_Label_1305
	.word	-15
	.word	1
	.word	_Label_1306
	.word	-160
	.word	4
	.word	_Label_1307
	.word	-164
	.word	4
	.word	_Label_1308
	.word	-168
	.word	4
	.word	_Label_1309
	.word	-16
	.word	1
	.word	_Label_1310
	.word	-172
	.word	4
	.word	_Label_1311
	.word	-176
	.word	4
	.word	_Label_1312
	.word	-180
	.word	4
	.word	_Label_1313
	.word	-184
	.word	4
	.word	_Label_1314
	.word	-188
	.word	4
	.word	_Label_1315
	.word	-192
	.word	4
	.word	_Label_1316
	.word	-196
	.word	4
	.word	_Label_1317
	.word	-200
	.word	4
	.word	_Label_1318
	.word	-204
	.word	4
	.word	_Label_1319
	.word	-208
	.word	4
	.word	_Label_1320
	.word	-212
	.word	4
	.word	_Label_1321
	.word	-216
	.word	4
	.word	_Label_1322
	.word	-220
	.word	4
	.word	_Label_1323
	.word	-224
	.word	4
	.word	_Label_1324
	.word	-228
	.word	4
	.word	_Label_1325
	.word	-232
	.word	4
	.word	_Label_1326
	.word	-236
	.word	4
	.word	_Label_1327
	.word	-240
	.word	4
	.word	_Label_1328
	.word	-244
	.word	4
	.word	_Label_1329
	.word	-248
	.word	4
	.word	_Label_1330
	.word	-252
	.word	4
	.word	_Label_1331
	.word	-256
	.word	4
	.word	_Label_1332
	.word	-260
	.word	4
	.word	_Label_1333
	.word	-264
	.word	4
	.word	_Label_1334
	.word	-268
	.word	4
	.word	_Label_1335
	.word	-272
	.word	4
	.word	_Label_1336
	.word	-276
	.word	4
	.word	_Label_1337
	.word	-280
	.word	4
	.word	_Label_1338
	.word	-284
	.word	4
	.word	_Label_1339
	.word	-288
	.word	4
	.word	_Label_1340
	.word	-17
	.word	1
	.word	0
_Label_1261:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1262:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1263:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1264:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1274:
	.byte	'C'
	.ascii	"_temp_1249\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1278:
	.byte	'C'
	.ascii	"_temp_1245\0"
	.align
_Label_1279:
	.byte	'C'
	.ascii	"_temp_1244\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1283:
	.byte	'C'
	.ascii	"_temp_1240\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1300:
	.byte	'C'
	.ascii	"_temp_1207\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1304:
	.byte	'C'
	.ascii	"_temp_1203\0"
	.align
_Label_1305:
	.byte	'C'
	.ascii	"_temp_1202\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1309:
	.byte	'C'
	.ascii	"_temp_1198\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1331:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1332:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1333:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1334:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1335:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1336:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1337:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1338:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1339:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1340:
	.byte	'B'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	44,r1
_Label_3999:
	push	r0
	sub	r1,1,r1
	bne	_Label_3999
	mov	2183,r13		! source line 2183
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0SE",r10
!   _temp_1341 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-176]
!   _temp_1342 = _temp_1341 + 4
	load	[r14+-176],r1
	add	r1,4,r1
	store	r1,[r14+-172]
!   Send message Lock
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1345		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1345
	jmp	_Label_1343
_Label_1345:
!   if fileDesc <= 9 then goto _Label_1344		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1344
!	jmp	_Label_1343
_Label_1343:
! THEN...
	mov	2191,r13		! source line 2191
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0SE",r10
!   _temp_1346 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-168]
!   _temp_1347 = _temp_1346 + 4
	load	[r14+-168],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Send message Unlock
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,180,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1344:
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1349 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1348 = *_temp_1349  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_1348) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1350 = _temp_1348 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_1350 [fileDesc ] into _temp_1351
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
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
	store	r2,[r14+-148]
!   Data Move: openFile = *_temp_1351  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-180]
! IF STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1356 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1355 = *_temp_1356  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1355) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1357 = _temp_1355 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1357 [fileDesc ] into _temp_1358
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-132],r1
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
	store	r2,[r14+-128]
!   Data Move: _temp_1354 = *_temp_1358  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1354) then goto _Label_1352
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_1352
	jmp	_Label_1353
_Label_1352:
! THEN...
	mov	2197,r13		! source line 2197
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0SE",r10
!   _temp_1359 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-124]
!   _temp_1360 = _temp_1359 + 4
	load	[r14+-124],r1
	add	r1,4,r1
	store	r1,[r14+-120]
!   Send message Unlock
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,180,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1353:
! IF STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1362		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1362
!	jmp	_Label_1361
_Label_1361:
! THEN...
	mov	2202,r13		! source line 2202
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1363 = openFile + 16
	load	[r14+-180],r1
	add	r1,16,r1
	store	r1,[r14+-116]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1366 = openFile + 20
	load	[r14+-180],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1365 = *_temp_1366  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1365) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1367 = _temp_1365 + 24
	load	[r14+-108],r1
	add	r1,24,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1364 = *_temp_1367  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   Data Move: *_temp_1363 = _temp_1364  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-116],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0SE",r10
!   _temp_1368 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-96]
!   _temp_1369 = _temp_1368 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Send message Unlock
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0RE",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1372 = openFile + 20
	load	[r14+-180],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1371 = *_temp_1372  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1371) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1373 = _temp_1371 + 24
	load	[r14+-84],r1
	add	r1,24,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1370 = *_temp_1373  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   ReturnResult: _temp_1370  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+8]
	add	r15,180,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1362:
! IF STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0IF",r10
!   if newCurrentPos >= -1 then goto _Label_1375		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1375
!	jmp	_Label_1374
_Label_1374:
! THEN...
	mov	2208,r13		! source line 2208
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0SE",r10
!   _temp_1376 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   _temp_1377 = _temp_1376 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Send message Unlock
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,180,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1375:
! IF STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1384 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1383 = *_temp_1384  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1383) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1385 = _temp_1383 + 124
	load	[r14+-52],r1
	add	r1,124,r1
	store	r1,[r14+-44]
!   Move address of _temp_1385 [fileDesc ] into _temp_1386
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1382 = *_temp_1386  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1382) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1387 = _temp_1382 + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1381 = *_temp_1387  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1381) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1388 = _temp_1381 + 24
	load	[r14+-60],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1380 = *_temp_1388  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if newCurrentPos <= _temp_1380 then goto _Label_1379		(int)
	load	[r14+12],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1379
!	jmp	_Label_1378
_Label_1378:
! THEN...
	mov	2213,r13		! source line 2213
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0SE",r10
!   _temp_1389 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_1390 = _temp_1389 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,180,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1379:
! ASSIGNMENT STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1391 = openFile + 16
	load	[r14+-180],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1391 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0SE",r10
!   _temp_1392 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1393 = _temp_1392 + 4
	load	[r14+-16],r1
	add	r1,4,r1
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
	mov	2219,r13		! source line 2219
	mov	"\0\0RE",r10
!   ReturnResult: newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,180,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_1394
	.word	8		! total size of parameters
	.word	176		! frame size = 176
	.word	_Label_1395
	.word	8
	.word	4
	.word	_Label_1396
	.word	12
	.word	4
	.word	_Label_1397
	.word	-12
	.word	4
	.word	_Label_1398
	.word	-16
	.word	4
	.word	_Label_1399
	.word	-20
	.word	4
	.word	_Label_1400
	.word	-24
	.word	4
	.word	_Label_1401
	.word	-28
	.word	4
	.word	_Label_1402
	.word	-32
	.word	4
	.word	_Label_1403
	.word	-36
	.word	4
	.word	_Label_1404
	.word	-40
	.word	4
	.word	_Label_1405
	.word	-44
	.word	4
	.word	_Label_1406
	.word	-48
	.word	4
	.word	_Label_1407
	.word	-52
	.word	4
	.word	_Label_1408
	.word	-56
	.word	4
	.word	_Label_1409
	.word	-60
	.word	4
	.word	_Label_1410
	.word	-64
	.word	4
	.word	_Label_1411
	.word	-68
	.word	4
	.word	_Label_1412
	.word	-72
	.word	4
	.word	_Label_1413
	.word	-76
	.word	4
	.word	_Label_1414
	.word	-80
	.word	4
	.word	_Label_1415
	.word	-84
	.word	4
	.word	_Label_1416
	.word	-88
	.word	4
	.word	_Label_1417
	.word	-92
	.word	4
	.word	_Label_1418
	.word	-96
	.word	4
	.word	_Label_1419
	.word	-100
	.word	4
	.word	_Label_1420
	.word	-104
	.word	4
	.word	_Label_1421
	.word	-108
	.word	4
	.word	_Label_1422
	.word	-112
	.word	4
	.word	_Label_1423
	.word	-116
	.word	4
	.word	_Label_1424
	.word	-120
	.word	4
	.word	_Label_1425
	.word	-124
	.word	4
	.word	_Label_1426
	.word	-128
	.word	4
	.word	_Label_1427
	.word	-132
	.word	4
	.word	_Label_1428
	.word	-136
	.word	4
	.word	_Label_1429
	.word	-140
	.word	4
	.word	_Label_1430
	.word	-144
	.word	4
	.word	_Label_1431
	.word	-148
	.word	4
	.word	_Label_1432
	.word	-152
	.word	4
	.word	_Label_1433
	.word	-156
	.word	4
	.word	_Label_1434
	.word	-160
	.word	4
	.word	_Label_1435
	.word	-164
	.word	4
	.word	_Label_1436
	.word	-168
	.word	4
	.word	_Label_1437
	.word	-172
	.word	4
	.word	_Label_1438
	.word	-176
	.word	4
	.word	_Label_1439
	.word	-180
	.word	4
	.word	0
_Label_1394:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1395:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1396:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1439:
	.byte	'P'
	.ascii	"openFile\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	17,r1
_Label_4000:
	push	r0
	sub	r1,1,r1
	bne	_Label_4000
	mov	2225,r13		! source line 2225
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1443		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1443
	jmp	_Label_1440
_Label_1443:
!   if fileDesc <= 9 then goto _Label_1442		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1442
	jmp	_Label_1440
_Label_1442:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1446 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1445 = *_temp_1446  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1445) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1447 = _temp_1445 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1447 [fileDesc ] into _temp_1448
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1444 = *_temp_1448  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1444) then goto _Label_1440
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1440
	jmp	_Label_1441
_Label_1440:
	jmp	_Label_1449
_Label_1441:
! ELSE...
	mov	2229,r13		! source line 2229
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1452 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1451 = *_temp_1452  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1451) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1453 = _temp_1451 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1453 [fileDesc ] into _temp_1454
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1450 = *_temp_1454  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1455 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1450  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1457 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1456 = *_temp_1457  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1456) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1458 = _temp_1456 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1458 [fileDesc ] into _temp_1459
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: *_temp_1459 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1449:
! RETURN STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1460
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1461
	.word	8
	.word	4
	.word	_Label_1462
	.word	-12
	.word	4
	.word	_Label_1463
	.word	-16
	.word	4
	.word	_Label_1464
	.word	-20
	.word	4
	.word	_Label_1465
	.word	-24
	.word	4
	.word	_Label_1466
	.word	-28
	.word	4
	.word	_Label_1467
	.word	-32
	.word	4
	.word	_Label_1468
	.word	-36
	.word	4
	.word	_Label_1469
	.word	-40
	.word	4
	.word	_Label_1470
	.word	-44
	.word	4
	.word	_Label_1471
	.word	-48
	.word	4
	.word	_Label_1472
	.word	-52
	.word	4
	.word	_Label_1473
	.word	-56
	.word	4
	.word	_Label_1474
	.word	-60
	.word	4
	.word	_Label_1475
	.word	-64
	.word	4
	.word	_Label_1476
	.word	-68
	.word	4
	.word	0
_Label_1460:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1461:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_187_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_187_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_4001:
	push	r0
	sub	r1,1,r1
	bne	_Label_4001
	mov	2823,r13		! source line 2823
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2826,r13		! source line 2826
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2827,r13		! source line 2827
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1477 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1477  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0AS",r10
!   _temp_1478 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1478) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1480 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1480) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1479 = *_temp_1480  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1478 = _temp_1479  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0AS",r10
!   _temp_1481 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1481) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1483 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1483) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1482 = *_temp_1483  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1481 = _temp_1482  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0AS",r10
!   _temp_1484 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1484) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1486 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1486) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1485 = *_temp_1486  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1484 = _temp_1485  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_187_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1487
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1488
	.word	8
	.word	4
	.word	_Label_1489
	.word	12
	.word	4
	.word	_Label_1490
	.word	-16
	.word	4
	.word	_Label_1491
	.word	-9
	.word	1
	.word	_Label_1492
	.word	-20
	.word	4
	.word	_Label_1493
	.word	-24
	.word	4
	.word	_Label_1494
	.word	-10
	.word	1
	.word	_Label_1495
	.word	-28
	.word	4
	.word	_Label_1496
	.word	-32
	.word	4
	.word	_Label_1497
	.word	-11
	.word	1
	.word	_Label_1498
	.word	-36
	.word	4
	.word	_Label_1499
	.word	-12
	.word	1
	.word	_Label_1500
	.word	-40
	.word	4
	.word	_Label_1501
	.word	-44
	.word	4
	.word	0
_Label_1487:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1488:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1489:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1491:
	.byte	'C'
	.ascii	"_temp_1485\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1494:
	.byte	'C'
	.ascii	"_temp_1482\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1497:
	.byte	'C'
	.ascii	"_temp_1479\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1499:
	.byte	'C'
	.ascii	"_temp_1477\0"
	.align
_Label_1500:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1501:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_186_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_186_printFCB,r1
	push	r1
	mov	3,r1
_Label_4002:
	push	r0
	sub	r1,1,r1
	bne	_Label_4002
	mov	2833,r13		! source line 2833
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1503 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1502 = *_temp_1503  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1502  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2834,r13		! source line 2834
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2835,r13		! source line 2835
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_186_printFCB:
	.word	_sourceFileName
	.word	_Label_1504
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1505
	.word	8
	.word	4
	.word	_Label_1506
	.word	-12
	.word	4
	.word	_Label_1507
	.word	-16
	.word	4
	.word	0
_Label_1504:
	.ascii	"printFCB\0"
	.align
_Label_1505:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_185_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_185_printOpen,r1
	push	r1
	mov	4,r1
_Label_4003:
	push	r0
	sub	r1,1,r1
	bne	_Label_4003
	mov	2838,r13		! source line 2838
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1508 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1508  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2839,r13		! source line 2839
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1509 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1509  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2840,r13		! source line 2840
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1510 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2841,r13		! source line 2841
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2842,r13		! source line 2842
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2842,r13		! source line 2842
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_185_printOpen:
	.word	_sourceFileName
	.word	_Label_1511
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1512
	.word	8
	.word	4
	.word	_Label_1513
	.word	-12
	.word	4
	.word	_Label_1514
	.word	-16
	.word	4
	.word	_Label_1515
	.word	-20
	.word	4
	.word	0
_Label_1511:
	.ascii	"printOpen\0"
	.align
_Label_1512:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	8,r1
_Label_4004:
	push	r0
	sub	r1,1,r1
	bne	_Label_4004
	mov	3105,r13		! source line 3105
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1516 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1516  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3109,r13		! source line 3109
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	3110,r13		! source line 3110
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	3111,r13		! source line 3111
	mov	"\0\0AS",r10
	mov	3111,r13		! source line 3111
	mov	"\0\0SE",r10
!   _temp_1517 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! SEND STATEMENT...
	mov	3112,r13		! source line 3112
	mov	"\0\0SE",r10
!   _temp_1518 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1518  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	3113,r13		! source line 3113
	mov	"\0\0SE",r10
!   _temp_1519 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1519  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	3113,r13		! source line 3113
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_1520
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1521
	.word	-12
	.word	4
	.word	_Label_1522
	.word	-16
	.word	4
	.word	_Label_1523
	.word	-20
	.word	4
	.word	_Label_1524
	.word	-24
	.word	4
	.word	_Label_1525
	.word	-28
	.word	4
	.word	0
_Label_1520:
	.ascii	"InitFirstProcess\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1525:
	.byte	'P'
	.ascii	"newThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_P_Kernel_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_4005:
	push	r0
	sub	r1,1,r1
	bne	_Label_4005
	mov	3119,r13		! source line 3119
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3129,r13		! source line 3129
	mov	"\0\0AS",r10
	mov	3129,r13		! source line 3129
	mov	"\0\0SE",r10
!   _temp_1526 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-72]
!   Send message GetANewProcess
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	3130,r13		! source line 3130
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1527 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_1527 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3131,r13		! source line 3131
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1528 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_1528 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3132,r13		! source line 3132
	mov	"\0\0AS",r10
	mov	3132,r13		! source line 3132
	mov	"\0\0SE",r10
!   _temp_1529 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-60]
!   _temp_1530 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1529  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newOpenFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	3133,r13		! source line 3133
	mov	"\0\0AS",r10
	mov	3133,r13		! source line 3133
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1532 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_1531 = _temp_1532		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (newOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1531  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=PC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! SEND STATEMENT...
	mov	3134,r13		! source line 3134
	mov	"\0\0SE",r10
!   _temp_1533 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=newOpenFile  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3135,r13		! source line 3135
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1535 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_1536 = _temp_1535 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1534 = *_temp_1536  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUStack = _temp_1534 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	3136,r13		! source line 3136
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1537 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_1537 [999 ] into _temp_1538
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSStack = _temp_1538		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	3138,r13		! source line 3138
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	3138,r13		! source line 3138
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! SEND STATEMENT...
	mov	3139,r13		! source line 3139
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1539 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3140,r13		! source line 3140
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1540 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1540 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_1541 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1541  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3141,r13		! source line 3141
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUStack  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=PC  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSStack  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Call the function
	mov	3142,r13		! source line 3142
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	3142,r13		! source line 3142
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_1542
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1543
	.word	8
	.word	4
	.word	_Label_1544
	.word	-12
	.word	4
	.word	_Label_1545
	.word	-16
	.word	4
	.word	_Label_1546
	.word	-20
	.word	4
	.word	_Label_1547
	.word	-24
	.word	4
	.word	_Label_1548
	.word	-28
	.word	4
	.word	_Label_1549
	.word	-32
	.word	4
	.word	_Label_1550
	.word	-36
	.word	4
	.word	_Label_1551
	.word	-40
	.word	4
	.word	_Label_1552
	.word	-44
	.word	4
	.word	_Label_1553
	.word	-48
	.word	4
	.word	_Label_1554
	.word	-52
	.word	4
	.word	_Label_1555
	.word	-56
	.word	4
	.word	_Label_1556
	.word	-60
	.word	4
	.word	_Label_1557
	.word	-64
	.word	4
	.word	_Label_1558
	.word	-68
	.word	4
	.word	_Label_1559
	.word	-72
	.word	4
	.word	_Label_1560
	.word	-76
	.word	4
	.word	_Label_1561
	.word	-80
	.word	4
	.word	_Label_1562
	.word	-84
	.word	4
	.word	_Label_1563
	.word	-88
	.word	4
	.word	_Label_1564
	.word	-92
	.word	4
	.word	_Label_1565
	.word	-96
	.word	4
	.word	0
_Label_1542:
	.ascii	"StartUserProcess\0"
	.align
_Label_1543:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1560:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_1561:
	.byte	'P'
	.ascii	"newOpenFile\0"
	.align
_Label_1562:
	.byte	'I'
	.ascii	"PC\0"
	.align
_Label_1563:
	.byte	'I'
	.ascii	"initUStack\0"
	.align
_Label_1564:
	.byte	'I'
	.ascii	"initSStack\0"
	.align
_Label_1565:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1566
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1566:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1567
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1567:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_4006:
	push	r0
	sub	r1,1,r1
	bne	_Label_4006
	mov	231,r13		! source line 231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1569		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1569
!	jmp	_Label_1568
_Label_1568:
! THEN...
	mov	233,r13		! source line 233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1570 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1570  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	233,r13		! source line 233
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1569:
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
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
	mov	236,r13		! source line 236
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_1572
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1573
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1574
	.word	12
	.word	4
	.word	_Label_1575
	.word	-12
	.word	4
	.word	_Label_1576
	.word	-16
	.word	4
	.word	0
_Label_1572:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1573:
	.ascii	"Pself\0"
	.align
_Label_1574:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_4007:
	push	r0
	sub	r1,1,r1
	bne	_Label_4007
	mov	241,r13		! source line 241
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_1578		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1578
!	jmp	_Label_1577
_Label_1577:
! THEN...
	mov	247,r13		! source line 247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1579 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1579  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	247,r13		! source line 247
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1578:
! ASSIGNMENT STATEMENT...
	mov	249,r13		! source line 249
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
	mov	250,r13		! source line 250
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_1581		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1581
!	jmp	_Label_1580
_Label_1580:
! THEN...
	mov	251,r13		! source line 251
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
!   _temp_1582 = &waitingThreads
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
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1583 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1583 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_1584 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
_Label_1581:
! ASSIGNMENT STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	255,r13		! source line 255
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_1585
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1586
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1587
	.word	-12
	.word	4
	.word	_Label_1588
	.word	-16
	.word	4
	.word	_Label_1589
	.word	-20
	.word	4
	.word	_Label_1590
	.word	-24
	.word	4
	.word	_Label_1591
	.word	-28
	.word	4
	.word	_Label_1592
	.word	-32
	.word	4
	.word	0
_Label_1585:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1586:
	.ascii	"Pself\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1591:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1592:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_4008:
	push	r0
	sub	r1,1,r1
	bne	_Label_4008
	mov	260,r13		! source line 260
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	263,r13		! source line 263
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_1594		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1594
!	jmp	_Label_1593
_Label_1593:
! THEN...
	mov	265,r13		! source line 265
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1595 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1595  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	265,r13		! source line 265
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1594:
! ASSIGNMENT STATEMENT...
	mov	267,r13		! source line 267
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
	mov	268,r13		! source line 268
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_1597		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1597
!	jmp	_Label_1596
_Label_1596:
! THEN...
	mov	269,r13		! source line 269
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   _temp_1598 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_1597:
! ASSIGNMENT STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	272,r13		! source line 272
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_1599
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1600
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1601
	.word	-12
	.word	4
	.word	_Label_1602
	.word	-16
	.word	4
	.word	_Label_1603
	.word	-20
	.word	4
	.word	0
_Label_1599:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1600:
	.ascii	"Pself\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1603:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1604
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1604:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1605
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1605:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_4009:
	push	r0
	sub	r1,1,r1
	bne	_Label_4009
	mov	295,r13		! source line 295
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
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
	mov	296,r13		! source line 296
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_1607
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1608
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1609
	.word	-12
	.word	4
	.word	0
_Label_1607:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1608:
	.ascii	"Pself\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_4010:
	push	r0
	sub	r1,1,r1
	bne	_Label_4010
	mov	301,r13		! source line 301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1611		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1611
!	jmp	_Label_1610
_Label_1610:
! THEN...
	mov	305,r13		! source line 305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1612 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1612  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	305,r13		! source line 305
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1611:
! ASSIGNMENT STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	307,r13		! source line 307
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_1616		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1616
!   _temp_1615 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1617
_Label_1616:
!   _temp_1615 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1617:
!   if _temp_1615 then goto _Label_1614 else goto _Label_1613
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1613
	jmp	_Label_1614
_Label_1613:
! THEN...
	mov	309,r13		! source line 309
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1618
_Label_1614:
! ELSE...
	mov	311,r13		! source line 311
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   _temp_1619 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_1618:
! ASSIGNMENT STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	314,r13		! source line 314
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_1620
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1621
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1622
	.word	-16
	.word	4
	.word	_Label_1623
	.word	-9
	.word	1
	.word	_Label_1624
	.word	-20
	.word	4
	.word	_Label_1625
	.word	-24
	.word	4
	.word	0
_Label_1620:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1621:
	.ascii	"Pself\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1623:
	.byte	'C'
	.ascii	"_temp_1615\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1625:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_4011:
	push	r0
	sub	r1,1,r1
	bne	_Label_4011
	mov	319,r13		! source line 319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1627		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1627
!	jmp	_Label_1626
_Label_1626:
! THEN...
	mov	324,r13		! source line 324
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1628 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1628  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	324,r13		! source line 324
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1627:
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	326,r13		! source line 326
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0AS",r10
	mov	327,r13		! source line 327
	mov	"\0\0SE",r10
!   _temp_1629 = &waitingThreads
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
! IF STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1631		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1631
!	jmp	_Label_1630
_Label_1630:
! THEN...
	mov	329,r13		! source line 329
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1632 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1632 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0SE",r10
!   _temp_1633 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
! ASSIGNMENT STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1634
_Label_1631:
! ELSE...
	mov	333,r13		! source line 333
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_1634:
! ASSIGNMENT STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	335,r13		! source line 335
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_1635
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1636
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1637
	.word	-12
	.word	4
	.word	_Label_1638
	.word	-16
	.word	4
	.word	_Label_1639
	.word	-20
	.word	4
	.word	_Label_1640
	.word	-24
	.word	4
	.word	_Label_1641
	.word	-28
	.word	4
	.word	_Label_1642
	.word	-32
	.word	4
	.word	0
_Label_1635:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1636:
	.ascii	"Pself\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1641:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1642:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_4012:
	push	r0
	sub	r1,1,r1
	bne	_Label_4012
	mov	340,r13		! source line 340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1645		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1645
!	jmp	_Label_1644
_Label_1644:
!   _temp_1643 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1646
_Label_1645:
!   _temp_1643 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1646:
!   ReturnResult: _temp_1643  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_1647
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1648
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1649
	.word	-9
	.word	1
	.word	0
_Label_1647:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1648:
	.ascii	"Pself\0"
	.align
_Label_1649:
	.byte	'C'
	.ascii	"_temp_1643\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1650
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1650:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1651
	.word	_sourceFileName
	.word	153		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1651:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_4013:
	push	r0
	sub	r1,1,r1
	bne	_Label_4013
	mov	381,r13		! source line 381
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	382,r13		! source line 382
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
	mov	382,r13		! source line 382
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_1653
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1654
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1655
	.word	-12
	.word	4
	.word	0
_Label_1653:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1654:
	.ascii	"Pself\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_4014:
	push	r0
	sub	r1,1,r1
	bne	_Label_4014
	mov	387,r13		! source line 387
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0IF",r10
	mov	390,r13		! source line 390
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
!   Retrieve Result: targetName=_temp_1658  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1658 then goto _Label_1657 else goto _Label_1656
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1656
	jmp	_Label_1657
_Label_1656:
! THEN...
	mov	391,r13		! source line 391
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1659 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1659  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	391,r13		! source line 391
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1657:
! ASSIGNMENT STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	393,r13		! source line 393
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	394,r13		! source line 394
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
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   _temp_1660 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	397,r13		! source line 397
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
	mov	398,r13		! source line 398
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_1661
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1662
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1663
	.word	12
	.word	4
	.word	_Label_1664
	.word	-16
	.word	4
	.word	_Label_1665
	.word	-20
	.word	4
	.word	_Label_1666
	.word	-9
	.word	1
	.word	_Label_1667
	.word	-24
	.word	4
	.word	0
_Label_1661:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1662:
	.ascii	"Pself\0"
	.align
_Label_1663:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1666:
	.byte	'C'
	.ascii	"_temp_1658\0"
	.align
_Label_1667:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_4015:
	push	r0
	sub	r1,1,r1
	bne	_Label_4015
	mov	403,r13		! source line 403
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0IF",r10
	mov	407,r13		! source line 407
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
!   Retrieve Result: targetName=_temp_1670  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1670 then goto _Label_1669 else goto _Label_1668
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1668
	jmp	_Label_1669
_Label_1668:
! THEN...
	mov	408,r13		! source line 408
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1671 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1671  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	408,r13		! source line 408
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1669:
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	410,r13		! source line 410
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0AS",r10
	mov	411,r13		! source line 411
	mov	"\0\0SE",r10
!   _temp_1672 = &waitingThreads
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
	mov	412,r13		! source line 412
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1674		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1674
!	jmp	_Label_1673
_Label_1673:
! THEN...
	mov	413,r13		! source line 413
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1675 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1675 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
!   _temp_1676 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
_Label_1674:
! ASSIGNMENT STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	416,r13		! source line 416
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_1677
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1678
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1679
	.word	12
	.word	4
	.word	_Label_1680
	.word	-16
	.word	4
	.word	_Label_1681
	.word	-20
	.word	4
	.word	_Label_1682
	.word	-24
	.word	4
	.word	_Label_1683
	.word	-28
	.word	4
	.word	_Label_1684
	.word	-9
	.word	1
	.word	_Label_1685
	.word	-32
	.word	4
	.word	_Label_1686
	.word	-36
	.word	4
	.word	0
_Label_1677:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1678:
	.ascii	"Pself\0"
	.align
_Label_1679:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1684:
	.byte	'C'
	.ascii	"_temp_1670\0"
	.align
_Label_1685:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1686:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_4016:
	push	r0
	sub	r1,1,r1
	bne	_Label_4016
	mov	421,r13		! source line 421
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0IF",r10
	mov	425,r13		! source line 425
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
!   Retrieve Result: targetName=_temp_1689  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1689 then goto _Label_1688 else goto _Label_1687
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1687
	jmp	_Label_1688
_Label_1687:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1690 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1690  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	426,r13		! source line 426
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1688:
! ASSIGNMENT STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0WH",r10
_Label_1691:
!	jmp	_Label_1692
_Label_1692:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_1694 = &waitingThreads
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
	mov	431,r13		! source line 431
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_1695
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1695
	jmp	_Label_1696
_Label_1695:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_1693
! END IF...
_Label_1696:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1697 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1697 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_1698 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
	jmp	_Label_1691
_Label_1693:
! ASSIGNMENT STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_1699
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1700
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1701
	.word	12
	.word	4
	.word	_Label_1702
	.word	-16
	.word	4
	.word	_Label_1703
	.word	-20
	.word	4
	.word	_Label_1704
	.word	-24
	.word	4
	.word	_Label_1705
	.word	-28
	.word	4
	.word	_Label_1706
	.word	-9
	.word	1
	.word	_Label_1707
	.word	-32
	.word	4
	.word	_Label_1708
	.word	-36
	.word	4
	.word	0
_Label_1699:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1700:
	.ascii	"Pself\0"
	.align
_Label_1701:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1706:
	.byte	'C'
	.ascii	"_temp_1689\0"
	.align
_Label_1707:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1708:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1709
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_1709:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1710
	.word	_sourceFileName
	.word	166		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1710:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_4017:
	push	r0
	sub	r1,1,r1
	bne	_Label_4017
	mov	448,r13		! source line 448
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   _temp_1711 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1711) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1711 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_1712 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1712 [0 ] into _temp_1713
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_1713 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1714 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1714 [999 ] into _temp_1715
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
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
	store	r2,[r14+-172]
!   Data Move: *_temp_1715 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1716 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1716 [999 ] into _temp_1717
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
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
	store	r2,[r14+-164]
!   stackTop = _temp_1717		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1718 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1720 = &_temp_1719
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1720 = _temp_1720 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1722:
!   Data Move: *_temp_1720 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1720 = _temp_1720 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1721 = _temp_1721 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1721) then goto _Label_1722
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1722
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1723 = &_temp_1719
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4018
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4018:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1718 = *_temp_1723  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4019:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4019
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0AS",r10
!   _temp_1724 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1726 = &_temp_1725
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1726 = _temp_1726 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1728:
!   Data Move: *_temp_1726 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1726 = _temp_1726 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1727 = _temp_1727 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1727) then goto _Label_1728
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1728
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1729 = &_temp_1725
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4020
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4020:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1724 = *_temp_1729  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4021:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4021
! RETURN STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_1730
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1731
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1732
	.word	12
	.word	4
	.word	_Label_1733
	.word	-12
	.word	4
	.word	_Label_1734
	.word	-16
	.word	4
	.word	_Label_1735
	.word	-20
	.word	4
	.word	_Label_1736
	.word	-84
	.word	64
	.word	_Label_1737
	.word	-88
	.word	4
	.word	_Label_1738
	.word	-92
	.word	4
	.word	_Label_1739
	.word	-96
	.word	4
	.word	_Label_1740
	.word	-100
	.word	4
	.word	_Label_1741
	.word	-156
	.word	56
	.word	_Label_1742
	.word	-160
	.word	4
	.word	_Label_1743
	.word	-164
	.word	4
	.word	_Label_1744
	.word	-168
	.word	4
	.word	_Label_1745
	.word	-172
	.word	4
	.word	_Label_1746
	.word	-176
	.word	4
	.word	_Label_1747
	.word	-180
	.word	4
	.word	_Label_1748
	.word	-184
	.word	4
	.word	_Label_1749
	.word	-188
	.word	4
	.word	0
_Label_1730:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1731:
	.ascii	"Pself\0"
	.align
_Label_1732:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_4022:
	push	r0
	sub	r1,1,r1
	bne	_Label_4022
	mov	467,r13		! source line 467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	478,r13		! source line 478
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1750 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1750  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1752 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1751  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	486,r13		! source line 486
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_1753
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1754
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1755
	.word	12
	.word	4
	.word	_Label_1756
	.word	16
	.word	4
	.word	_Label_1757
	.word	-12
	.word	4
	.word	_Label_1758
	.word	-16
	.word	4
	.word	_Label_1759
	.word	-20
	.word	4
	.word	_Label_1760
	.word	-24
	.word	4
	.word	_Label_1761
	.word	-28
	.word	4
	.word	0
_Label_1753:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1754:
	.ascii	"Pself\0"
	.align
_Label_1755:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1756:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1760:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1761:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_4023:
	push	r0
	sub	r1,1,r1
	bne	_Label_4023
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1764 == _P_Kernel_currentThread then goto _Label_1763		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1763
!	jmp	_Label_1762
_Label_1762:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1765 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1765  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	508,r13		! source line 508
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1763:
! ASSIGNMENT STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	510,r13		! source line 510
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0AS",r10
	mov	514,r13		! source line 514
	mov	"\0\0SE",r10
!   _temp_1766 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1768		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1768
!	jmp	_Label_1767
_Label_1767:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1770		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1770
!	jmp	_Label_1769
_Label_1769:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1771 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1771  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	520,r13		! source line 520
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1770:
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1773 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1772  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	524,r13		! source line 524
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1768:
! ASSIGNMENT STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	526,r13		! source line 526
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_1774
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1775
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1776
	.word	-12
	.word	4
	.word	_Label_1777
	.word	-16
	.word	4
	.word	_Label_1778
	.word	-20
	.word	4
	.word	_Label_1779
	.word	-24
	.word	4
	.word	_Label_1780
	.word	-28
	.word	4
	.word	_Label_1781
	.word	-32
	.word	4
	.word	_Label_1782
	.word	-36
	.word	4
	.word	_Label_1783
	.word	-40
	.word	4
	.word	_Label_1784
	.word	-44
	.word	4
	.word	0
_Label_1774:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1775:
	.ascii	"Pself\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1782:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1783:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1784:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_4024:
	push	r0
	sub	r1,1,r1
	bne	_Label_4024
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1786		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1786
!	jmp	_Label_1785
_Label_1785:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1787 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1787  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	544,r13		! source line 544
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1786:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1790 == _P_Kernel_currentThread then goto _Label_1789		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1789
!	jmp	_Label_1788
_Label_1788:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1791 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1791  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	548,r13		! source line 548
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1789:
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0AS",r10
	mov	554,r13		! source line 554
	mov	"\0\0SE",r10
!   _temp_1792 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1793
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1793
	jmp	_Label_1794
_Label_1793:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1795 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1795  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	556,r13		! source line 556
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1794:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	558,r13		! source line 558
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1796
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1797
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1798
	.word	-12
	.word	4
	.word	_Label_1799
	.word	-16
	.word	4
	.word	_Label_1800
	.word	-20
	.word	4
	.word	_Label_1801
	.word	-24
	.word	4
	.word	_Label_1802
	.word	-28
	.word	4
	.word	_Label_1803
	.word	-32
	.word	4
	.word	0
_Label_1796:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1797:
	.ascii	"Pself\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1803:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_4025:
	push	r0
	sub	r1,1,r1
	bne	_Label_4025
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_1807 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1807 [0 ] into _temp_1808
!     make sure index expr is >= 0
	mov	0,r2
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
!   Data Move: _temp_1806 = *_temp_1808  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1806 == 606348324 then goto _Label_1805		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1805
!	jmp	_Label_1804
_Label_1804:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1809 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1809  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	570,r13		! source line 570
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1810
_Label_1805:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_1814 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1814 [999 ] into _temp_1815
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1813 = *_temp_1815  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1813 == 606348324 then goto _Label_1812		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1812
!	jmp	_Label_1811
_Label_1811:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1816 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1816  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	572,r13		! source line 572
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1812:
! END IF...
_Label_1810:
! RETURN STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1817
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1818
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1819
	.word	-12
	.word	4
	.word	_Label_1820
	.word	-16
	.word	4
	.word	_Label_1821
	.word	-20
	.word	4
	.word	_Label_1822
	.word	-24
	.word	4
	.word	_Label_1823
	.word	-28
	.word	4
	.word	_Label_1824
	.word	-32
	.word	4
	.word	_Label_1825
	.word	-36
	.word	4
	.word	_Label_1826
	.word	-40
	.word	4
	.word	0
_Label_1817:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1818:
	.ascii	"Pself\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_4026:
	push	r0
	sub	r1,1,r1
	bne	_Label_4026
	mov	578,r13		! source line 578
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1827 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1827  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	585,r13		! source line 585
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1828 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1828  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1829  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1830 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1830  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1831 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1831  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1836 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1837 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1836  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1832:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1837 then goto _Label_1835		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1835
_Label_1833:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1838 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1838  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1839 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1839  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1840 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1840  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1842 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1842 [i ] into _temp_1843
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
!   Data Move: _temp_1841 = *_temp_1843  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1841  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1844 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1844  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1846 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1846 [i ] into _temp_1847
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
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
	store	r2,[r14+-124]
!   Data Move: _temp_1845 = *_temp_1847  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1845  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1848 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1848  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1834:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1832
! END FOR
_Label_1835:
! CALL STATEMENT...
!   _temp_1849 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-116]
!   _temp_1850 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1849  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1850  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1851 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-108]
!   _temp_1853 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1853 [0 ] into _temp_1854
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1852 = _temp_1854		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1851  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1852  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	602,r13		! source line 602
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1857
	cmp	r1,2
	be	_Label_1858
	cmp	r1,3
	be	_Label_1859
	cmp	r1,4
	be	_Label_1860
	cmp	r1,5
	be	_Label_1861
	jmp	_Label_1855
! CASE 1...
_Label_1857:
! CALL STATEMENT...
!   _temp_1862 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1862  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_1856
! CASE 2...
_Label_1858:
! CALL STATEMENT...
!   _temp_1863 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1863  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_1856
! CASE 3...
_Label_1859:
! CALL STATEMENT...
!   _temp_1864 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1864  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_1856
! CASE 4...
_Label_1860:
! CALL STATEMENT...
!   _temp_1865 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1865  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_1856
! CASE 5...
_Label_1861:
! CALL STATEMENT...
!   _temp_1866 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1866  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_1856
! DEFAULT CASE...
_Label_1855:
! CALL STATEMENT...
!   _temp_1867 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1867  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	619,r13		! source line 619
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1856:
! CALL STATEMENT...
!   _temp_1868 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1868  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1869 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1869  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1874 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1875 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1874  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1870:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1875 then goto _Label_1873		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1873
_Label_1871:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1876 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1876  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1877 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1877  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1878 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1878  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1880 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1880 [i ] into _temp_1881
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
!   Data Move: _temp_1879 = *_temp_1881  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1879  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1882 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1882  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1884 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1884 [i ] into _temp_1885
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1883 = *_temp_1885  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1883  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1886 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1886  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1872:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1870
! END FOR
_Label_1873:
! ASSIGNMENT STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1887
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1888
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1889
	.word	-12
	.word	4
	.word	_Label_1890
	.word	-16
	.word	4
	.word	_Label_1891
	.word	-20
	.word	4
	.word	_Label_1892
	.word	-24
	.word	4
	.word	_Label_1893
	.word	-28
	.word	4
	.word	_Label_1894
	.word	-32
	.word	4
	.word	_Label_1895
	.word	-36
	.word	4
	.word	_Label_1896
	.word	-40
	.word	4
	.word	_Label_1897
	.word	-44
	.word	4
	.word	_Label_1898
	.word	-48
	.word	4
	.word	_Label_1899
	.word	-52
	.word	4
	.word	_Label_1900
	.word	-56
	.word	4
	.word	_Label_1901
	.word	-60
	.word	4
	.word	_Label_1902
	.word	-64
	.word	4
	.word	_Label_1903
	.word	-68
	.word	4
	.word	_Label_1904
	.word	-72
	.word	4
	.word	_Label_1905
	.word	-76
	.word	4
	.word	_Label_1906
	.word	-80
	.word	4
	.word	_Label_1907
	.word	-84
	.word	4
	.word	_Label_1908
	.word	-88
	.word	4
	.word	_Label_1909
	.word	-92
	.word	4
	.word	_Label_1910
	.word	-96
	.word	4
	.word	_Label_1911
	.word	-100
	.word	4
	.word	_Label_1912
	.word	-104
	.word	4
	.word	_Label_1913
	.word	-108
	.word	4
	.word	_Label_1914
	.word	-112
	.word	4
	.word	_Label_1915
	.word	-116
	.word	4
	.word	_Label_1916
	.word	-120
	.word	4
	.word	_Label_1917
	.word	-124
	.word	4
	.word	_Label_1918
	.word	-128
	.word	4
	.word	_Label_1919
	.word	-132
	.word	4
	.word	_Label_1920
	.word	-136
	.word	4
	.word	_Label_1921
	.word	-140
	.word	4
	.word	_Label_1922
	.word	-144
	.word	4
	.word	_Label_1923
	.word	-148
	.word	4
	.word	_Label_1924
	.word	-152
	.word	4
	.word	_Label_1925
	.word	-156
	.word	4
	.word	_Label_1926
	.word	-160
	.word	4
	.word	_Label_1927
	.word	-164
	.word	4
	.word	_Label_1928
	.word	-168
	.word	4
	.word	_Label_1929
	.word	-172
	.word	4
	.word	_Label_1930
	.word	-176
	.word	4
	.word	_Label_1931
	.word	-180
	.word	4
	.word	_Label_1932
	.word	-184
	.word	4
	.word	_Label_1933
	.word	-188
	.word	4
	.word	_Label_1934
	.word	-192
	.word	4
	.word	_Label_1935
	.word	-196
	.word	4
	.word	0
_Label_1887:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1888:
	.ascii	"Pself\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1934:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1935:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1936
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1936:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1937
	.word	_sourceFileName
	.word	193		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1937:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11478,r1
_Label_4027:
	push	r0
	sub	r1,1,r1
	bne	_Label_4027
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1938 = _StringConst_82
	set	_StringConst_82,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1938  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0AS",r10
!   _temp_1939 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1941 = &_temp_1940
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1941 = _temp_1941 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1943 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_4028:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4028
!   _temp_1943 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1945:
!   Data Move: *_temp_1941 = _temp_1943  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_4029:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4029
!   _temp_1941 = _temp_1941 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1942 = _temp_1942 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1942) then goto _Label_1945
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1945
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1946 = &_temp_1940
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4030
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4030:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1939 = *_temp_1946  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4031:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4031
! ASSIGNMENT STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! FOR STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1952 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1953 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1952  (sizeInBytes=4)
	load	[r14+-72],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1948:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1953 then goto _Label_1951		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1951
_Label_1949:
	mov	702,r13		! source line 702
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_1954 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-64]
!   _temp_1955 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_1955 [i ] into _temp_1956
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1954  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0AS",r10
!   _temp_1957 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1957 [i ] into _temp_1958
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   _temp_1959 = _temp_1958 + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1959 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0SE",r10
!   _temp_1961 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1961 [i ] into _temp_1962
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1960 = _temp_1962		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_1963 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1960  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1950:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1948
! END FOR
_Label_1951:
! ASSIGNMENT STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0SE",r10
!   _temp_1965 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	711,r13		! source line 711
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	712,r13		! source line 712
	mov	"\0\0SE",r10
!   _temp_1967 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	712,r13		! source line 712
	mov	"\0\0RE",r10
	set	45916,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1968
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1969
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1970
	.word	-12
	.word	4
	.word	_Label_1971
	.word	-16
	.word	4
	.word	_Label_1972
	.word	-20
	.word	4
	.word	_Label_1973
	.word	-24
	.word	4
	.word	_Label_1974
	.word	-28
	.word	4
	.word	_Label_1975
	.word	-32
	.word	4
	.word	_Label_1976
	.word	-36
	.word	4
	.word	_Label_1977
	.word	-40
	.word	4
	.word	_Label_1978
	.word	-44
	.word	4
	.word	_Label_1979
	.word	-48
	.word	4
	.word	_Label_1980
	.word	-52
	.word	4
	.word	_Label_1981
	.word	-56
	.word	4
	.word	_Label_1982
	.word	-60
	.word	4
	.word	_Label_1983
	.word	-64
	.word	4
	.word	_Label_1984
	.word	-68
	.word	4
	.word	_Label_1985
	.word	-72
	.word	4
	.word	_Label_1986
	.word	-76
	.word	4
	.word	_Label_1987
	.word	-80
	.word	4
	.word	_Label_1988
	.word	-84
	.word	4
	.word	_Label_1989
	.word	-4248
	.word	4164
	.word	_Label_1990
	.word	-4252
	.word	4
	.word	_Label_1991
	.word	-4256
	.word	4
	.word	_Label_1992
	.word	-45900
	.word	41644
	.word	_Label_1993
	.word	-45904
	.word	4
	.word	_Label_1994
	.word	-45908
	.word	4
	.word	_Label_1995
	.word	-45912
	.word	4
	.word	0
_Label_1968:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1969:
	.ascii	"Pself\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1995:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_4032:
	push	r0
	sub	r1,1,r1
	bne	_Label_4032
	mov	718,r13		! source line 718
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1996 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1996  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2001 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2002 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2001  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1997:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2002 then goto _Label_2000		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2000
_Label_1998:
	mov	727,r13		! source line 727
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2003 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2003  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2004 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2004  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2006 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2006 [i ] into _temp_2007
!     make sure index expr is >= 0
	load	[r14+-56],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_2005 = _temp_2007		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2005  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CA",r10
	call	_function_191_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1999:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1997
! END FOR
_Label_2000:
! CALL STATEMENT...
!   _temp_2008 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2008  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0SE",r10
!   _temp_2009 = _function_190_PrintObjectAddr
	set	_function_190_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2010 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2009  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_2011
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2012
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2013
	.word	-12
	.word	4
	.word	_Label_2014
	.word	-16
	.word	4
	.word	_Label_2015
	.word	-20
	.word	4
	.word	_Label_2016
	.word	-24
	.word	4
	.word	_Label_2017
	.word	-28
	.word	4
	.word	_Label_2018
	.word	-32
	.word	4
	.word	_Label_2019
	.word	-36
	.word	4
	.word	_Label_2020
	.word	-40
	.word	4
	.word	_Label_2021
	.word	-44
	.word	4
	.word	_Label_2022
	.word	-48
	.word	4
	.word	_Label_2023
	.word	-52
	.word	4
	.word	_Label_2024
	.word	-56
	.word	4
	.word	_Label_2025
	.word	-60
	.word	4
	.word	0
_Label_2011:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2012:
	.ascii	"Pself\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2024:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2025:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_4033:
	push	r0
	sub	r1,1,r1
	bne	_Label_4033
	mov	741,r13		! source line 741
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_2026 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0WH",r10
_Label_2027:
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_2030 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2028 else goto _Label_2029
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2029
	jmp	_Label_2028
_Label_2028:
	mov	751,r13		! source line 751
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0SE",r10
!   _temp_2031 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2032 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2031  sizeInBytes=4
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
	jmp	_Label_2027
_Label_2029:
! ASSIGNMENT STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0AS",r10
	mov	754,r13		! source line 754
	mov	"\0\0SE",r10
!   _temp_2033 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=avaiThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	755,r13		! source line 755
	mov	"\0\0AS",r10
!   if intIsZero (avaiThread) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2034 = avaiThread + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2034 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0SE",r10
!   _temp_2035 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	757,r13		! source line 757
	mov	"\0\0RE",r10
!   ReturnResult: avaiThread  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_2036
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2037
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2038
	.word	-12
	.word	4
	.word	_Label_2039
	.word	-16
	.word	4
	.word	_Label_2040
	.word	-20
	.word	4
	.word	_Label_2041
	.word	-24
	.word	4
	.word	_Label_2042
	.word	-28
	.word	4
	.word	_Label_2043
	.word	-32
	.word	4
	.word	_Label_2044
	.word	-36
	.word	4
	.word	_Label_2045
	.word	-40
	.word	4
	.word	0
_Label_2036:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2037:
	.ascii	"Pself\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2045:
	.byte	'P'
	.ascii	"avaiThread\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_4034:
	push	r0
	sub	r1,1,r1
	bne	_Label_4034
	mov	762,r13		! source line 762
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0SE",r10
!   _temp_2046 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	768,r13		! source line 768
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2047 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2047 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_2048 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	770,r13		! source line 770
	mov	"\0\0SE",r10
!   _temp_2049 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2050 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2049  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	771,r13		! source line 771
	mov	"\0\0SE",r10
!   _temp_2051 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	771,r13		! source line 771
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_2052
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2053
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2054
	.word	12
	.word	4
	.word	_Label_2055
	.word	-12
	.word	4
	.word	_Label_2056
	.word	-16
	.word	4
	.word	_Label_2057
	.word	-20
	.word	4
	.word	_Label_2058
	.word	-24
	.word	4
	.word	_Label_2059
	.word	-28
	.word	4
	.word	_Label_2060
	.word	-32
	.word	4
	.word	0
_Label_2052:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2053:
	.ascii	"Pself\0"
	.align
_Label_2054:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2061
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2061:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2062
	.word	_sourceFileName
	.word	214		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2062:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	18,r1
_Label_4035:
	push	r0
	sub	r1,1,r1
	bne	_Label_4035
	mov	784,r13		! source line 784
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	786,r13		! source line 786
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_4036:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4036
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_2064 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
!   _temp_2065 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2067 = &_temp_2066
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2067 = _temp_2067 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2069:
!   Data Move: *_temp_2067 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2067 = _temp_2067 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2068 = _temp_2068 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2068) then goto _Label_2069
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2069
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2070 = &_temp_2066
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4037
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4037:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2065 = *_temp_2070  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4038:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4038
! RETURN STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2071
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2072
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2073
	.word	-12
	.word	4
	.word	_Label_2074
	.word	-16
	.word	4
	.word	_Label_2075
	.word	-20
	.word	4
	.word	_Label_2076
	.word	-64
	.word	44
	.word	_Label_2077
	.word	-68
	.word	4
	.word	_Label_2078
	.word	-72
	.word	4
	.word	_Label_2079
	.word	-76
	.word	4
	.word	0
_Label_2071:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2072:
	.ascii	"Pself\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	14,r1
_Label_4039:
	push	r0
	sub	r1,1,r1
	bne	_Label_4039
	mov	798,r13		! source line 798
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2080) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0SE",r10
!   _temp_2081 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Send message Print
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2082 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2082  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	805,r13		! source line 805
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	806,r13		! source line 806
	mov	"\0\0CA",r10
	call	_function_191_ThreadPrintShort
! CALL STATEMENT...
!   _temp_2083 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2083  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	810,r13		! source line 810
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2088 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2089 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2088  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-60]
_Label_2084:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2089 then goto _Label_2087		
	load	[r14+-60],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2087
_Label_2085:
	mov	810,r13		! source line 810
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	811,r13		! source line 811
	mov	"\0\0IF",r10
!   _temp_2093 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Move address of _temp_2093 [i ] into _temp_2094
!     make sure index expr is >= 0
	load	[r14+-60],r2
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
!   Data Move: _temp_2092 = *_temp_2094  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2092 == 0 then goto _Label_2091		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2091
!	jmp	_Label_2090
_Label_2090:
! THEN...
	mov	812,r13		! source line 812
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0SE",r10
!   _temp_2096 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_2096 [i ] into _temp_2097
!     make sure index expr is >= 0
	load	[r14+-60],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2095 = *_temp_2097  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2095) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! END IF...
_Label_2091:
!   Increment the FOR-LOOP index variable and jump back
_Label_2086:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2084
! END FOR
_Label_2087:
! CALL STATEMENT...
!   Call the function
	mov	816,r13		! source line 816
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2098
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2099
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2100
	.word	-12
	.word	4
	.word	_Label_2101
	.word	-16
	.word	4
	.word	_Label_2102
	.word	-20
	.word	4
	.word	_Label_2103
	.word	-24
	.word	4
	.word	_Label_2104
	.word	-28
	.word	4
	.word	_Label_2105
	.word	-32
	.word	4
	.word	_Label_2106
	.word	-36
	.word	4
	.word	_Label_2107
	.word	-40
	.word	4
	.word	_Label_2108
	.word	-44
	.word	4
	.word	_Label_2109
	.word	-48
	.word	4
	.word	_Label_2110
	.word	-52
	.word	4
	.word	_Label_2111
	.word	-56
	.word	4
	.word	_Label_2112
	.word	-60
	.word	4
	.word	0
_Label_2098:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2099:
	.ascii	"Pself\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2112:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_4040:
	push	r0
	sub	r1,1,r1
	bne	_Label_4040
	mov	821,r13		! source line 821
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2113 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2113  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2114  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	826,r13		! source line 826
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2115 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2115  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	828,r13		! source line 828
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2116 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2116  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	829,r13		! source line 829
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	830,r13		! source line 830
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2118		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2118
!	jmp	_Label_2117
_Label_2117:
! THEN...
	mov	831,r13		! source line 831
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2119 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2119  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2120
_Label_2118:
! ELSE...
	mov	832,r13		! source line 832
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2122		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2122
!	jmp	_Label_2121
_Label_2121:
! THEN...
	mov	833,r13		! source line 833
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2123 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2123  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	833,r13		! source line 833
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2124
_Label_2122:
! ELSE...
	mov	834,r13		! source line 834
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	834,r13		! source line 834
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2126		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2126
!	jmp	_Label_2125
_Label_2125:
! THEN...
	mov	835,r13		! source line 835
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2127 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2127  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2128
_Label_2126:
! ELSE...
	mov	837,r13		! source line 837
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2129 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2129  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	837,r13		! source line 837
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2128:
! END IF...
_Label_2124:
! END IF...
_Label_2120:
! CALL STATEMENT...
!   _temp_2130 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2130  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2131 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2131  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_2132
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2133
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2134
	.word	-12
	.word	4
	.word	_Label_2135
	.word	-16
	.word	4
	.word	_Label_2136
	.word	-20
	.word	4
	.word	_Label_2137
	.word	-24
	.word	4
	.word	_Label_2138
	.word	-28
	.word	4
	.word	_Label_2139
	.word	-32
	.word	4
	.word	_Label_2140
	.word	-36
	.word	4
	.word	_Label_2141
	.word	-40
	.word	4
	.word	_Label_2142
	.word	-44
	.word	4
	.word	_Label_2143
	.word	-48
	.word	4
	.word	0
_Label_2132:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2133:
	.ascii	"Pself\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2144
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	jmp	_Method_P_Kernel_ProcessManager_6	! 24:	TurnIntoZombie
	jmp	_Method_P_Kernel_ProcessManager_7	! 28:	WaitForZombie
	.word	0
! 
! Class descriptor:
! 
_Label_2144:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2145
	.word	_sourceFileName
	.word	234		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2145:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	489,r1
_Label_4041:
	push	r0
	sub	r1,1,r1
	bne	_Label_4041
	mov	854,r13		! source line 854
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1724,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1724]
! ASSIGNMENT STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0AS",r10
!   _temp_2147 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1948]
!   NEW ARRAY Constructor...
!   _temp_2149 = &_temp_2148
	add	r14,-1944,r1
	store	r1,[r14+-260]
!   _temp_2149 = _temp_2149 + 4
	load	[r14+-260],r1
	add	r1,4,r1
	store	r1,[r14+-260]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2151 = zeros  (sizeInBytes=168)
	add	r14,-252,r4
	mov	42,r3
_Label_4042:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4042
!   _temp_2151 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-252]
	mov	10,r1
	store	r1,[r14+-256]
_Label_2153:
!   Data Move: *_temp_2149 = _temp_2151  (sizeInBytes=168)
	add	r14,-252,r5
	load	[r14+-260],r4
	mov	42,r3
_Label_4043:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4043
!   _temp_2149 = _temp_2149 + 168
	load	[r14+-260],r1
	add	r1,168,r1
	store	r1,[r14+-260]
!   _temp_2150 = _temp_2150 + -1
	load	[r14+-256],r1
	add	r1,-1,r1
	store	r1,[r14+-256]
!   if intNotZero (_temp_2150) then goto _Label_2153
	load	[r14+-256],r1
	cmp	r1,r0
	bne	_Label_2153
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1944]
!   _temp_2154 = &_temp_2148
	add	r14,-1944,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	load	[r14+-1948],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4044
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4044:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2147 = *_temp_2154  (sizeInBytes=1684)
	load	[r14+-80],r5
	load	[r14+-1948],r4
	mov	421,r3
_Label_4045:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4045
! FOR STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2159 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2160 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2159  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-1956]
_Label_2155:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2160 then goto _Label_2158		
	load	[r14+-1956],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2158
_Label_2156:
	mov	865,r13		! source line 865
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0SE",r10
!   _temp_2161 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_2161 [i ] into _temp_2162
!     make sure index expr is >= 0
	load	[r14+-1956],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	867,r13		! source line 867
	mov	"\0\0AS",r10
!   _temp_2163 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_2163 [i ] into _temp_2164
!     make sure index expr is >= 0
	load	[r14+-1956],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   _temp_2165 = _temp_2164 + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_2165 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0SE",r10
!   _temp_2167 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2167 [i ] into _temp_2168
!     make sure index expr is >= 0
	load	[r14+-1956],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2166 = _temp_2168		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_2169 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2166  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2157:
!   i = i + 1
	load	[r14+-1956],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1956]
	jmp	_Label_2155
! END FOR
_Label_2158:
! ASSIGNMENT STATEMENT...
	mov	871,r13		! source line 871
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1688,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1688]
! SEND STATEMENT...
	mov	872,r13		! source line 872
	mov	"\0\0SE",r10
!   _temp_2171 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	874,r13		! source line 874
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1708,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1708]
! SEND STATEMENT...
	mov	875,r13		! source line 875
	mov	"\0\0SE",r10
!   _temp_2173 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
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
	mov	877,r13		! source line 877
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1736,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1736]
! SEND STATEMENT...
	mov	878,r13		! source line 878
	mov	"\0\0SE",r10
!   _temp_2175 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
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
	mov	878,r13		! source line 878
	mov	"\0\0RE",r10
	add	r15,1960,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_2176
	.word	4		! total size of parameters
	.word	1956		! frame size = 1956
	.word	_Label_2177
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2178
	.word	-12
	.word	4
	.word	_Label_2179
	.word	-16
	.word	4
	.word	_Label_2180
	.word	-20
	.word	4
	.word	_Label_2181
	.word	-24
	.word	4
	.word	_Label_2182
	.word	-28
	.word	4
	.word	_Label_2183
	.word	-32
	.word	4
	.word	_Label_2184
	.word	-36
	.word	4
	.word	_Label_2185
	.word	-40
	.word	4
	.word	_Label_2186
	.word	-44
	.word	4
	.word	_Label_2187
	.word	-48
	.word	4
	.word	_Label_2188
	.word	-52
	.word	4
	.word	_Label_2189
	.word	-56
	.word	4
	.word	_Label_2190
	.word	-60
	.word	4
	.word	_Label_2191
	.word	-64
	.word	4
	.word	_Label_2192
	.word	-68
	.word	4
	.word	_Label_2193
	.word	-72
	.word	4
	.word	_Label_2194
	.word	-76
	.word	4
	.word	_Label_2195
	.word	-80
	.word	4
	.word	_Label_2196
	.word	-84
	.word	4
	.word	_Label_2197
	.word	-252
	.word	168
	.word	_Label_2198
	.word	-256
	.word	4
	.word	_Label_2199
	.word	-260
	.word	4
	.word	_Label_2200
	.word	-1944
	.word	1684
	.word	_Label_2201
	.word	-1948
	.word	4
	.word	_Label_2202
	.word	-1952
	.word	4
	.word	_Label_2203
	.word	-1956
	.word	4
	.word	0
_Label_2176:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2177:
	.ascii	"Pself\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2203:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_4046:
	push	r0
	sub	r1,1,r1
	bne	_Label_4046
	mov	884,r13		! source line 884
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	891,r13		! source line 891
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_2204 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2204  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	892,r13		! source line 892
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2209 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2210 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2209  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2205:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2210 then goto _Label_2208		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2208
_Label_2206:
	mov	893,r13		! source line 893
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2211 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2211  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	894,r13		! source line 894
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	895,r13		! source line 895
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2212 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2212  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	896,r13		! source line 896
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_2213 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2213 [i ] into _temp_2214
!     make sure index expr is >= 0
	load	[r14+-52],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2207:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2205
! END FOR
_Label_2208:
! CALL STATEMENT...
!   _temp_2215 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2215  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	899,r13		! source line 899
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_2216 = _function_190_PrintObjectAddr
	set	_function_190_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2217 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2216  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	901,r13		! source line 901
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	902,r13		! source line 902
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_2218
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2219
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2220
	.word	-12
	.word	4
	.word	_Label_2221
	.word	-16
	.word	4
	.word	_Label_2222
	.word	-20
	.word	4
	.word	_Label_2223
	.word	-24
	.word	4
	.word	_Label_2224
	.word	-28
	.word	4
	.word	_Label_2225
	.word	-32
	.word	4
	.word	_Label_2226
	.word	-36
	.word	4
	.word	_Label_2227
	.word	-40
	.word	4
	.word	_Label_2228
	.word	-44
	.word	4
	.word	_Label_2229
	.word	-48
	.word	4
	.word	_Label_2230
	.word	-52
	.word	4
	.word	_Label_2231
	.word	-56
	.word	4
	.word	0
_Label_2218:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2219:
	.ascii	"Pself\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2230:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2231:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_4047:
	push	r0
	sub	r1,1,r1
	bne	_Label_4047
	mov	907,r13		! source line 907
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	914,r13		! source line 914
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	914,r13		! source line 914
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_2232 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2232  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	915,r13		! source line 915
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2237 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2238 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2237  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2233:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2238 then goto _Label_2236		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2236
_Label_2234:
	mov	916,r13		! source line 916
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2239 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2239  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	918,r13		! source line 918
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0SE",r10
!   _temp_2240 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2240 [i ] into _temp_2241
!     make sure index expr is >= 0
	load	[r14+-48],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2235:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2233
! END FOR
_Label_2236:
! CALL STATEMENT...
!   _temp_2242 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2242  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	921,r13		! source line 921
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0SE",r10
!   _temp_2243 = _function_190_PrintObjectAddr
	set	_function_190_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2244 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2243  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_2245
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2246
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2247
	.word	-12
	.word	4
	.word	_Label_2248
	.word	-16
	.word	4
	.word	_Label_2249
	.word	-20
	.word	4
	.word	_Label_2250
	.word	-24
	.word	4
	.word	_Label_2251
	.word	-28
	.word	4
	.word	_Label_2252
	.word	-32
	.word	4
	.word	_Label_2253
	.word	-36
	.word	4
	.word	_Label_2254
	.word	-40
	.word	4
	.word	_Label_2255
	.word	-44
	.word	4
	.word	_Label_2256
	.word	-48
	.word	4
	.word	_Label_2257
	.word	-52
	.word	4
	.word	0
_Label_2245:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2246:
	.ascii	"Pself\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2256:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2257:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_4048:
	push	r0
	sub	r1,1,r1
	bne	_Label_4048
	mov	929,r13		! source line 929
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0SE",r10
!   _temp_2258 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0WH",r10
_Label_2259:
	mov	937,r13		! source line 937
	mov	"\0\0SE",r10
!   _temp_2262 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2260 else goto _Label_2261
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2261
	jmp	_Label_2260
_Label_2260:
	mov	937,r13		! source line 937
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0SE",r10
!   _temp_2263 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2264 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2263  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2259
_Label_2261:
! ASSIGNMENT STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0AS",r10
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_2265 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextProcess  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	941,r13		! source line 941
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1752],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1752]
! ASSIGNMENT STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0AS",r10
!   if intIsZero (nextProcess) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2266 = nextProcess + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2266 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1752],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0AS",r10
!   if intIsZero (nextProcess) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2267 = nextProcess + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2267 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0SE",r10
!   _temp_2268 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	945,r13		! source line 945
	mov	"\0\0RE",r10
!   ReturnResult: nextProcess  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_2269
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2270
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2271
	.word	-12
	.word	4
	.word	_Label_2272
	.word	-16
	.word	4
	.word	_Label_2273
	.word	-20
	.word	4
	.word	_Label_2274
	.word	-24
	.word	4
	.word	_Label_2275
	.word	-28
	.word	4
	.word	_Label_2276
	.word	-32
	.word	4
	.word	_Label_2277
	.word	-36
	.word	4
	.word	_Label_2278
	.word	-40
	.word	4
	.word	_Label_2279
	.word	-44
	.word	4
	.word	0
_Label_2269:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2270:
	.ascii	"Pself\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2279:
	.byte	'P'
	.ascii	"nextProcess\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_4049:
	push	r0
	sub	r1,1,r1
	bne	_Label_4049
	mov	950,r13		! source line 950
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0SE",r10
!   _temp_2280 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2281 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2281 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_2282 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_2283 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2284 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2283  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_2285 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	959,r13		! source line 959
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_2286
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2287
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2288
	.word	12
	.word	4
	.word	_Label_2289
	.word	-12
	.word	4
	.word	_Label_2290
	.word	-16
	.word	4
	.word	_Label_2291
	.word	-20
	.word	4
	.word	_Label_2292
	.word	-24
	.word	4
	.word	_Label_2293
	.word	-28
	.word	4
	.word	_Label_2294
	.word	-32
	.word	4
	.word	0
_Label_2286:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2287:
	.ascii	"Pself\0"
	.align
_Label_2288:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
! 
! ===============  METHOD TurnIntoZombie  ===============
! 
_Method_P_Kernel_ProcessManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_6,r1
	push	r1
	mov	63,r1
_Label_4050:
	push	r0
	sub	r1,1,r1
	bne	_Label_4050
	mov	964,r13		! source line 964
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0SE",r10
!   _temp_2295 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-244]
!   _temp_2296 = _temp_2295 + 1688
	load	[r14+-244],r1
	add	r1,1688,r1
	store	r1,[r14+-240]
!   Send message Lock
	load	[r14+-240],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2301 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2302 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-232]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2301  (sizeInBytes=4)
	load	[r14+-236],r1
	store	r1,[r14+-248]
_Label_2297:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2302 then goto _Label_2300		
	load	[r14+-248],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2300
_Label_2298:
	mov	973,r13		! source line 973
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0IF",r10
!   _temp_2306 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-224]
!   _temp_2307 = _temp_2306 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Move address of _temp_2307 [i ] into _temp_2308
!     make sure index expr is >= 0
	load	[r14+-248],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-216]
!   _temp_2309 = _temp_2308 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
!   Data Move: _temp_2305 = *_temp_2309  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2311 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_2310 = *_temp_2311  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if _temp_2305 != _temp_2310 then goto _Label_2304		(int)
	load	[r14+-228],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bne	_Label_2304
!	jmp	_Label_2303
_Label_2303:
! THEN...
	mov	975,r13		! source line 975
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
!   _temp_2312 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-200]
!   _temp_2313 = _temp_2312 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Move address of _temp_2313 [i ] into _temp_2314
!     make sure index expr is >= 0
	load	[r14+-248],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   parentPCB = _temp_2314		(4 bytes)
	load	[r14+-192],r1
	store	r1,[r14+-252]
! END IF...
_Label_2304:
! IF STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0IF",r10
!   _temp_2319 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_2320 = _temp_2319 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_2320 [i ] into _temp_2321
!     make sure index expr is >= 0
	load	[r14+-248],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-180],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   _temp_2322 = _temp_2321 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2318 = *_temp_2322  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_2318 != 2 then goto _Label_2316		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2316
!	jmp	_Label_2317
_Label_2317:
!   _temp_2324 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_2325 = _temp_2324 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_2325 [i ] into _temp_2326
!     make sure index expr is >= 0
	load	[r14+-248],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   _temp_2327 = _temp_2326 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_2323 = *_temp_2327  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2329 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_2328 = *_temp_2329  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_2323 != _temp_2328 then goto _Label_2316		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_2316
!	jmp	_Label_2315
_Label_2315:
! THEN...
	mov	978,r13		! source line 978
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0AS",r10
!   _temp_2330 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_2331 = _temp_2330 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2331 [i ] into _temp_2332
!     make sure index expr is >= 0
	load	[r14+-248],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_2333 = _temp_2332 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_2333 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_2335 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_2336 = _temp_2335 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_2336 [i ] into _temp_2337
!     make sure index expr is >= 0
	load	[r14+-248],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   _temp_2334 = _temp_2337		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_2338 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_2339 = _temp_2338 + 1724
	load	[r14+-108],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2334  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_2341 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_2342 = _temp_2341 + 1688
	load	[r14+-96],r1
	add	r1,1688,r1
	store	r1,[r14+-92]
!   _temp_2340 = _temp_2342		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_2343 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2344 = _temp_2343 + 1708
	load	[r14+-88],r1
	add	r1,1708,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_2340  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2316:
!   Increment the FOR-LOOP index variable and jump back
_Label_2299:
!   i = i + 1
	load	[r14+-248],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
	jmp	_Label_2297
! END FOR
_Label_2300:
! IF STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0IF",r10
!   if intIsZero (parentPCB) then goto _Label_2346
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_2346
!	jmp	_Label_2347
_Label_2347:
!   if intIsZero (parentPCB) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2349 = parentPCB + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2348 = *_temp_2349  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2348 != 1 then goto _Label_2346		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2346
!	jmp	_Label_2345
_Label_2345:
! THEN...
	mov	985,r13		! source line 985
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2350 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_2350 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0SE",r10
!   _temp_2352 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2353 = _temp_2352 + 1688
	load	[r14+-64],r1
	add	r1,1688,r1
	store	r1,[r14+-60]
!   _temp_2351 = _temp_2353		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2354 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_2355 = _temp_2354 + 1736
	load	[r14+-56],r1
	add	r1,1736,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2351  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
	jmp	_Label_2356
_Label_2346:
! ELSE...
	mov	988,r13		! source line 988
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2357 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2357 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0SE",r10
!   _temp_2358 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2359 = _temp_2358 + 1724
	load	[r14+-44],r1
	add	r1,1724,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0SE",r10
!   _temp_2361 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2362 = _temp_2361 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2360 = _temp_2362		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2363 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2364 = _temp_2363 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2360  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2356:
! SEND STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0SE",r10
!   _temp_2365 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2366 = _temp_2365 + 1688
	load	[r14+-16],r1
	add	r1,1688,r1
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
	mov	993,r13		! source line 993
	mov	"\0\0RE",r10
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_6:
	.word	_sourceFileName
	.word	_Label_2367
	.word	8		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_2368
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2369
	.word	12
	.word	4
	.word	_Label_2370
	.word	-12
	.word	4
	.word	_Label_2371
	.word	-16
	.word	4
	.word	_Label_2372
	.word	-20
	.word	4
	.word	_Label_2373
	.word	-24
	.word	4
	.word	_Label_2374
	.word	-28
	.word	4
	.word	_Label_2375
	.word	-32
	.word	4
	.word	_Label_2376
	.word	-36
	.word	4
	.word	_Label_2377
	.word	-40
	.word	4
	.word	_Label_2378
	.word	-44
	.word	4
	.word	_Label_2379
	.word	-48
	.word	4
	.word	_Label_2380
	.word	-52
	.word	4
	.word	_Label_2381
	.word	-56
	.word	4
	.word	_Label_2382
	.word	-60
	.word	4
	.word	_Label_2383
	.word	-64
	.word	4
	.word	_Label_2384
	.word	-68
	.word	4
	.word	_Label_2385
	.word	-72
	.word	4
	.word	_Label_2386
	.word	-76
	.word	4
	.word	_Label_2387
	.word	-80
	.word	4
	.word	_Label_2388
	.word	-84
	.word	4
	.word	_Label_2389
	.word	-88
	.word	4
	.word	_Label_2390
	.word	-92
	.word	4
	.word	_Label_2391
	.word	-96
	.word	4
	.word	_Label_2392
	.word	-100
	.word	4
	.word	_Label_2393
	.word	-104
	.word	4
	.word	_Label_2394
	.word	-108
	.word	4
	.word	_Label_2395
	.word	-112
	.word	4
	.word	_Label_2396
	.word	-116
	.word	4
	.word	_Label_2397
	.word	-120
	.word	4
	.word	_Label_2398
	.word	-124
	.word	4
	.word	_Label_2399
	.word	-128
	.word	4
	.word	_Label_2400
	.word	-132
	.word	4
	.word	_Label_2401
	.word	-136
	.word	4
	.word	_Label_2402
	.word	-140
	.word	4
	.word	_Label_2403
	.word	-144
	.word	4
	.word	_Label_2404
	.word	-148
	.word	4
	.word	_Label_2405
	.word	-152
	.word	4
	.word	_Label_2406
	.word	-156
	.word	4
	.word	_Label_2407
	.word	-160
	.word	4
	.word	_Label_2408
	.word	-164
	.word	4
	.word	_Label_2409
	.word	-168
	.word	4
	.word	_Label_2410
	.word	-172
	.word	4
	.word	_Label_2411
	.word	-176
	.word	4
	.word	_Label_2412
	.word	-180
	.word	4
	.word	_Label_2413
	.word	-184
	.word	4
	.word	_Label_2414
	.word	-188
	.word	4
	.word	_Label_2415
	.word	-192
	.word	4
	.word	_Label_2416
	.word	-196
	.word	4
	.word	_Label_2417
	.word	-200
	.word	4
	.word	_Label_2418
	.word	-204
	.word	4
	.word	_Label_2419
	.word	-208
	.word	4
	.word	_Label_2420
	.word	-212
	.word	4
	.word	_Label_2421
	.word	-216
	.word	4
	.word	_Label_2422
	.word	-220
	.word	4
	.word	_Label_2423
	.word	-224
	.word	4
	.word	_Label_2424
	.word	-228
	.word	4
	.word	_Label_2425
	.word	-232
	.word	4
	.word	_Label_2426
	.word	-236
	.word	4
	.word	_Label_2427
	.word	-240
	.word	4
	.word	_Label_2428
	.word	-244
	.word	4
	.word	_Label_2429
	.word	-248
	.word	4
	.word	_Label_2430
	.word	-252
	.word	4
	.word	0
_Label_2367:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2368:
	.ascii	"Pself\0"
	.align
_Label_2369:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2429:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2430:
	.byte	'P'
	.ascii	"parentPCB\0"
	.align
! 
! ===============  METHOD WaitForZombie  ===============
! 
_Method_P_Kernel_ProcessManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_7,r1
	push	r1
	mov	23,r1
_Label_4051:
	push	r0
	sub	r1,1,r1
	bne	_Label_4051
	mov	999,r13		! source line 999
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0SE",r10
!   _temp_2431 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2432 = _temp_2431 + 1688
	load	[r14+-88],r1
	add	r1,1688,r1
	store	r1,[r14+-84]
!   Send message Lock
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0WH",r10
_Label_2433:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2437 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2436 = *_temp_2437  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2436 == 2 then goto _Label_2435		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2435
!	jmp	_Label_2434
_Label_2434:
	mov	1007,r13		! source line 1007
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0SE",r10
!   _temp_2439 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_2440 = _temp_2439 + 1688
	load	[r14+-68],r1
	add	r1,1688,r1
	store	r1,[r14+-64]
!   _temp_2438 = _temp_2440		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_2441 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_2442 = _temp_2441 + 1736
	load	[r14+-60],r1
	add	r1,1736,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_2438  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2433
_Label_2435:
! ASSIGNMENT STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2443 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: procExitStaus = *_temp_2443  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2444 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2444 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_2445 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2446 = _temp_2445 + 1724
	load	[r14+-44],r1
	add	r1,1724,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=proc  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0SE",r10
!   _temp_2448 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2449 = _temp_2448 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2447 = _temp_2449		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2450 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2451 = _temp_2450 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2447  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1017,r13		! source line 1017
	mov	"\0\0SE",r10
!   _temp_2452 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2453 = _temp_2452 + 1688
	load	[r14+-16],r1
	add	r1,1688,r1
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
	mov	1019,r13		! source line 1019
	mov	"\0\0RE",r10
!   ReturnResult: procExitStaus  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_7:
	.word	_sourceFileName
	.word	_Label_2454
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_2455
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2456
	.word	12
	.word	4
	.word	_Label_2457
	.word	-12
	.word	4
	.word	_Label_2458
	.word	-16
	.word	4
	.word	_Label_2459
	.word	-20
	.word	4
	.word	_Label_2460
	.word	-24
	.word	4
	.word	_Label_2461
	.word	-28
	.word	4
	.word	_Label_2462
	.word	-32
	.word	4
	.word	_Label_2463
	.word	-36
	.word	4
	.word	_Label_2464
	.word	-40
	.word	4
	.word	_Label_2465
	.word	-44
	.word	4
	.word	_Label_2466
	.word	-48
	.word	4
	.word	_Label_2467
	.word	-52
	.word	4
	.word	_Label_2468
	.word	-56
	.word	4
	.word	_Label_2469
	.word	-60
	.word	4
	.word	_Label_2470
	.word	-64
	.word	4
	.word	_Label_2471
	.word	-68
	.word	4
	.word	_Label_2472
	.word	-72
	.word	4
	.word	_Label_2473
	.word	-76
	.word	4
	.word	_Label_2474
	.word	-80
	.word	4
	.word	_Label_2475
	.word	-84
	.word	4
	.word	_Label_2476
	.word	-88
	.word	4
	.word	_Label_2477
	.word	-92
	.word	4
	.word	0
_Label_2454:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2455:
	.ascii	"Pself\0"
	.align
_Label_2456:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2477:
	.byte	'I'
	.ascii	"procExitStaus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2478
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2478:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2479
	.word	_sourceFileName
	.word	257		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2479:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_4052:
	push	r0
	sub	r1,1,r1
	bne	_Label_4052
	mov	1078,r13		! source line 1078
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2480 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2480  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1084,r13		! source line 1084
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0SE",r10
!   _temp_2482 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=512  sizeInBytes=4
	mov	512,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1089,r13		! source line 1089
	mov	"\0\0SE",r10
!   _temp_2484 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0SE",r10
!   _temp_2486 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2491 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2492 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2491  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2487:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2492 then goto _Label_2490		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2490
_Label_2488:
	mov	1097,r13		! source line 1097
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2495 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2495) then goto _Label_2494
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2494
!	jmp	_Label_2493
_Label_2493:
! THEN...
	mov	1101,r13		! source line 1101
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2496 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2496  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1101,r13		! source line 1101
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2494:
!   Increment the FOR-LOOP index variable and jump back
_Label_2489:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2487
! END FOR
_Label_2490:
! RETURN STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_2497
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2498
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2499
	.word	-12
	.word	4
	.word	_Label_2500
	.word	-16
	.word	4
	.word	_Label_2501
	.word	-20
	.word	4
	.word	_Label_2502
	.word	-24
	.word	4
	.word	_Label_2503
	.word	-28
	.word	4
	.word	_Label_2504
	.word	-32
	.word	4
	.word	_Label_2505
	.word	-36
	.word	4
	.word	_Label_2506
	.word	-40
	.word	4
	.word	_Label_2507
	.word	-44
	.word	4
	.word	_Label_2508
	.word	-48
	.word	4
	.word	_Label_2509
	.word	-52
	.word	4
	.word	_Label_2510
	.word	-56
	.word	4
	.word	0
_Label_2497:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2498:
	.ascii	"Pself\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2510:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_4053:
	push	r0
	sub	r1,1,r1
	bne	_Label_4053
	mov	1108,r13		! source line 1108
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0SE",r10
!   _temp_2511 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2512 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2512  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1113,r13		! source line 1113
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2513 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2513  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1114,r13		! source line 1114
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2514 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2514  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1115,r13		! source line 1115
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1116,r13		! source line 1116
	mov	"\0\0SE",r10
!   _temp_2515 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0SE",r10
!   _temp_2516 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1117,r13		! source line 1117
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_2517
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2518
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2519
	.word	-12
	.word	4
	.word	_Label_2520
	.word	-16
	.word	4
	.word	_Label_2521
	.word	-20
	.word	4
	.word	_Label_2522
	.word	-24
	.word	4
	.word	_Label_2523
	.word	-28
	.word	4
	.word	_Label_2524
	.word	-32
	.word	4
	.word	0
_Label_2517:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2518:
	.ascii	"Pself\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_4054:
	push	r0
	sub	r1,1,r1
	bne	_Label_4054
	mov	1122,r13		! source line 1122
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0SE",r10
!   _temp_2525 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0WH",r10
_Label_2526:
!   if numberFreeFrames >= 1 then goto _Label_2528		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2528
!	jmp	_Label_2527
_Label_2527:
	mov	1133,r13		! source line 1133
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
!   _temp_2529 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2530 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2529  sizeInBytes=4
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
	jmp	_Label_2526
_Label_2528:
! ASSIGNMENT STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0AS",r10
	mov	1138,r13		! source line 1138
	mov	"\0\0SE",r10
!   _temp_2531 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1142,r13		! source line 1142
	mov	"\0\0SE",r10
!   _temp_2532 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0AS",r10
!   _temp_2533 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2533		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1147,r13		! source line 1147
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_2534
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2535
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2536
	.word	-12
	.word	4
	.word	_Label_2537
	.word	-16
	.word	4
	.word	_Label_2538
	.word	-20
	.word	4
	.word	_Label_2539
	.word	-24
	.word	4
	.word	_Label_2540
	.word	-28
	.word	4
	.word	_Label_2541
	.word	-32
	.word	4
	.word	_Label_2542
	.word	-36
	.word	4
	.word	_Label_2543
	.word	-40
	.word	4
	.word	0
_Label_2534:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2535:
	.ascii	"Pself\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2542:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2543:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_4055:
	push	r0
	sub	r1,1,r1
	bne	_Label_4055
	mov	1152,r13		! source line 1152
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_2544 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0WH",r10
_Label_2545:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2547		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2547
!	jmp	_Label_2546
_Label_2546:
	mov	1159,r13		! source line 1159
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0SE",r10
!   _temp_2548 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2549 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2548  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2545
_Label_2547:
! FOR STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2554 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2555 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2554  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_2550:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2555 then goto _Label_2553		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2553
_Label_2551:
	mov	1162,r13		! source line 1162
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0AS",r10
	mov	1163,r13		! source line 1163
	mov	"\0\0SE",r10
!   _temp_2556 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0AS",r10
!   _temp_2557 = f * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2557		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2552:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2550
! END FOR
_Label_2553:
! ASSIGNMENT STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2558 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2558 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0SE",r10
!   _temp_2559 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1169,r13		! source line 1169
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_2560
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2561
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2562
	.word	12
	.word	4
	.word	_Label_2563
	.word	16
	.word	4
	.word	_Label_2564
	.word	-12
	.word	4
	.word	_Label_2565
	.word	-16
	.word	4
	.word	_Label_2566
	.word	-20
	.word	4
	.word	_Label_2567
	.word	-24
	.word	4
	.word	_Label_2568
	.word	-28
	.word	4
	.word	_Label_2569
	.word	-32
	.word	4
	.word	_Label_2570
	.word	-36
	.word	4
	.word	_Label_2571
	.word	-40
	.word	4
	.word	_Label_2572
	.word	-44
	.word	4
	.word	_Label_2573
	.word	-48
	.word	4
	.word	_Label_2574
	.word	-52
	.word	4
	.word	_Label_2575
	.word	-56
	.word	4
	.word	0
_Label_2560:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2561:
	.ascii	"Pself\0"
	.align
_Label_2562:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2563:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2573:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2574:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2575:
	.byte	'I'
	.ascii	"f\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	17,r1
_Label_4056:
	push	r0
	sub	r1,1,r1
	bne	_Label_4056
	mov	1174,r13		! source line 1174
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0SE",r10
!   _temp_2576 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2581 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2584 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2583 = *_temp_2584  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2582 = _temp_2583 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2581  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2577:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2582 then goto _Label_2580		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2580
_Label_2578:
	mov	1181,r13		! source line 1181
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0AS",r10
	mov	1182,r13		! source line 1182
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0AS",r10
!   _temp_2585 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_2585 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_2586 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2579:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2577
! END FOR
_Label_2580:
! ASSIGNMENT STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2588 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2587 = *_temp_2588  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2587		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
!   _temp_2589 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2590 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2589  sizeInBytes=4
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
	mov	1188,r13		! source line 1188
	mov	"\0\0SE",r10
!   _temp_2591 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1188,r13		! source line 1188
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_2592
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2593
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2594
	.word	12
	.word	4
	.word	_Label_2595
	.word	-12
	.word	4
	.word	_Label_2596
	.word	-16
	.word	4
	.word	_Label_2597
	.word	-20
	.word	4
	.word	_Label_2598
	.word	-24
	.word	4
	.word	_Label_2599
	.word	-28
	.word	4
	.word	_Label_2600
	.word	-32
	.word	4
	.word	_Label_2601
	.word	-36
	.word	4
	.word	_Label_2602
	.word	-40
	.word	4
	.word	_Label_2603
	.word	-44
	.word	4
	.word	_Label_2604
	.word	-48
	.word	4
	.word	_Label_2605
	.word	-52
	.word	4
	.word	_Label_2606
	.word	-56
	.word	4
	.word	_Label_2607
	.word	-60
	.word	4
	.word	_Label_2608
	.word	-64
	.word	4
	.word	_Label_2609
	.word	-68
	.word	4
	.word	0
_Label_2592:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2593:
	.ascii	"Pself\0"
	.align
_Label_2594:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2607:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2608:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2609:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2610
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_2610:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2611
	.word	_sourceFileName
	.word	276		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2611:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_4057:
	push	r0
	sub	r1,1,r1
	bne	_Label_4057
	mov	1199,r13		! source line 1199
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0AS",r10
!   _temp_2612 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2614 = &_temp_2613
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2614 = _temp_2614 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2616:
!   Data Move: *_temp_2614 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2614 = _temp_2614 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2615 = _temp_2615 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2615) then goto _Label_2616
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2616
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2617 = &_temp_2613
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4058
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4058:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2612 = *_temp_2617  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4059:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4059
! RETURN STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_2618
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2619
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2620
	.word	-12
	.word	4
	.word	_Label_2621
	.word	-16
	.word	4
	.word	_Label_2622
	.word	-20
	.word	4
	.word	_Label_2623
	.word	-104
	.word	84
	.word	_Label_2624
	.word	-108
	.word	4
	.word	0
_Label_2618:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2619:
	.ascii	"Pself\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_4060:
	push	r0
	sub	r1,1,r1
	bne	_Label_4060
	mov	1209,r13		! source line 1209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2625 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2625  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1214,r13		! source line 1214
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2626 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2626  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1215,r13		! source line 1215
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2631 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2632 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2631  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2627:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2632 then goto _Label_2630		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2630
_Label_2628:
	mov	1216,r13		! source line 1216
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2633 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2633  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1217,r13		! source line 1217
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2635 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2635 [i ] into _temp_2636
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
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
	store	r2,[r14+-136]
!   _temp_2634 = _temp_2636		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2634  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2637 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2637  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2639 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2639 [i ] into _temp_2640
!     make sure index expr is >= 0
	load	[r14+-168],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_2638 = *_temp_2640  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2638  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1220,r13		! source line 1220
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2641 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2641  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1221,r13		! source line 1221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2642 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2642  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2643 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2643  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1223,r13		! source line 1223
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2645) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2644  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2644  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2646 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2646  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0IF",r10
	mov	1226,r13		! source line 1226
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2650) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2649  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2649) then goto _Label_2648
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2648
!	jmp	_Label_2647
_Label_2647:
! THEN...
	mov	1227,r13		! source line 1227
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1227,r13		! source line 1227
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2652) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2651  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2651  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2653
_Label_2648:
! ELSE...
	mov	1229,r13		! source line 1229
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2654 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2654  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2653:
! CALL STATEMENT...
!   _temp_2655 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2655  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0IF",r10
	mov	1232,r13		! source line 1232
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2658) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_2656 else goto _Label_2657
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2657
	jmp	_Label_2656
_Label_2656:
! THEN...
	mov	1233,r13		! source line 1233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2659 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2659  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2660
_Label_2657:
! ELSE...
	mov	1235,r13		! source line 1235
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2661 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2661  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2660:
! CALL STATEMENT...
!   _temp_2662 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2662  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0IF",r10
	mov	1238,r13		! source line 1238
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2665) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_2663 else goto _Label_2664
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2664
	jmp	_Label_2663
_Label_2663:
! THEN...
	mov	1239,r13		! source line 1239
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2666 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2666  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2667
_Label_2664:
! ELSE...
	mov	1241,r13		! source line 1241
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2668 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2668  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2667:
! CALL STATEMENT...
!   _temp_2669 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2669  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0IF",r10
	mov	1244,r13		! source line 1244
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2672) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_2670 else goto _Label_2671
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2671
	jmp	_Label_2670
_Label_2670:
! THEN...
	mov	1245,r13		! source line 1245
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2673 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2673  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2674
_Label_2671:
! ELSE...
	mov	1247,r13		! source line 1247
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2675 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2675  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2674:
! CALL STATEMENT...
!   _temp_2676 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2676  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0IF",r10
	mov	1250,r13		! source line 1250
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2679) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_2677 else goto _Label_2678
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2678
	jmp	_Label_2677
_Label_2677:
! THEN...
	mov	1251,r13		! source line 1251
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2680 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2680  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2681
_Label_2678:
! ELSE...
	mov	1253,r13		! source line 1253
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2682 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2682  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2681:
! CALL STATEMENT...
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2629:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2627
! END FOR
_Label_2630:
! RETURN STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_2683
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2684
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2685
	.word	-12
	.word	4
	.word	_Label_2686
	.word	-16
	.word	4
	.word	_Label_2687
	.word	-20
	.word	4
	.word	_Label_2688
	.word	-24
	.word	4
	.word	_Label_2689
	.word	-28
	.word	4
	.word	_Label_2690
	.word	-32
	.word	4
	.word	_Label_2691
	.word	-36
	.word	4
	.word	_Label_2692
	.word	-40
	.word	4
	.word	_Label_2693
	.word	-44
	.word	4
	.word	_Label_2694
	.word	-48
	.word	4
	.word	_Label_2695
	.word	-52
	.word	4
	.word	_Label_2696
	.word	-56
	.word	4
	.word	_Label_2697
	.word	-60
	.word	4
	.word	_Label_2698
	.word	-64
	.word	4
	.word	_Label_2699
	.word	-68
	.word	4
	.word	_Label_2700
	.word	-72
	.word	4
	.word	_Label_2701
	.word	-76
	.word	4
	.word	_Label_2702
	.word	-80
	.word	4
	.word	_Label_2703
	.word	-84
	.word	4
	.word	_Label_2704
	.word	-88
	.word	4
	.word	_Label_2705
	.word	-92
	.word	4
	.word	_Label_2706
	.word	-96
	.word	4
	.word	_Label_2707
	.word	-100
	.word	4
	.word	_Label_2708
	.word	-104
	.word	4
	.word	_Label_2709
	.word	-108
	.word	4
	.word	_Label_2710
	.word	-112
	.word	4
	.word	_Label_2711
	.word	-116
	.word	4
	.word	_Label_2712
	.word	-120
	.word	4
	.word	_Label_2713
	.word	-124
	.word	4
	.word	_Label_2714
	.word	-128
	.word	4
	.word	_Label_2715
	.word	-132
	.word	4
	.word	_Label_2716
	.word	-136
	.word	4
	.word	_Label_2717
	.word	-140
	.word	4
	.word	_Label_2718
	.word	-144
	.word	4
	.word	_Label_2719
	.word	-148
	.word	4
	.word	_Label_2720
	.word	-152
	.word	4
	.word	_Label_2721
	.word	-156
	.word	4
	.word	_Label_2722
	.word	-160
	.word	4
	.word	_Label_2723
	.word	-164
	.word	4
	.word	_Label_2724
	.word	-168
	.word	4
	.word	0
_Label_2683:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2684:
	.ascii	"Pself\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2724:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_4061:
	push	r0
	sub	r1,1,r1
	bne	_Label_4061
	mov	1261,r13		! source line 1261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0RE",r10
!   _temp_2727 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2727 [entry ] into _temp_2728
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2726 = *_temp_2728  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2725 = _temp_2726 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2725  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_2729
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2730
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2731
	.word	12
	.word	4
	.word	_Label_2732
	.word	-12
	.word	4
	.word	_Label_2733
	.word	-16
	.word	4
	.word	_Label_2734
	.word	-20
	.word	4
	.word	_Label_2735
	.word	-24
	.word	4
	.word	0
_Label_2729:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2730:
	.ascii	"Pself\0"
	.align
_Label_2731:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_4062:
	push	r0
	sub	r1,1,r1
	bne	_Label_4062
	mov	1271,r13		! source line 1271
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0RE",r10
!   _temp_2738 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2738 [entry ] into _temp_2739
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2737 = *_temp_2739  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2736 = _temp_2737 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2736  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_2740
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2741
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2742
	.word	12
	.word	4
	.word	_Label_2743
	.word	-12
	.word	4
	.word	_Label_2744
	.word	-16
	.word	4
	.word	_Label_2745
	.word	-20
	.word	4
	.word	_Label_2746
	.word	-24
	.word	4
	.word	0
_Label_2740:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2741:
	.ascii	"Pself\0"
	.align
_Label_2742:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_4063:
	push	r0
	sub	r1,1,r1
	bne	_Label_4063
	mov	1280,r13		! source line 1280
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0AS",r10
!   _temp_2747 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2747 [entry ] into _temp_2748
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_2752 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2752 [entry ] into _temp_2753
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2751 = *_temp_2753  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2750 = _temp_2751 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2749 = _temp_2750 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2748 = _temp_2749  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_2754
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2755
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2756
	.word	12
	.word	4
	.word	_Label_2757
	.word	16
	.word	4
	.word	_Label_2758
	.word	-12
	.word	4
	.word	_Label_2759
	.word	-16
	.word	4
	.word	_Label_2760
	.word	-20
	.word	4
	.word	_Label_2761
	.word	-24
	.word	4
	.word	_Label_2762
	.word	-28
	.word	4
	.word	_Label_2763
	.word	-32
	.word	4
	.word	_Label_2764
	.word	-36
	.word	4
	.word	0
_Label_2754:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2755:
	.ascii	"Pself\0"
	.align
_Label_2756:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2757:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_4064:
	push	r0
	sub	r1,1,r1
	bne	_Label_4064
	mov	1290,r13		! source line 1290
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0RE",r10
!   _temp_2768 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2768 [entry ] into _temp_2769
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2767 = *_temp_2769  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2766 = _temp_2767 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2766) then goto _Label_2770
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2770
!   _temp_2765 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2771
_Label_2770:
!   _temp_2765 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2771:
!   ReturnResult: _temp_2765  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_2772
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2773
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2774
	.word	12
	.word	4
	.word	_Label_2775
	.word	-16
	.word	4
	.word	_Label_2776
	.word	-20
	.word	4
	.word	_Label_2777
	.word	-24
	.word	4
	.word	_Label_2778
	.word	-28
	.word	4
	.word	_Label_2779
	.word	-9
	.word	1
	.word	0
_Label_2772:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2773:
	.ascii	"Pself\0"
	.align
_Label_2774:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2779:
	.byte	'C'
	.ascii	"_temp_2765\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_4065:
	push	r0
	sub	r1,1,r1
	bne	_Label_4065
	mov	1299,r13		! source line 1299
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0RE",r10
!   _temp_2783 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2783 [entry ] into _temp_2784
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2782 = *_temp_2784  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2781 = _temp_2782 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2781) then goto _Label_2785
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2785
!   _temp_2780 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2786
_Label_2785:
!   _temp_2780 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2786:
!   ReturnResult: _temp_2780  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_2787
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2788
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2789
	.word	12
	.word	4
	.word	_Label_2790
	.word	-16
	.word	4
	.word	_Label_2791
	.word	-20
	.word	4
	.word	_Label_2792
	.word	-24
	.word	4
	.word	_Label_2793
	.word	-28
	.word	4
	.word	_Label_2794
	.word	-9
	.word	1
	.word	0
_Label_2787:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2788:
	.ascii	"Pself\0"
	.align
_Label_2789:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2794:
	.byte	'C'
	.ascii	"_temp_2780\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_4066:
	push	r0
	sub	r1,1,r1
	bne	_Label_4066
	mov	1308,r13		! source line 1308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0RE",r10
!   _temp_2798 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2798 [entry ] into _temp_2799
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2797 = *_temp_2799  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2796 = _temp_2797 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2796) then goto _Label_2800
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2800
!   _temp_2795 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2801
_Label_2800:
!   _temp_2795 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2801:
!   ReturnResult: _temp_2795  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_2802
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2803
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2804
	.word	12
	.word	4
	.word	_Label_2805
	.word	-16
	.word	4
	.word	_Label_2806
	.word	-20
	.word	4
	.word	_Label_2807
	.word	-24
	.word	4
	.word	_Label_2808
	.word	-28
	.word	4
	.word	_Label_2809
	.word	-9
	.word	1
	.word	0
_Label_2802:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2803:
	.ascii	"Pself\0"
	.align
_Label_2804:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2809:
	.byte	'C'
	.ascii	"_temp_2795\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_4067:
	push	r0
	sub	r1,1,r1
	bne	_Label_4067
	mov	1317,r13		! source line 1317
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1321,r13		! source line 1321
	mov	"\0\0RE",r10
!   _temp_2813 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2813 [entry ] into _temp_2814
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2812 = *_temp_2814  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2811 = _temp_2812 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2811) then goto _Label_2815
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2815
!   _temp_2810 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2816
_Label_2815:
!   _temp_2810 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2816:
!   ReturnResult: _temp_2810  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_2817
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2818
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2819
	.word	12
	.word	4
	.word	_Label_2820
	.word	-16
	.word	4
	.word	_Label_2821
	.word	-20
	.word	4
	.word	_Label_2822
	.word	-24
	.word	4
	.word	_Label_2823
	.word	-28
	.word	4
	.word	_Label_2824
	.word	-9
	.word	1
	.word	0
_Label_2817:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2818:
	.ascii	"Pself\0"
	.align
_Label_2819:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2824:
	.byte	'C'
	.ascii	"_temp_2810\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_4068:
	push	r0
	sub	r1,1,r1
	bne	_Label_4068
	mov	1326,r13		! source line 1326
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0AS",r10
!   _temp_2825 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2825 [entry ] into _temp_2826
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2829 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2829 [entry ] into _temp_2830
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2828 = *_temp_2830  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2827 = _temp_2828 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2826 = _temp_2827  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_2831
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2832
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2833
	.word	12
	.word	4
	.word	_Label_2834
	.word	-12
	.word	4
	.word	_Label_2835
	.word	-16
	.word	4
	.word	_Label_2836
	.word	-20
	.word	4
	.word	_Label_2837
	.word	-24
	.word	4
	.word	_Label_2838
	.word	-28
	.word	4
	.word	_Label_2839
	.word	-32
	.word	4
	.word	0
_Label_2831:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2832:
	.ascii	"Pself\0"
	.align
_Label_2833:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_4069:
	push	r0
	sub	r1,1,r1
	bne	_Label_4069
	mov	1335,r13		! source line 1335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0AS",r10
!   _temp_2840 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2840 [entry ] into _temp_2841
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2844 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2844 [entry ] into _temp_2845
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2843 = *_temp_2845  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2842 = _temp_2843 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2841 = _temp_2842  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_2846
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2848
	.word	12
	.word	4
	.word	_Label_2849
	.word	-12
	.word	4
	.word	_Label_2850
	.word	-16
	.word	4
	.word	_Label_2851
	.word	-20
	.word	4
	.word	_Label_2852
	.word	-24
	.word	4
	.word	_Label_2853
	.word	-28
	.word	4
	.word	_Label_2854
	.word	-32
	.word	4
	.word	0
_Label_2846:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2847:
	.ascii	"Pself\0"
	.align
_Label_2848:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_4070:
	push	r0
	sub	r1,1,r1
	bne	_Label_4070
	mov	1344,r13		! source line 1344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1348,r13		! source line 1348
	mov	"\0\0AS",r10
!   _temp_2855 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2855 [entry ] into _temp_2856
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2859 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2859 [entry ] into _temp_2860
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2858 = *_temp_2860  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2857 = _temp_2858 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2856 = _temp_2857  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1348,r13		! source line 1348
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_2861
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2862
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2863
	.word	12
	.word	4
	.word	_Label_2864
	.word	-12
	.word	4
	.word	_Label_2865
	.word	-16
	.word	4
	.word	_Label_2866
	.word	-20
	.word	4
	.word	_Label_2867
	.word	-24
	.word	4
	.word	_Label_2868
	.word	-28
	.word	4
	.word	_Label_2869
	.word	-32
	.word	4
	.word	0
_Label_2861:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2862:
	.ascii	"Pself\0"
	.align
_Label_2863:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_4071:
	push	r0
	sub	r1,1,r1
	bne	_Label_4071
	mov	1353,r13		! source line 1353
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0AS",r10
!   _temp_2870 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2870 [entry ] into _temp_2871
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2874 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2874 [entry ] into _temp_2875
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2873 = *_temp_2875  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2872 = _temp_2873 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2871 = _temp_2872  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_2876
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2877
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2878
	.word	12
	.word	4
	.word	_Label_2879
	.word	-12
	.word	4
	.word	_Label_2880
	.word	-16
	.word	4
	.word	_Label_2881
	.word	-20
	.word	4
	.word	_Label_2882
	.word	-24
	.word	4
	.word	_Label_2883
	.word	-28
	.word	4
	.word	_Label_2884
	.word	-32
	.word	4
	.word	0
_Label_2876:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2877:
	.ascii	"Pself\0"
	.align
_Label_2878:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_4072:
	push	r0
	sub	r1,1,r1
	bne	_Label_4072
	mov	1362,r13		! source line 1362
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0AS",r10
!   _temp_2885 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2885 [entry ] into _temp_2886
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2889 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2889 [entry ] into _temp_2890
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2888 = *_temp_2890  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2887 = _temp_2888 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2886 = _temp_2887  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_2891
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2892
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2893
	.word	12
	.word	4
	.word	_Label_2894
	.word	-12
	.word	4
	.word	_Label_2895
	.word	-16
	.word	4
	.word	_Label_2896
	.word	-20
	.word	4
	.word	_Label_2897
	.word	-24
	.word	4
	.word	_Label_2898
	.word	-28
	.word	4
	.word	_Label_2899
	.word	-32
	.word	4
	.word	0
_Label_2891:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2892:
	.ascii	"Pself\0"
	.align
_Label_2893:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_4073:
	push	r0
	sub	r1,1,r1
	bne	_Label_4073
	mov	1371,r13		! source line 1371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0AS",r10
!   _temp_2900 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2900 [entry ] into _temp_2901
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2904 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2904 [entry ] into _temp_2905
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2903 = *_temp_2905  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2902 = _temp_2903 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2901 = _temp_2902  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_2906
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2907
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2908
	.word	12
	.word	4
	.word	_Label_2909
	.word	-12
	.word	4
	.word	_Label_2910
	.word	-16
	.word	4
	.word	_Label_2911
	.word	-20
	.word	4
	.word	_Label_2912
	.word	-24
	.word	4
	.word	_Label_2913
	.word	-28
	.word	4
	.word	_Label_2914
	.word	-32
	.word	4
	.word	0
_Label_2906:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2907:
	.ascii	"Pself\0"
	.align
_Label_2908:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_4074:
	push	r0
	sub	r1,1,r1
	bne	_Label_4074
	mov	1380,r13		! source line 1380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0AS",r10
!   _temp_2915 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2915 [entry ] into _temp_2916
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2919 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2919 [entry ] into _temp_2920
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2918 = *_temp_2920  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2917 = _temp_2918 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2916 = _temp_2917  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_2921
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2922
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2923
	.word	12
	.word	4
	.word	_Label_2924
	.word	-12
	.word	4
	.word	_Label_2925
	.word	-16
	.word	4
	.word	_Label_2926
	.word	-20
	.word	4
	.word	_Label_2927
	.word	-24
	.word	4
	.word	_Label_2928
	.word	-28
	.word	4
	.word	_Label_2929
	.word	-32
	.word	4
	.word	0
_Label_2921:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2922:
	.ascii	"Pself\0"
	.align
_Label_2923:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_4075:
	push	r0
	sub	r1,1,r1
	bne	_Label_4075
	mov	1389,r13		! source line 1389
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0AS",r10
!   _temp_2930 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2930 [entry ] into _temp_2931
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2934 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2934 [entry ] into _temp_2935
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2933 = *_temp_2935  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2932 = _temp_2933 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2931 = _temp_2932  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_2936
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2937
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2938
	.word	12
	.word	4
	.word	_Label_2939
	.word	-12
	.word	4
	.word	_Label_2940
	.word	-16
	.word	4
	.word	_Label_2941
	.word	-20
	.word	4
	.word	_Label_2942
	.word	-24
	.word	4
	.word	_Label_2943
	.word	-28
	.word	4
	.word	_Label_2944
	.word	-32
	.word	4
	.word	0
_Label_2936:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2937:
	.ascii	"Pself\0"
	.align
_Label_2938:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_4076:
	push	r0
	sub	r1,1,r1
	bne	_Label_4076
	mov	1398,r13		! source line 1398
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2946 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2946 [0 ] into _temp_2947
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2945 = _temp_2947		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2948 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2945  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2948  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1404,r13		! source line 1404
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_2949
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2950
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2951
	.word	-12
	.word	4
	.word	_Label_2952
	.word	-16
	.word	4
	.word	_Label_2953
	.word	-20
	.word	4
	.word	_Label_2954
	.word	-24
	.word	4
	.word	0
_Label_2949:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2950:
	.ascii	"Pself\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_4077:
	push	r0
	sub	r1,1,r1
	bne	_Label_4077
	mov	1409,r13		! source line 1409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2955
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2955
	jmp	_Label_2956
_Label_2955:
! THEN...
	mov	1425,r13		! source line 1425
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2957
_Label_2956:
! ELSE...
	mov	1426,r13		! source line 1426
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2959		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2959
!	jmp	_Label_2958
_Label_2958:
! THEN...
	mov	1427,r13		! source line 1427
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2959:
! END IF...
_Label_2957:
! ASSIGNMENT STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0WH",r10
_Label_2960:
!	jmp	_Label_2961
_Label_2961:
	mov	1433,r13		! source line 1433
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2964		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2964
!	jmp	_Label_2963
_Label_2963:
! THEN...
	mov	1435,r13		! source line 1435
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2965 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2965  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1435,r13		! source line 1435
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2964:
! IF STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0IF",r10
	mov	1438,r13		! source line 1438
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2969) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2968  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2968 then goto _Label_2967 else goto _Label_2966
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2966
	jmp	_Label_2967
_Label_2966:
! THEN...
	mov	1439,r13		! source line 1439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2970 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2970  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1439,r13		! source line 1439
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2967:
! ASSIGNMENT STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0AS",r10
	mov	1442,r13		! source line 1442
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2972) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2971  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2971 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0WH",r10
_Label_2973:
!   if offset >= 8192 then goto _Label_2975		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2975
!	jmp	_Label_2974
_Label_2974:
	mov	1444,r13		! source line 1444
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2976 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2976  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2978		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2978
!	jmp	_Label_2977
_Label_2977:
! THEN...
	mov	1453,r13		! source line 1453
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2978:
! END WHILE...
	jmp	_Label_2973
_Label_2975:
! ASSIGNMENT STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1457,r13		! source line 1457
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2960
_Label_2962:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2979
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2980
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2981
	.word	12
	.word	4
	.word	_Label_2982
	.word	16
	.word	4
	.word	_Label_2983
	.word	20
	.word	4
	.word	_Label_2984
	.word	-9
	.word	1
	.word	_Label_2985
	.word	-16
	.word	4
	.word	_Label_2986
	.word	-20
	.word	4
	.word	_Label_2987
	.word	-24
	.word	4
	.word	_Label_2988
	.word	-28
	.word	4
	.word	_Label_2989
	.word	-10
	.word	1
	.word	_Label_2990
	.word	-32
	.word	4
	.word	_Label_2991
	.word	-36
	.word	4
	.word	_Label_2992
	.word	-40
	.word	4
	.word	_Label_2993
	.word	-44
	.word	4
	.word	_Label_2994
	.word	-48
	.word	4
	.word	0
_Label_2979:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2980:
	.ascii	"Pself\0"
	.align
_Label_2981:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2982:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2983:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2984:
	.byte	'C'
	.ascii	"_temp_2976\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2971\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_2989:
	.byte	'C'
	.ascii	"_temp_2968\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2991:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2992:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2993:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2994:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_4078:
	push	r0
	sub	r1,1,r1
	bne	_Label_4078
	mov	1463,r13		! source line 1463
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2995
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2995
	jmp	_Label_2996
_Label_2995:
! THEN...
	mov	1475,r13		! source line 1475
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2997
_Label_2996:
! ELSE...
	mov	1476,r13		! source line 1476
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2999		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2999
!	jmp	_Label_2998
_Label_2998:
! THEN...
	mov	1477,r13		! source line 1477
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2999:
! END IF...
_Label_2997:
! ASSIGNMENT STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0WH",r10
_Label_3000:
!	jmp	_Label_3001
_Label_3001:
	mov	1481,r13		! source line 1481
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3006		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3006
	jmp	_Label_3003
_Label_3006:
	mov	1483,r13		! source line 1483
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3008) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_3007  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_3007 then goto _Label_3005 else goto _Label_3003
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_3003
	jmp	_Label_3005
_Label_3005:
	mov	1484,r13		! source line 1484
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3010) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_3009  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3009 then goto _Label_3004 else goto _Label_3003
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3003
	jmp	_Label_3004
_Label_3003:
! THEN...
	mov	1485,r13		! source line 1485
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3004:
! ASSIGNMENT STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0AS",r10
	mov	1487,r13		! source line 1487
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3012) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3011  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_3011 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0WH",r10
_Label_3013:
!   if offset >= 8192 then goto _Label_3015		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3015
!	jmp	_Label_3014
_Label_3014:
	mov	1488,r13		! source line 1488
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3016 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_3016  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_3018		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3018
!	jmp	_Label_3017
_Label_3017:
! THEN...
	mov	1495,r13		! source line 1495
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3018:
! END WHILE...
	jmp	_Label_3013
_Label_3015:
! ASSIGNMENT STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_3000
_Label_3002:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_3019
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3020
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3021
	.word	12
	.word	4
	.word	_Label_3022
	.word	16
	.word	4
	.word	_Label_3023
	.word	20
	.word	4
	.word	_Label_3024
	.word	-9
	.word	1
	.word	_Label_3025
	.word	-16
	.word	4
	.word	_Label_3026
	.word	-20
	.word	4
	.word	_Label_3027
	.word	-24
	.word	4
	.word	_Label_3028
	.word	-10
	.word	1
	.word	_Label_3029
	.word	-28
	.word	4
	.word	_Label_3030
	.word	-11
	.word	1
	.word	_Label_3031
	.word	-32
	.word	4
	.word	_Label_3032
	.word	-36
	.word	4
	.word	_Label_3033
	.word	-40
	.word	4
	.word	_Label_3034
	.word	-44
	.word	4
	.word	0
_Label_3019:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_3020:
	.ascii	"Pself\0"
	.align
_Label_3021:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3022:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3023:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3024:
	.byte	'C'
	.ascii	"_temp_3016\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3028:
	.byte	'C'
	.ascii	"_temp_3009\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3030:
	.byte	'C'
	.ascii	"_temp_3007\0"
	.align
_Label_3031:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3032:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3033:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3034:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_4079:
	push	r0
	sub	r1,1,r1
	bne	_Label_4079
	mov	1505,r13		! source line 1505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0IF",r10
	mov	1529,r13		! source line 1529
	mov	"\0\0SE",r10
!   _temp_3038 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3039) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3038  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_3037  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_3037 >= 4 then goto _Label_3036		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3036
!	jmp	_Label_3035
_Label_3035:
! THEN...
	mov	1532,r13		! source line 1532
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1532,r13		! source line 1532
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3036:
! IF STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3041		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3041
!	jmp	_Label_3040
_Label_3040:
! THEN...
	mov	1537,r13		! source line 1537
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3041:
! ASSIGNMENT STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1542,r13		! source line 1542
	mov	"\0\0RE",r10
	mov	1542,r13		! source line 1542
	mov	"\0\0SE",r10
!   _temp_3044 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3043 = _temp_3044 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3045 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3046) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3043  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3045  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_3042  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3042  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_3047
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3048
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3049
	.word	12
	.word	4
	.word	_Label_3050
	.word	16
	.word	4
	.word	_Label_3051
	.word	20
	.word	4
	.word	_Label_3052
	.word	-12
	.word	4
	.word	_Label_3053
	.word	-16
	.word	4
	.word	_Label_3054
	.word	-20
	.word	4
	.word	_Label_3055
	.word	-24
	.word	4
	.word	_Label_3056
	.word	-28
	.word	4
	.word	_Label_3057
	.word	-32
	.word	4
	.word	_Label_3058
	.word	-36
	.word	4
	.word	_Label_3059
	.word	-40
	.word	4
	.word	_Label_3060
	.word	-44
	.word	4
	.word	0
_Label_3047:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3048:
	.ascii	"Pself\0"
	.align
_Label_3049:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3050:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3051:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3060:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3061
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3061:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3062
	.word	_sourceFileName
	.word	310		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3062:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_4080:
	push	r0
	sub	r1,1,r1
	bne	_Label_4080
	mov	2259,r13		! source line 2259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3063 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3063  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2260,r13		! source line 2260
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0SE",r10
!   _temp_3065 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0SE",r10
!   _temp_3067 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
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
	mov	2270,r13		! source line 2270
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_3068
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3069
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3070
	.word	-12
	.word	4
	.word	_Label_3071
	.word	-16
	.word	4
	.word	_Label_3072
	.word	-20
	.word	4
	.word	_Label_3073
	.word	-24
	.word	4
	.word	_Label_3074
	.word	-28
	.word	4
	.word	0
_Label_3068:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3069:
	.ascii	"Pself\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_3067\0"
	.align
_Label_3071:
	.byte	'?'
	.ascii	"_temp_3066\0"
	.align
_Label_3072:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3073:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3074:
	.byte	'?'
	.ascii	"_temp_3063\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_4081:
	push	r0
	sub	r1,1,r1
	bne	_Label_4081
	mov	2275,r13		! source line 2275
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0SE",r10
!   _temp_3075 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0WH",r10
_Label_3076:
!	jmp	_Label_3077
_Label_3077:
	mov	2289,r13		! source line 2289
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0SE",r10
!   _temp_3079 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3080) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_3079  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0SE",r10
!   _temp_3081 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2296,r13		! source line 2296
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3090 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3084
	cmp	r1,2
	be	_Label_3085
	cmp	r1,3
	be	_Label_3086
	cmp	r1,4
	be	_Label_3087
	cmp	r1,5
	be	_Label_3088
	cmp	r1,6
	be	_Label_3089
	jmp	_Label_3082
! CASE 1...
_Label_3084:
! SEND STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0SE",r10
!   _temp_3091 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3085:
! CALL STATEMENT...
!   _temp_3092 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3092  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2301,r13		! source line 2301
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3086:
! CALL STATEMENT...
!   _temp_3093 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3093  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2303,r13		! source line 2303
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3087:
! CALL STATEMENT...
!   _temp_3094 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3094  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2305,r13		! source line 2305
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3088:
! BREAK STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0BR",r10
	jmp	_Label_3083
! CASE 6...
_Label_3089:
! CALL STATEMENT...
!   _temp_3095 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3095  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2311,r13		! source line 2311
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3082:
! CALL STATEMENT...
!   _temp_3096 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3096  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2313,r13		! source line 2313
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3083:
! END WHILE...
	jmp	_Label_3076
_Label_3078:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3097
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3098
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3099
	.word	12
	.word	4
	.word	_Label_3100
	.word	16
	.word	4
	.word	_Label_3101
	.word	20
	.word	4
	.word	_Label_3102
	.word	-12
	.word	4
	.word	_Label_3103
	.word	-16
	.word	4
	.word	_Label_3104
	.word	-20
	.word	4
	.word	_Label_3105
	.word	-24
	.word	4
	.word	_Label_3106
	.word	-28
	.word	4
	.word	_Label_3107
	.word	-32
	.word	4
	.word	_Label_3108
	.word	-36
	.word	4
	.word	_Label_3109
	.word	-40
	.word	4
	.word	_Label_3110
	.word	-44
	.word	4
	.word	_Label_3111
	.word	-48
	.word	4
	.word	_Label_3112
	.word	-52
	.word	4
	.word	0
_Label_3097:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3098:
	.ascii	"Pself\0"
	.align
_Label_3099:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3100:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3101:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3096\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3081\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3080\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2322,r13		! source line 2322
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2340,r13		! source line 2340
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2342,r13		! source line 2342
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_3113
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3114
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3115
	.word	12
	.word	4
	.word	_Label_3116
	.word	16
	.word	4
	.word	_Label_3117
	.word	20
	.word	4
	.word	_Label_3118
	.word	24
	.word	4
	.word	0
_Label_3113:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3114:
	.ascii	"Pself\0"
	.align
_Label_3115:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3116:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3117:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3118:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_4082:
	push	r0
	sub	r1,1,r1
	bne	_Label_4082
	mov	2348,r13		! source line 2348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0SE",r10
!   _temp_3119 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0WH",r10
_Label_3120:
!	jmp	_Label_3121
_Label_3121:
	mov	2361,r13		! source line 2361
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0SE",r10
!   _temp_3123 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3124) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_3123  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0SE",r10
!   _temp_3125 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2367,r13		! source line 2367
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3134 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3128
	cmp	r1,2
	be	_Label_3129
	cmp	r1,3
	be	_Label_3130
	cmp	r1,4
	be	_Label_3131
	cmp	r1,5
	be	_Label_3132
	cmp	r1,6
	be	_Label_3133
	jmp	_Label_3126
! CASE 1...
_Label_3128:
! SEND STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0SE",r10
!   _temp_3135 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3129:
! CALL STATEMENT...
!   _temp_3136 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3136  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2372,r13		! source line 2372
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3130:
! CALL STATEMENT...
!   _temp_3137 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3137  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2374,r13		! source line 2374
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3131:
! CALL STATEMENT...
!   _temp_3138 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3138  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2376,r13		! source line 2376
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3132:
! BREAK STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0BR",r10
	jmp	_Label_3127
! CASE 6...
_Label_3133:
! CALL STATEMENT...
!   _temp_3139 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3139  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2382,r13		! source line 2382
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3126:
! CALL STATEMENT...
!   _temp_3140 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3140  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2384,r13		! source line 2384
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3127:
! END WHILE...
	jmp	_Label_3120
_Label_3122:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3141
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3142
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3143
	.word	12
	.word	4
	.word	_Label_3144
	.word	16
	.word	4
	.word	_Label_3145
	.word	20
	.word	4
	.word	_Label_3146
	.word	-12
	.word	4
	.word	_Label_3147
	.word	-16
	.word	4
	.word	_Label_3148
	.word	-20
	.word	4
	.word	_Label_3149
	.word	-24
	.word	4
	.word	_Label_3150
	.word	-28
	.word	4
	.word	_Label_3151
	.word	-32
	.word	4
	.word	_Label_3152
	.word	-36
	.word	4
	.word	_Label_3153
	.word	-40
	.word	4
	.word	_Label_3154
	.word	-44
	.word	4
	.word	_Label_3155
	.word	-48
	.word	4
	.word	_Label_3156
	.word	-52
	.word	4
	.word	0
_Label_3141:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3142:
	.ascii	"Pself\0"
	.align
_Label_3143:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3144:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3145:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2393,r13		! source line 2393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_3157
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3158
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3159
	.word	12
	.word	4
	.word	_Label_3160
	.word	16
	.word	4
	.word	_Label_3161
	.word	20
	.word	4
	.word	_Label_3162
	.word	24
	.word	4
	.word	0
_Label_3157:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3158:
	.ascii	"Pself\0"
	.align
_Label_3159:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3160:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3161:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3162:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3163
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_3163:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3164
	.word	_sourceFileName
	.word	333		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3164:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_4083:
	push	r0
	sub	r1,1,r1
	bne	_Label_4083
	mov	2424,r13		! source line 2424
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3165 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3165  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2431,r13		! source line 2431
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0SE",r10
!   _temp_3167 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0SE",r10
!   _temp_3170 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0AS",r10
!   _temp_3171 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3173 = &_temp_3172
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3173 = _temp_3173 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3175 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4084:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4084
!   _temp_3175 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3177:
!   Data Move: *_temp_3173 = _temp_3175  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4085:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4085
!   _temp_3173 = _temp_3173 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3174 = _temp_3174 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3174) then goto _Label_3177
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3177
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3178 = &_temp_3172
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4086
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4086:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3171 = *_temp_3178  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4087:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4087
! FOR STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3183 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3184 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3183  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3179:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3184 then goto _Label_3182		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3182
_Label_3180:
	mov	2441,r13		! source line 2441
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0AS",r10
!   _temp_3185 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3185 [i ] into _temp_3186
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_3187 = _temp_3186 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3187 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0SE",r10
!   _temp_3188 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3188 [i ] into _temp_3189
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0SE",r10
!   _temp_3191 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3191 [i ] into _temp_3192
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_3190 = _temp_3192		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3193 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3190  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3181:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3179
! END FOR
_Label_3182:
! ASSIGNMENT STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2450,r13		! source line 2450
	mov	"\0\0SE",r10
!   _temp_3196 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0AS",r10
!   _temp_3197 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3199 = &_temp_3198
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3199 = _temp_3199 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3201 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4088:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4088
!   _temp_3201 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3203:
!   Data Move: *_temp_3199 = _temp_3201  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4089:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4089
!   _temp_3199 = _temp_3199 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3200 = _temp_3200 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3200) then goto _Label_3203
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3203
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3204 = &_temp_3198
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4090
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4090:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3197 = *_temp_3204  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4091:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4091
! FOR STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3209 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3210 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3209  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3205:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3210 then goto _Label_3208		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3208
_Label_3206:
	mov	2453,r13		! source line 2453
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   _temp_3211 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3211 [i ] into _temp_3212
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_3213 = _temp_3212 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3213 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0SE",r10
!   _temp_3215 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3215 [i ] into _temp_3216
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_3214 = _temp_3216		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3217 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3214  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3207:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3205
! END FOR
_Label_3208:
! ASSIGNMENT STATEMENT...
	mov	2459,r13		! source line 2459
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4092:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4092
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0AS",r10
!   _temp_3219 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3220 = _temp_3219 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3220 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0AS",r10
	mov	2465,r13		! source line 2465
	mov	"\0\0SE",r10
!   _temp_3221 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2466,r13		! source line 2466
	mov	"\0\0SE",r10
!   _temp_3222 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2466,r13		! source line 2466
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_3223
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3224
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3225
	.word	-12
	.word	4
	.word	_Label_3226
	.word	-16
	.word	4
	.word	_Label_3227
	.word	-20
	.word	4
	.word	_Label_3228
	.word	-24
	.word	4
	.word	_Label_3229
	.word	-28
	.word	4
	.word	_Label_3230
	.word	-32
	.word	4
	.word	_Label_3231
	.word	-36
	.word	4
	.word	_Label_3232
	.word	-40
	.word	4
	.word	_Label_3233
	.word	-44
	.word	4
	.word	_Label_3234
	.word	-48
	.word	4
	.word	_Label_3235
	.word	-52
	.word	4
	.word	_Label_3236
	.word	-56
	.word	4
	.word	_Label_3237
	.word	-60
	.word	4
	.word	_Label_3238
	.word	-64
	.word	4
	.word	_Label_3239
	.word	-68
	.word	4
	.word	_Label_3240
	.word	-72
	.word	4
	.word	_Label_3241
	.word	-100
	.word	28
	.word	_Label_3242
	.word	-104
	.word	4
	.word	_Label_3243
	.word	-108
	.word	4
	.word	_Label_3244
	.word	-392
	.word	284
	.word	_Label_3245
	.word	-396
	.word	4
	.word	_Label_3246
	.word	-400
	.word	4
	.word	_Label_3247
	.word	-404
	.word	4
	.word	_Label_3248
	.word	-408
	.word	4
	.word	_Label_3249
	.word	-412
	.word	4
	.word	_Label_3250
	.word	-416
	.word	4
	.word	_Label_3251
	.word	-420
	.word	4
	.word	_Label_3252
	.word	-424
	.word	4
	.word	_Label_3253
	.word	-428
	.word	4
	.word	_Label_3254
	.word	-432
	.word	4
	.word	_Label_3255
	.word	-436
	.word	4
	.word	_Label_3256
	.word	-440
	.word	4
	.word	_Label_3257
	.word	-444
	.word	4
	.word	_Label_3258
	.word	-448
	.word	4
	.word	_Label_3259
	.word	-452
	.word	4
	.word	_Label_3260
	.word	-456
	.word	4
	.word	_Label_3261
	.word	-460
	.word	4
	.word	_Label_3262
	.word	-500
	.word	40
	.word	_Label_3263
	.word	-504
	.word	4
	.word	_Label_3264
	.word	-508
	.word	4
	.word	_Label_3265
	.word	-912
	.word	404
	.word	_Label_3266
	.word	-916
	.word	4
	.word	_Label_3267
	.word	-920
	.word	4
	.word	_Label_3268
	.word	-924
	.word	4
	.word	_Label_3269
	.word	-928
	.word	4
	.word	_Label_3270
	.word	-932
	.word	4
	.word	_Label_3271
	.word	-936
	.word	4
	.word	_Label_3272
	.word	-940
	.word	4
	.word	_Label_3273
	.word	-944
	.word	4
	.word	0
_Label_3223:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3224:
	.ascii	"Pself\0"
	.align
_Label_3225:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3226:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3232:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3233:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3234:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3235:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3236:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3237:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3238:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3244:
	.byte	'?'
	.ascii	"_temp_3198\0"
	.align
_Label_3245:
	.byte	'?'
	.ascii	"_temp_3197\0"
	.align
_Label_3246:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3247:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3248:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3249:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3192\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3170\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3169\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3168\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3167\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3166\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3273:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_4093:
	push	r0
	sub	r1,1,r1
	bne	_Label_4093
	mov	2473,r13		! source line 2473
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0SE",r10
!   _temp_3274 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_3275 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3275  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2476,r13		! source line 2476
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2477,r13		! source line 2477
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3280 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3281 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3280  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3276:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3281 then goto _Label_3279		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3279
_Label_3277:
	mov	2477,r13		! source line 2477
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3282 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3282  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2478,r13		! source line 2478
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2479,r13		! source line 2479
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3283 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3283  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2480,r13		! source line 2480
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0SE",r10
!   _temp_3284 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3284 [i ] into _temp_3285
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3278:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3276
! END FOR
_Label_3279:
! CALL STATEMENT...
!   _temp_3286 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3286  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2483,r13		! source line 2483
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0SE",r10
!   _temp_3287 = _function_186_printFCB
	set	_function_186_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3288 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3287  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2485,r13		! source line 2485
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3289 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3289  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2486,r13		! source line 2486
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3294 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3295 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3294  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3290:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3295 then goto _Label_3293		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3293
_Label_3291:
	mov	2487,r13		! source line 2487
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3296 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3296  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2488,r13		! source line 2488
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2489,r13		! source line 2489
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3297 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3297  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2490,r13		! source line 2490
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3299 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3299 [i ] into _temp_3300
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_3298 = _temp_3300		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3298  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2491,r13		! source line 2491
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3301 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3301  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2492,r13		! source line 2492
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2493,r13		! source line 2493
	mov	"\0\0SE",r10
!   _temp_3302 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3302 [i ] into _temp_3303
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3292:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3290
! END FOR
_Label_3293:
! CALL STATEMENT...
!   _temp_3304 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3304  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2495,r13		! source line 2495
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0SE",r10
!   _temp_3305 = _function_185_printOpen
	set	_function_185_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3306 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3305  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2497,r13		! source line 2497
	mov	"\0\0SE",r10
!   _temp_3307 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2497,r13		! source line 2497
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_3308
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3309
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3310
	.word	-12
	.word	4
	.word	_Label_3311
	.word	-16
	.word	4
	.word	_Label_3312
	.word	-20
	.word	4
	.word	_Label_3313
	.word	-24
	.word	4
	.word	_Label_3314
	.word	-28
	.word	4
	.word	_Label_3315
	.word	-32
	.word	4
	.word	_Label_3316
	.word	-36
	.word	4
	.word	_Label_3317
	.word	-40
	.word	4
	.word	_Label_3318
	.word	-44
	.word	4
	.word	_Label_3319
	.word	-48
	.word	4
	.word	_Label_3320
	.word	-52
	.word	4
	.word	_Label_3321
	.word	-56
	.word	4
	.word	_Label_3322
	.word	-60
	.word	4
	.word	_Label_3323
	.word	-64
	.word	4
	.word	_Label_3324
	.word	-68
	.word	4
	.word	_Label_3325
	.word	-72
	.word	4
	.word	_Label_3326
	.word	-76
	.word	4
	.word	_Label_3327
	.word	-80
	.word	4
	.word	_Label_3328
	.word	-84
	.word	4
	.word	_Label_3329
	.word	-88
	.word	4
	.word	_Label_3330
	.word	-92
	.word	4
	.word	_Label_3331
	.word	-96
	.word	4
	.word	_Label_3332
	.word	-100
	.word	4
	.word	_Label_3333
	.word	-104
	.word	4
	.word	_Label_3334
	.word	-108
	.word	4
	.word	_Label_3335
	.word	-112
	.word	4
	.word	_Label_3336
	.word	-116
	.word	4
	.word	0
_Label_3308:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3309:
	.ascii	"Pself\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3307\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3306\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3305\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3304\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3301\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3299\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3298\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3294\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3289\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3288\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3287\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3286\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3285\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3283\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3282\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3281\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3280\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3275\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3274\0"
	.align
_Label_3336:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_4094:
	push	r0
	sub	r1,1,r1
	bne	_Label_4094
	mov	2502,r13		! source line 2502
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0AS",r10
	mov	2518,r13		! source line 2518
	mov	"\0\0SE",r10
!   _temp_3337 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3338
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3338
	jmp	_Label_3339
_Label_3338:
! THEN...
	mov	2520,r13		! source line 2520
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3339:
! SEND STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0SE",r10
!   _temp_3340 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0WH",r10
_Label_3341:
	mov	2525,r13		! source line 2525
	mov	"\0\0SE",r10
!   _temp_3344 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_3342 else goto _Label_3343
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3343
	jmp	_Label_3342
_Label_3342:
	mov	2525,r13		! source line 2525
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0SE",r10
!   _temp_3345 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3346 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3345  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3341
_Label_3343:
! ASSIGNMENT STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0AS",r10
	mov	2528,r13		! source line 2528
	mov	"\0\0SE",r10
!   _temp_3347 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3348 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3348 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3349 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3349 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3350 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3350 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0SE",r10
!   _temp_3351 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2538,r13		! source line 2538
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_3352
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3353
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3354
	.word	12
	.word	4
	.word	_Label_3355
	.word	-12
	.word	4
	.word	_Label_3356
	.word	-16
	.word	4
	.word	_Label_3357
	.word	-20
	.word	4
	.word	_Label_3358
	.word	-24
	.word	4
	.word	_Label_3359
	.word	-28
	.word	4
	.word	_Label_3360
	.word	-32
	.word	4
	.word	_Label_3361
	.word	-36
	.word	4
	.word	_Label_3362
	.word	-40
	.word	4
	.word	_Label_3363
	.word	-44
	.word	4
	.word	_Label_3364
	.word	-48
	.word	4
	.word	_Label_3365
	.word	-52
	.word	4
	.word	_Label_3366
	.word	-56
	.word	4
	.word	0
_Label_3352:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3353:
	.ascii	"Pself\0"
	.align
_Label_3354:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3355:
	.byte	'?'
	.ascii	"_temp_3351\0"
	.align
_Label_3356:
	.byte	'?'
	.ascii	"_temp_3350\0"
	.align
_Label_3357:
	.byte	'?'
	.ascii	"_temp_3349\0"
	.align
_Label_3358:
	.byte	'?'
	.ascii	"_temp_3348\0"
	.align
_Label_3359:
	.byte	'?'
	.ascii	"_temp_3347\0"
	.align
_Label_3360:
	.byte	'?'
	.ascii	"_temp_3346\0"
	.align
_Label_3361:
	.byte	'?'
	.ascii	"_temp_3345\0"
	.align
_Label_3362:
	.byte	'?'
	.ascii	"_temp_3344\0"
	.align
_Label_3363:
	.byte	'?'
	.ascii	"_temp_3340\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3337\0"
	.align
_Label_3365:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3366:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_4095:
	push	r0
	sub	r1,1,r1
	bne	_Label_4095
	mov	2543,r13		! source line 2543
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2571,r13		! source line 2571
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3368		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3368
!	jmp	_Label_3367
_Label_3367:
! THEN...
	mov	2574,r13		! source line 2574
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3369 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3369  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2574,r13		! source line 2574
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3368:
! ASSIGNMENT STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2579,r13		! source line 2579
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0WH",r10
_Label_3370:
!   if numFiles <= 0 then goto _Label_3372		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3372
!	jmp	_Label_3371
_Label_3371:
	mov	2584,r13		! source line 2584
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3373 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3373  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2585,r13		! source line 2585
	mov	"\0\0CA",r10
	call	_function_187_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3374 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3374  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2587,r13		! source line 2587
	mov	"\0\0CA",r10
	call	_function_187_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3375 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3375  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2589,r13		! source line 2589
	mov	"\0\0CA",r10
	call	_function_187_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3379 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3379 then goto _Label_3377		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3377
!	jmp	_Label_3378
_Label_3378:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3381
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
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
	store	r2,[r14+-108]
!   _temp_3380 = _temp_3381		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3380  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2592,r13		! source line 2592
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3376 else goto _Label_3377
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3377
	jmp	_Label_3376
_Label_3376:
! THEN...
	mov	2593,r13		! source line 2593
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0BR",r10
	jmp	_Label_3372
! END IF...
_Label_3377:
! ASSIGNMENT STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3370
_Label_3372:
! IF STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3383		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3383
!	jmp	_Label_3382
_Label_3382:
! THEN...
	mov	2601,r13		! source line 2601
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3383:
! SEND STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0SE",r10
!   _temp_3384 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3389 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3390 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3389  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3385:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3390 then goto _Label_3388		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3388
_Label_3386:
	mov	2606,r13		! source line 2606
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0AS",r10
!   _temp_3391 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3391 [i ] into _temp_3392
!     make sure index expr is >= 0
	load	[r14+-136],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_3392		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3396 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3395 = *_temp_3396  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3395 != start then goto _Label_3394		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3394
!	jmp	_Label_3393
_Label_3393:
! THEN...
	mov	2609,r13		! source line 2609
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3397 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3400 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3399 = *_temp_3400  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3398 = _temp_3399 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3397 = _temp_3398  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0SE",r10
!   _temp_3401 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3394:
!   Increment the FOR-LOOP index variable and jump back
_Label_3387:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3385
! END FOR
_Label_3388:
! WHILE STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0WH",r10
_Label_3402:
	mov	2616,r13		! source line 2616
	mov	"\0\0SE",r10
!   _temp_3405 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_3403 else goto _Label_3404
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3404
	jmp	_Label_3403
_Label_3403:
	mov	2616,r13		! source line 2616
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0SE",r10
!   _temp_3406 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3407 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3406  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3402
_Label_3404:
! ASSIGNMENT STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0AS",r10
	mov	2619,r13		! source line 2619
	mov	"\0\0SE",r10
!   _temp_3408 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0SE",r10
!   _temp_3409 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3410 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3410 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3411 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3411 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3412 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3412 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3417 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3416 = *_temp_3417  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3416 < 0 then goto _Label_3415		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3415
	jmp	_Label_3413
_Label_3415:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3418 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3418 ) then goto _Label_3414		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3414
!	jmp	_Label_3413
_Label_3413:
! THEN...
	mov	2629,r13		! source line 2629
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3419 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3419  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2629,r13		! source line 2629
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3414:
! RETURN STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_3420
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3421
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3422
	.word	12
	.word	4
	.word	_Label_3423
	.word	-12
	.word	4
	.word	_Label_3424
	.word	-16
	.word	4
	.word	_Label_3425
	.word	-20
	.word	4
	.word	_Label_3426
	.word	-24
	.word	4
	.word	_Label_3427
	.word	-28
	.word	4
	.word	_Label_3428
	.word	-32
	.word	4
	.word	_Label_3429
	.word	-36
	.word	4
	.word	_Label_3430
	.word	-40
	.word	4
	.word	_Label_3431
	.word	-44
	.word	4
	.word	_Label_3432
	.word	-48
	.word	4
	.word	_Label_3433
	.word	-52
	.word	4
	.word	_Label_3434
	.word	-56
	.word	4
	.word	_Label_3435
	.word	-60
	.word	4
	.word	_Label_3436
	.word	-64
	.word	4
	.word	_Label_3437
	.word	-68
	.word	4
	.word	_Label_3438
	.word	-72
	.word	4
	.word	_Label_3439
	.word	-76
	.word	4
	.word	_Label_3440
	.word	-80
	.word	4
	.word	_Label_3441
	.word	-84
	.word	4
	.word	_Label_3442
	.word	-88
	.word	4
	.word	_Label_3443
	.word	-92
	.word	4
	.word	_Label_3444
	.word	-96
	.word	4
	.word	_Label_3445
	.word	-100
	.word	4
	.word	_Label_3446
	.word	-104
	.word	4
	.word	_Label_3447
	.word	-108
	.word	4
	.word	_Label_3448
	.word	-112
	.word	4
	.word	_Label_3449
	.word	-116
	.word	4
	.word	_Label_3450
	.word	-120
	.word	4
	.word	_Label_3451
	.word	-124
	.word	4
	.word	_Label_3452
	.word	-128
	.word	4
	.word	_Label_3453
	.word	-132
	.word	4
	.word	_Label_3454
	.word	-136
	.word	4
	.word	_Label_3455
	.word	-140
	.word	4
	.word	_Label_3456
	.word	-144
	.word	4
	.word	_Label_3457
	.word	-148
	.word	4
	.word	_Label_3458
	.word	-152
	.word	4
	.word	_Label_3459
	.word	-156
	.word	4
	.word	_Label_3460
	.word	-160
	.word	4
	.word	0
_Label_3420:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3421:
	.ascii	"Pself\0"
	.align
_Label_3422:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3423:
	.byte	'?'
	.ascii	"_temp_3419\0"
	.align
_Label_3424:
	.byte	'?'
	.ascii	"_temp_3418\0"
	.align
_Label_3425:
	.byte	'?'
	.ascii	"_temp_3417\0"
	.align
_Label_3426:
	.byte	'?'
	.ascii	"_temp_3416\0"
	.align
_Label_3427:
	.byte	'?'
	.ascii	"_temp_3412\0"
	.align
_Label_3428:
	.byte	'?'
	.ascii	"_temp_3411\0"
	.align
_Label_3429:
	.byte	'?'
	.ascii	"_temp_3410\0"
	.align
_Label_3430:
	.byte	'?'
	.ascii	"_temp_3409\0"
	.align
_Label_3431:
	.byte	'?'
	.ascii	"_temp_3408\0"
	.align
_Label_3432:
	.byte	'?'
	.ascii	"_temp_3407\0"
	.align
_Label_3433:
	.byte	'?'
	.ascii	"_temp_3406\0"
	.align
_Label_3434:
	.byte	'?'
	.ascii	"_temp_3405\0"
	.align
_Label_3435:
	.byte	'?'
	.ascii	"_temp_3401\0"
	.align
_Label_3436:
	.byte	'?'
	.ascii	"_temp_3400\0"
	.align
_Label_3437:
	.byte	'?'
	.ascii	"_temp_3399\0"
	.align
_Label_3438:
	.byte	'?'
	.ascii	"_temp_3398\0"
	.align
_Label_3439:
	.byte	'?'
	.ascii	"_temp_3397\0"
	.align
_Label_3440:
	.byte	'?'
	.ascii	"_temp_3396\0"
	.align
_Label_3441:
	.byte	'?'
	.ascii	"_temp_3395\0"
	.align
_Label_3442:
	.byte	'?'
	.ascii	"_temp_3392\0"
	.align
_Label_3443:
	.byte	'?'
	.ascii	"_temp_3391\0"
	.align
_Label_3444:
	.byte	'?'
	.ascii	"_temp_3390\0"
	.align
_Label_3445:
	.byte	'?'
	.ascii	"_temp_3389\0"
	.align
_Label_3446:
	.byte	'?'
	.ascii	"_temp_3384\0"
	.align
_Label_3447:
	.byte	'?'
	.ascii	"_temp_3381\0"
	.align
_Label_3448:
	.byte	'?'
	.ascii	"_temp_3380\0"
	.align
_Label_3449:
	.byte	'?'
	.ascii	"_temp_3379\0"
	.align
_Label_3450:
	.byte	'?'
	.ascii	"_temp_3375\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3374\0"
	.align
_Label_3452:
	.byte	'?'
	.ascii	"_temp_3373\0"
	.align
_Label_3453:
	.byte	'?'
	.ascii	"_temp_3369\0"
	.align
_Label_3454:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3455:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3456:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3457:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3458:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3459:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3460:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_4096:
	push	r0
	sub	r1,1,r1
	bne	_Label_4096
	mov	2644,r13		! source line 2644
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0IF",r10
!   _temp_3463 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3463 then goto _Label_3462		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3462
!	jmp	_Label_3461
_Label_3461:
! THEN...
	mov	2647,r13		! source line 2647
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3462:
! SEND STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0SE",r10
!   _temp_3464 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0SE",r10
!   _temp_3465 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3466 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3466  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3467 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3470 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3469 = *_temp_3470  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3468 = _temp_3469 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3467 = _temp_3468  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3474 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3473 = *_temp_3474  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3473 > 0 then goto _Label_3472		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3472
!	jmp	_Label_3471
_Label_3471:
! THEN...
	mov	2654,r13		! source line 2654
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0SE",r10
!   _temp_3475 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0SE",r10
!   _temp_3476 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3477 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3476  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3478 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3481 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3480 = *_temp_3481  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3479 = _temp_3480 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3478 = _temp_3479  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3485 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3484 = *_temp_3485  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3484 > 0 then goto _Label_3483		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3483
!	jmp	_Label_3482
_Label_3482:
! THEN...
	mov	2658,r13		! source line 2658
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0SE",r10
!   _temp_3486 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0SE",r10
!   _temp_3487 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3488 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3487  sizeInBytes=4
	load	[r14+-20],r1
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
_Label_3483:
! END IF...
_Label_3472:
! SEND STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0SE",r10
!   _temp_3489 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2662,r13		! source line 2662
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_3490
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3491
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3492
	.word	12
	.word	4
	.word	_Label_3493
	.word	-12
	.word	4
	.word	_Label_3494
	.word	-16
	.word	4
	.word	_Label_3495
	.word	-20
	.word	4
	.word	_Label_3496
	.word	-24
	.word	4
	.word	_Label_3497
	.word	-28
	.word	4
	.word	_Label_3498
	.word	-32
	.word	4
	.word	_Label_3499
	.word	-36
	.word	4
	.word	_Label_3500
	.word	-40
	.word	4
	.word	_Label_3501
	.word	-44
	.word	4
	.word	_Label_3502
	.word	-48
	.word	4
	.word	_Label_3503
	.word	-52
	.word	4
	.word	_Label_3504
	.word	-56
	.word	4
	.word	_Label_3505
	.word	-60
	.word	4
	.word	_Label_3506
	.word	-64
	.word	4
	.word	_Label_3507
	.word	-68
	.word	4
	.word	_Label_3508
	.word	-72
	.word	4
	.word	_Label_3509
	.word	-76
	.word	4
	.word	_Label_3510
	.word	-80
	.word	4
	.word	_Label_3511
	.word	-84
	.word	4
	.word	_Label_3512
	.word	-88
	.word	4
	.word	_Label_3513
	.word	-92
	.word	4
	.word	_Label_3514
	.word	-96
	.word	4
	.word	_Label_3515
	.word	-100
	.word	4
	.word	_Label_3516
	.word	-104
	.word	4
	.word	0
_Label_3490:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3491:
	.ascii	"Pself\0"
	.align
_Label_3492:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3493:
	.byte	'?'
	.ascii	"_temp_3489\0"
	.align
_Label_3494:
	.byte	'?'
	.ascii	"_temp_3488\0"
	.align
_Label_3495:
	.byte	'?'
	.ascii	"_temp_3487\0"
	.align
_Label_3496:
	.byte	'?'
	.ascii	"_temp_3486\0"
	.align
_Label_3497:
	.byte	'?'
	.ascii	"_temp_3485\0"
	.align
_Label_3498:
	.byte	'?'
	.ascii	"_temp_3484\0"
	.align
_Label_3499:
	.byte	'?'
	.ascii	"_temp_3481\0"
	.align
_Label_3500:
	.byte	'?'
	.ascii	"_temp_3480\0"
	.align
_Label_3501:
	.byte	'?'
	.ascii	"_temp_3479\0"
	.align
_Label_3502:
	.byte	'?'
	.ascii	"_temp_3478\0"
	.align
_Label_3503:
	.byte	'?'
	.ascii	"_temp_3477\0"
	.align
_Label_3504:
	.byte	'?'
	.ascii	"_temp_3476\0"
	.align
_Label_3505:
	.byte	'?'
	.ascii	"_temp_3475\0"
	.align
_Label_3506:
	.byte	'?'
	.ascii	"_temp_3474\0"
	.align
_Label_3507:
	.byte	'?'
	.ascii	"_temp_3473\0"
	.align
_Label_3508:
	.byte	'?'
	.ascii	"_temp_3470\0"
	.align
_Label_3509:
	.byte	'?'
	.ascii	"_temp_3469\0"
	.align
_Label_3510:
	.byte	'?'
	.ascii	"_temp_3468\0"
	.align
_Label_3511:
	.byte	'?'
	.ascii	"_temp_3467\0"
	.align
_Label_3512:
	.byte	'?'
	.ascii	"_temp_3466\0"
	.align
_Label_3513:
	.byte	'?'
	.ascii	"_temp_3465\0"
	.align
_Label_3514:
	.byte	'?'
	.ascii	"_temp_3464\0"
	.align
_Label_3515:
	.byte	'?'
	.ascii	"_temp_3463\0"
	.align
_Label_3516:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_4097:
	push	r0
	sub	r1,1,r1
	bne	_Label_4097
	mov	2667,r13		! source line 2667
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3520 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3519 = *_temp_3520  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3519) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3521 = _temp_3519 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3521 ) then goto _Label_3518		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3518
!	jmp	_Label_3517
_Label_3517:
! THEN...
	mov	2673,r13		! source line 2673
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3526 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3525 = *_temp_3526  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3525) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3527 = _temp_3525 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3524 = *_temp_3527  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3524 >= 0 then goto _Label_3523		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3523
!	jmp	_Label_3522
_Label_3522:
! THEN...
	mov	2674,r13		! source line 2674
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3528 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3528  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2674,r13		! source line 2674
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3523:
! ASSIGNMENT STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3530 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3529 = *_temp_3530  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3529) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3531 = _temp_3529 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3531 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3535 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3534 = *_temp_3535  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3534) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3536 = _temp_3534 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3533 = *_temp_3536  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3539 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3538 = *_temp_3539  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3538) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3540 = _temp_3538 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3537 = *_temp_3540  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3532 = _temp_3533 + _temp_3537		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3543 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3542 = *_temp_3543  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3542) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3544 = _temp_3542 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3541 = *_temp_3544  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3545 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3532  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3541  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_3518:
! RETURN STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_3546
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3547
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3548
	.word	12
	.word	4
	.word	_Label_3549
	.word	-12
	.word	4
	.word	_Label_3550
	.word	-16
	.word	4
	.word	_Label_3551
	.word	-20
	.word	4
	.word	_Label_3552
	.word	-24
	.word	4
	.word	_Label_3553
	.word	-28
	.word	4
	.word	_Label_3554
	.word	-32
	.word	4
	.word	_Label_3555
	.word	-36
	.word	4
	.word	_Label_3556
	.word	-40
	.word	4
	.word	_Label_3557
	.word	-44
	.word	4
	.word	_Label_3558
	.word	-48
	.word	4
	.word	_Label_3559
	.word	-52
	.word	4
	.word	_Label_3560
	.word	-56
	.word	4
	.word	_Label_3561
	.word	-60
	.word	4
	.word	_Label_3562
	.word	-64
	.word	4
	.word	_Label_3563
	.word	-68
	.word	4
	.word	_Label_3564
	.word	-72
	.word	4
	.word	_Label_3565
	.word	-76
	.word	4
	.word	_Label_3566
	.word	-80
	.word	4
	.word	_Label_3567
	.word	-84
	.word	4
	.word	_Label_3568
	.word	-88
	.word	4
	.word	_Label_3569
	.word	-92
	.word	4
	.word	_Label_3570
	.word	-96
	.word	4
	.word	_Label_3571
	.word	-100
	.word	4
	.word	_Label_3572
	.word	-104
	.word	4
	.word	_Label_3573
	.word	-108
	.word	4
	.word	0
_Label_3546:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3547:
	.ascii	"Pself\0"
	.align
_Label_3548:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3549:
	.byte	'?'
	.ascii	"_temp_3545\0"
	.align
_Label_3550:
	.byte	'?'
	.ascii	"_temp_3544\0"
	.align
_Label_3551:
	.byte	'?'
	.ascii	"_temp_3543\0"
	.align
_Label_3552:
	.byte	'?'
	.ascii	"_temp_3542\0"
	.align
_Label_3553:
	.byte	'?'
	.ascii	"_temp_3541\0"
	.align
_Label_3554:
	.byte	'?'
	.ascii	"_temp_3540\0"
	.align
_Label_3555:
	.byte	'?'
	.ascii	"_temp_3539\0"
	.align
_Label_3556:
	.byte	'?'
	.ascii	"_temp_3538\0"
	.align
_Label_3557:
	.byte	'?'
	.ascii	"_temp_3537\0"
	.align
_Label_3558:
	.byte	'?'
	.ascii	"_temp_3536\0"
	.align
_Label_3559:
	.byte	'?'
	.ascii	"_temp_3535\0"
	.align
_Label_3560:
	.byte	'?'
	.ascii	"_temp_3534\0"
	.align
_Label_3561:
	.byte	'?'
	.ascii	"_temp_3533\0"
	.align
_Label_3562:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3563:
	.byte	'?'
	.ascii	"_temp_3531\0"
	.align
_Label_3564:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3565:
	.byte	'?'
	.ascii	"_temp_3529\0"
	.align
_Label_3566:
	.byte	'?'
	.ascii	"_temp_3528\0"
	.align
_Label_3567:
	.byte	'?'
	.ascii	"_temp_3527\0"
	.align
_Label_3568:
	.byte	'?'
	.ascii	"_temp_3526\0"
	.align
_Label_3569:
	.byte	'?'
	.ascii	"_temp_3525\0"
	.align
_Label_3570:
	.byte	'?'
	.ascii	"_temp_3524\0"
	.align
_Label_3571:
	.byte	'?'
	.ascii	"_temp_3521\0"
	.align
_Label_3572:
	.byte	'?'
	.ascii	"_temp_3520\0"
	.align
_Label_3573:
	.byte	'?'
	.ascii	"_temp_3519\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_4098:
	push	r0
	sub	r1,1,r1
	bne	_Label_4098
	mov	2686,r13		! source line 2686
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2701,r13		! source line 2701
	mov	"\0\0SE",r10
!   _temp_3574 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3580		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3580
!   _temp_3579 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3581
_Label_3580:
!   _temp_3579 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3581:
!   if _temp_3579 then goto _Label_3578 else goto _Label_3575
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3575
	jmp	_Label_3578
_Label_3578:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3584 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3583 = *_temp_3584  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3583 == 0 then goto _Label_3585		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3585
!   _temp_3582 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3586
_Label_3585:
!   _temp_3582 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3586:
!   if _temp_3582 then goto _Label_3577 else goto _Label_3575
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3575
	jmp	_Label_3577
_Label_3577:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3589 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3588 = *_temp_3589  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3588) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3590 = _temp_3588 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3587 = *_temp_3590  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3587 >= 0 then goto _Label_3576		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3576
!	jmp	_Label_3575
_Label_3575:
! THEN...
	mov	2703,r13		! source line 2703
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3591 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3591  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2703,r13		! source line 2703
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3576:
! ASSIGNMENT STATEMENT...
	mov	2705,r13		! source line 2705
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3592 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3592  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0WH",r10
_Label_3593:
!   if numBytes <= 0 then goto _Label_3595		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3595
!	jmp	_Label_3594
_Label_3594:
	mov	2706,r13		! source line 2706
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2716,r13		! source line 2716
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2720,r13		! source line 2720
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3599 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3598 = *_temp_3599  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3598 == sector then goto _Label_3597		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3597
!	jmp	_Label_3596
_Label_3596:
! THEN...
	mov	2721,r13		! source line 2721
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2721,r13		! source line 2721
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3600) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2723,r13		! source line 2723
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3603 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3602 = *_temp_3603  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3601 = sector + _temp_3602		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3605 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3604 = *_temp_3605  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3606 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3601  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3604  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3607 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3607 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3608 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3608 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3597:
! ASSIGNMENT STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3610 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3609 = *_temp_3610  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3609 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0AS",r10
!   _temp_3611 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3611  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2730,r13		! source line 2730
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2734,r13		! source line 2734
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2735,r13		! source line 2735
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2736,r13		! source line 2736
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2737,r13		! source line 2737
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3593
_Label_3595:
! SEND STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0SE",r10
!   _temp_3612 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_3613
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3614
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3615
	.word	12
	.word	4
	.word	_Label_3616
	.word	16
	.word	4
	.word	_Label_3617
	.word	20
	.word	4
	.word	_Label_3618
	.word	24
	.word	4
	.word	_Label_3619
	.word	-16
	.word	4
	.word	_Label_3620
	.word	-20
	.word	4
	.word	_Label_3621
	.word	-24
	.word	4
	.word	_Label_3622
	.word	-28
	.word	4
	.word	_Label_3623
	.word	-32
	.word	4
	.word	_Label_3624
	.word	-36
	.word	4
	.word	_Label_3625
	.word	-40
	.word	4
	.word	_Label_3626
	.word	-44
	.word	4
	.word	_Label_3627
	.word	-48
	.word	4
	.word	_Label_3628
	.word	-52
	.word	4
	.word	_Label_3629
	.word	-56
	.word	4
	.word	_Label_3630
	.word	-60
	.word	4
	.word	_Label_3631
	.word	-64
	.word	4
	.word	_Label_3632
	.word	-68
	.word	4
	.word	_Label_3633
	.word	-72
	.word	4
	.word	_Label_3634
	.word	-76
	.word	4
	.word	_Label_3635
	.word	-80
	.word	4
	.word	_Label_3636
	.word	-84
	.word	4
	.word	_Label_3637
	.word	-88
	.word	4
	.word	_Label_3638
	.word	-92
	.word	4
	.word	_Label_3639
	.word	-96
	.word	4
	.word	_Label_3640
	.word	-100
	.word	4
	.word	_Label_3641
	.word	-104
	.word	4
	.word	_Label_3642
	.word	-9
	.word	1
	.word	_Label_3643
	.word	-10
	.word	1
	.word	_Label_3644
	.word	-108
	.word	4
	.word	_Label_3645
	.word	-112
	.word	4
	.word	_Label_3646
	.word	-116
	.word	4
	.word	_Label_3647
	.word	-120
	.word	4
	.word	_Label_3648
	.word	-124
	.word	4
	.word	_Label_3649
	.word	-128
	.word	4
	.word	0
_Label_3613:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3614:
	.ascii	"Pself\0"
	.align
_Label_3615:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3616:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3617:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3618:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3619:
	.byte	'?'
	.ascii	"_temp_3612\0"
	.align
_Label_3620:
	.byte	'?'
	.ascii	"_temp_3611\0"
	.align
_Label_3621:
	.byte	'?'
	.ascii	"_temp_3610\0"
	.align
_Label_3622:
	.byte	'?'
	.ascii	"_temp_3609\0"
	.align
_Label_3623:
	.byte	'?'
	.ascii	"_temp_3608\0"
	.align
_Label_3624:
	.byte	'?'
	.ascii	"_temp_3607\0"
	.align
_Label_3625:
	.byte	'?'
	.ascii	"_temp_3606\0"
	.align
_Label_3626:
	.byte	'?'
	.ascii	"_temp_3605\0"
	.align
_Label_3627:
	.byte	'?'
	.ascii	"_temp_3604\0"
	.align
_Label_3628:
	.byte	'?'
	.ascii	"_temp_3603\0"
	.align
_Label_3629:
	.byte	'?'
	.ascii	"_temp_3602\0"
	.align
_Label_3630:
	.byte	'?'
	.ascii	"_temp_3601\0"
	.align
_Label_3631:
	.byte	'?'
	.ascii	"_temp_3600\0"
	.align
_Label_3632:
	.byte	'?'
	.ascii	"_temp_3599\0"
	.align
_Label_3633:
	.byte	'?'
	.ascii	"_temp_3598\0"
	.align
_Label_3634:
	.byte	'?'
	.ascii	"_temp_3592\0"
	.align
_Label_3635:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3636:
	.byte	'?'
	.ascii	"_temp_3590\0"
	.align
_Label_3637:
	.byte	'?'
	.ascii	"_temp_3589\0"
	.align
_Label_3638:
	.byte	'?'
	.ascii	"_temp_3588\0"
	.align
_Label_3639:
	.byte	'?'
	.ascii	"_temp_3587\0"
	.align
_Label_3640:
	.byte	'?'
	.ascii	"_temp_3584\0"
	.align
_Label_3641:
	.byte	'?'
	.ascii	"_temp_3583\0"
	.align
_Label_3642:
	.byte	'C'
	.ascii	"_temp_3582\0"
	.align
_Label_3643:
	.byte	'C'
	.ascii	"_temp_3579\0"
	.align
_Label_3644:
	.byte	'?'
	.ascii	"_temp_3574\0"
	.align
_Label_3645:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3646:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3647:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3648:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3649:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_4099:
	push	r0
	sub	r1,1,r1
	bne	_Label_4099
	mov	2750,r13		! source line 2750
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0SE",r10
!   _temp_3650 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3656		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3656
!   _temp_3655 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3657
_Label_3656:
!   _temp_3655 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3657:
!   if _temp_3655 then goto _Label_3654 else goto _Label_3651
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3651
	jmp	_Label_3654
_Label_3654:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3660 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3659 = *_temp_3660  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3659 == 0 then goto _Label_3661		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3661
!   _temp_3658 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3662
_Label_3661:
!   _temp_3658 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3662:
!   if _temp_3658 then goto _Label_3653 else goto _Label_3651
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3651
	jmp	_Label_3653
_Label_3653:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3665 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3664 = *_temp_3665  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3664) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3666 = _temp_3664 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3663 = *_temp_3666  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3663 >= 0 then goto _Label_3652		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3652
!	jmp	_Label_3651
_Label_3651:
! THEN...
	mov	2768,r13		! source line 2768
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3667 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3667  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2768,r13		! source line 2768
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3652:
! ASSIGNMENT STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3668 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3668  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0WH",r10
_Label_3669:
!   if numBytes <= 0 then goto _Label_3671		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3671
!	jmp	_Label_3670
_Label_3670:
	mov	2771,r13		! source line 2771
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2780,r13		! source line 2780
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3675 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3674 = *_temp_3675  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3674 == sector then goto _Label_3673		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3673
!	jmp	_Label_3672
_Label_3672:
! THEN...
	mov	2787,r13		! source line 2787
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3676) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_3673:
! ASSIGNMENT STATEMENT...
	mov	2789,r13		! source line 2789
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3678 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3677 = *_temp_3678  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3677 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2790,r13		! source line 2790
	mov	"\0\0AS",r10
!   _temp_3679 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3679  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2790,r13		! source line 2790
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3683 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3682 = *_temp_3683  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3682 != sector then goto _Label_3681		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3681
!	jmp	_Label_3680
_Label_3680:
	jmp	_Label_3684
_Label_3681:
! ELSE...
	mov	2793,r13		! source line 2793
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3687
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3687
	jmp	_Label_3686
_Label_3687:
!   if bytesToMove != 8192 then goto _Label_3686		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3686
!	jmp	_Label_3685
_Label_3685:
	jmp	_Label_3688
_Label_3686:
! ELSE...
	mov	2797,r13		! source line 2797
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2797,r13		! source line 2797
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3691 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3690 = *_temp_3691  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3689 = sector + _temp_3690		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3693 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3692 = *_temp_3693  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3694 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3689  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3692  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_3688:
! END IF...
_Label_3684:
! ASSIGNMENT STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3695 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3695 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3696 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3696 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2806,r13		! source line 2806
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3669
_Label_3671:
! SEND STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0SE",r10
!   _temp_3697 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2818,r13		! source line 2818
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_3698
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3699
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3700
	.word	12
	.word	4
	.word	_Label_3701
	.word	16
	.word	4
	.word	_Label_3702
	.word	20
	.word	4
	.word	_Label_3703
	.word	24
	.word	4
	.word	_Label_3704
	.word	-16
	.word	4
	.word	_Label_3705
	.word	-20
	.word	4
	.word	_Label_3706
	.word	-24
	.word	4
	.word	_Label_3707
	.word	-28
	.word	4
	.word	_Label_3708
	.word	-32
	.word	4
	.word	_Label_3709
	.word	-36
	.word	4
	.word	_Label_3710
	.word	-40
	.word	4
	.word	_Label_3711
	.word	-44
	.word	4
	.word	_Label_3712
	.word	-48
	.word	4
	.word	_Label_3713
	.word	-52
	.word	4
	.word	_Label_3714
	.word	-56
	.word	4
	.word	_Label_3715
	.word	-60
	.word	4
	.word	_Label_3716
	.word	-64
	.word	4
	.word	_Label_3717
	.word	-68
	.word	4
	.word	_Label_3718
	.word	-72
	.word	4
	.word	_Label_3719
	.word	-76
	.word	4
	.word	_Label_3720
	.word	-80
	.word	4
	.word	_Label_3721
	.word	-84
	.word	4
	.word	_Label_3722
	.word	-88
	.word	4
	.word	_Label_3723
	.word	-92
	.word	4
	.word	_Label_3724
	.word	-96
	.word	4
	.word	_Label_3725
	.word	-100
	.word	4
	.word	_Label_3726
	.word	-104
	.word	4
	.word	_Label_3727
	.word	-108
	.word	4
	.word	_Label_3728
	.word	-112
	.word	4
	.word	_Label_3729
	.word	-9
	.word	1
	.word	_Label_3730
	.word	-10
	.word	1
	.word	_Label_3731
	.word	-116
	.word	4
	.word	_Label_3732
	.word	-120
	.word	4
	.word	_Label_3733
	.word	-124
	.word	4
	.word	_Label_3734
	.word	-128
	.word	4
	.word	_Label_3735
	.word	-132
	.word	4
	.word	_Label_3736
	.word	-136
	.word	4
	.word	0
_Label_3698:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3699:
	.ascii	"Pself\0"
	.align
_Label_3700:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3701:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3702:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3703:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3704:
	.byte	'?'
	.ascii	"_temp_3697\0"
	.align
_Label_3705:
	.byte	'?'
	.ascii	"_temp_3696\0"
	.align
_Label_3706:
	.byte	'?'
	.ascii	"_temp_3695\0"
	.align
_Label_3707:
	.byte	'?'
	.ascii	"_temp_3694\0"
	.align
_Label_3708:
	.byte	'?'
	.ascii	"_temp_3693\0"
	.align
_Label_3709:
	.byte	'?'
	.ascii	"_temp_3692\0"
	.align
_Label_3710:
	.byte	'?'
	.ascii	"_temp_3691\0"
	.align
_Label_3711:
	.byte	'?'
	.ascii	"_temp_3690\0"
	.align
_Label_3712:
	.byte	'?'
	.ascii	"_temp_3689\0"
	.align
_Label_3713:
	.byte	'?'
	.ascii	"_temp_3683\0"
	.align
_Label_3714:
	.byte	'?'
	.ascii	"_temp_3682\0"
	.align
_Label_3715:
	.byte	'?'
	.ascii	"_temp_3679\0"
	.align
_Label_3716:
	.byte	'?'
	.ascii	"_temp_3678\0"
	.align
_Label_3717:
	.byte	'?'
	.ascii	"_temp_3677\0"
	.align
_Label_3718:
	.byte	'?'
	.ascii	"_temp_3676\0"
	.align
_Label_3719:
	.byte	'?'
	.ascii	"_temp_3675\0"
	.align
_Label_3720:
	.byte	'?'
	.ascii	"_temp_3674\0"
	.align
_Label_3721:
	.byte	'?'
	.ascii	"_temp_3668\0"
	.align
_Label_3722:
	.byte	'?'
	.ascii	"_temp_3667\0"
	.align
_Label_3723:
	.byte	'?'
	.ascii	"_temp_3666\0"
	.align
_Label_3724:
	.byte	'?'
	.ascii	"_temp_3665\0"
	.align
_Label_3725:
	.byte	'?'
	.ascii	"_temp_3664\0"
	.align
_Label_3726:
	.byte	'?'
	.ascii	"_temp_3663\0"
	.align
_Label_3727:
	.byte	'?'
	.ascii	"_temp_3660\0"
	.align
_Label_3728:
	.byte	'?'
	.ascii	"_temp_3659\0"
	.align
_Label_3729:
	.byte	'C'
	.ascii	"_temp_3658\0"
	.align
_Label_3730:
	.byte	'C'
	.ascii	"_temp_3655\0"
	.align
_Label_3731:
	.byte	'?'
	.ascii	"_temp_3650\0"
	.align
_Label_3732:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3733:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3734:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3735:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3736:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3737
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3737:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3738
	.word	_sourceFileName
	.word	358		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3738:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_4100:
	push	r0
	sub	r1,1,r1
	bne	_Label_4100
	mov	2854,r13		! source line 2854
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2855,r13		! source line 2855
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2856,r13		! source line 2856
	mov	"\0\0AS",r10
	mov	2856,r13		! source line 2856
	mov	"\0\0SE",r10
!   _temp_3739 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2858,r13		! source line 2858
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2859,r13		! source line 2859
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2859,r13		! source line 2859
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_3740
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3741
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3742
	.word	-12
	.word	4
	.word	0
_Label_3740:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3741:
	.ascii	"Pself\0"
	.align
_Label_3742:
	.byte	'?'
	.ascii	"_temp_3739\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_4101:
	push	r0
	sub	r1,1,r1
	bne	_Label_4101
	mov	2864,r13		! source line 2864
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3743 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3743  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2865,r13		! source line 2865
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2866,r13		! source line 2866
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3744 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3744  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2867,r13		! source line 2867
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2868,r13		! source line 2868
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3745 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3745  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2869,r13		! source line 2869
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2870,r13		! source line 2870
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3746 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3746  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2871,r13		! source line 2871
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2872,r13		! source line 2872
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3747 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3747  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2873,r13		! source line 2873
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2874,r13		! source line 2874
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3748 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3748  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2875,r13		! source line 2875
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2876,r13		! source line 2876
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2877,r13		! source line 2877
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2877,r13		! source line 2877
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_3749
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3750
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3751
	.word	-12
	.word	4
	.word	_Label_3752
	.word	-16
	.word	4
	.word	_Label_3753
	.word	-20
	.word	4
	.word	_Label_3754
	.word	-24
	.word	4
	.word	_Label_3755
	.word	-28
	.word	4
	.word	_Label_3756
	.word	-32
	.word	4
	.word	0
_Label_3749:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3750:
	.ascii	"Pself\0"
	.align
_Label_3751:
	.byte	'?'
	.ascii	"_temp_3748\0"
	.align
_Label_3752:
	.byte	'?'
	.ascii	"_temp_3747\0"
	.align
_Label_3753:
	.byte	'?'
	.ascii	"_temp_3746\0"
	.align
_Label_3754:
	.byte	'?'
	.ascii	"_temp_3745\0"
	.align
_Label_3755:
	.byte	'?'
	.ascii	"_temp_3744\0"
	.align
_Label_3756:
	.byte	'?'
	.ascii	"_temp_3743\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3757
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3757:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3758
	.word	_sourceFileName
	.word	375		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3758:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_4102:
	push	r0
	sub	r1,1,r1
	bne	_Label_4102
	mov	2888,r13		! source line 2888
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3759 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3759  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2889,r13		! source line 2889
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2890,r13		! source line 2890
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3760 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3760  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2891,r13		! source line 2891
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2892,r13		! source line 2892
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3762		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3762
!	jmp	_Label_3761
_Label_3761:
! THEN...
	mov	2893,r13		! source line 2893
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2893,r13		! source line 2893
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_3763
_Label_3762:
! ELSE...
	mov	2895,r13		! source line 2895
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3764 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3764  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2895,r13		! source line 2895
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3763:
! RETURN STATEMENT...
	mov	2892,r13		! source line 2892
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_3765
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3766
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3767
	.word	-12
	.word	4
	.word	_Label_3768
	.word	-16
	.word	4
	.word	_Label_3769
	.word	-20
	.word	4
	.word	0
_Label_3765:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3766:
	.ascii	"Pself\0"
	.align
_Label_3767:
	.byte	'?'
	.ascii	"_temp_3764\0"
	.align
_Label_3768:
	.byte	'?'
	.ascii	"_temp_3760\0"
	.align
_Label_3769:
	.byte	'?'
	.ascii	"_temp_3759\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_4103:
	push	r0
	sub	r1,1,r1
	bne	_Label_4103
	mov	2901,r13		! source line 2901
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0SE",r10
!   _temp_3770 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3771 = _temp_3770 + 4
	load	[r14+-36],r1
	add	r1,4,r1
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
	mov	2912,r13		! source line 2912
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0SE",r10
!   _temp_3772 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3773 = _temp_3772 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2915,r13		! source line 2915
	mov	"\0\0RE",r10
	mov	2915,r13		! source line 2915
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3776 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3775  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_3774  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3774  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_3777
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3778
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3779
	.word	12
	.word	4
	.word	_Label_3780
	.word	16
	.word	4
	.word	_Label_3781
	.word	-16
	.word	4
	.word	_Label_3782
	.word	-20
	.word	4
	.word	_Label_3783
	.word	-9
	.word	1
	.word	_Label_3784
	.word	-24
	.word	4
	.word	_Label_3785
	.word	-28
	.word	4
	.word	_Label_3786
	.word	-32
	.word	4
	.word	_Label_3787
	.word	-36
	.word	4
	.word	_Label_3788
	.word	-40
	.word	4
	.word	0
_Label_3777:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3778:
	.ascii	"Pself\0"
	.align
_Label_3779:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3780:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3781:
	.byte	'?'
	.ascii	"_temp_3776\0"
	.align
_Label_3782:
	.byte	'?'
	.ascii	"_temp_3775\0"
	.align
_Label_3783:
	.byte	'C'
	.ascii	"_temp_3774\0"
	.align
_Label_3784:
	.byte	'?'
	.ascii	"_temp_3773\0"
	.align
_Label_3785:
	.byte	'?'
	.ascii	"_temp_3772\0"
	.align
_Label_3786:
	.byte	'?'
	.ascii	"_temp_3771\0"
	.align
_Label_3787:
	.byte	'?'
	.ascii	"_temp_3770\0"
	.align
_Label_3788:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_4104:
	push	r0
	sub	r1,1,r1
	bne	_Label_4104
	mov	2920,r13		! source line 2920
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2925,r13		! source line 2925
	mov	"\0\0IF",r10
	mov	2925,r13		! source line 2925
	mov	"\0\0SE",r10
!   _temp_3792 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3793) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3792  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3791  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3791 then goto _Label_3790 else goto _Label_3789
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3789
	jmp	_Label_3790
_Label_3789:
! THEN...
	mov	2926,r13		! source line 2926
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3794 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3794  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2926,r13		! source line 2926
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3790:
! RETURN STATEMENT...
	mov	2928,r13		! source line 2928
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_3795
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3796
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3797
	.word	-16
	.word	4
	.word	_Label_3798
	.word	-20
	.word	4
	.word	_Label_3799
	.word	-24
	.word	4
	.word	_Label_3800
	.word	-9
	.word	1
	.word	_Label_3801
	.word	-28
	.word	4
	.word	0
_Label_3795:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3796:
	.ascii	"Pself\0"
	.align
_Label_3797:
	.byte	'?'
	.ascii	"_temp_3794\0"
	.align
_Label_3798:
	.byte	'?'
	.ascii	"_temp_3793\0"
	.align
_Label_3799:
	.byte	'?'
	.ascii	"_temp_3792\0"
	.align
_Label_3800:
	.byte	'C'
	.ascii	"_temp_3791\0"
	.align
_Label_3801:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_4105:
	push	r0
	sub	r1,1,r1
	bne	_Label_4105
	mov	2933,r13		! source line 2933
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2959,r13		! source line 2959
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3805 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3804 = *_temp_3805  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3804) then goto _Label_3803
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3803
!	jmp	_Label_3802
_Label_3802:
! THEN...
	mov	2960,r13		! source line 2960
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3806 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3806  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2960,r13		! source line 2960
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3803:
! IF STATEMENT...
	mov	2964,r13		! source line 2964
	mov	"\0\0IF",r10
	mov	2964,r13		! source line 2964
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3810) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3809  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3809 == 1112300152 then goto _Label_3808		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3808
!	jmp	_Label_3807
_Label_3807:
! THEN...
	mov	2965,r13		! source line 2965
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3811 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3811  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2965,r13		! source line 2965
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3808:
! ASSIGNMENT STATEMENT...
	mov	2970,r13		! source line 2970
	mov	"\0\0AS",r10
	mov	2970,r13		! source line 2970
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3812) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2971,r13		! source line 2971
	mov	"\0\0AS",r10
	mov	2971,r13		! source line 2971
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3813) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0AS",r10
	mov	2972,r13		! source line 2972
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3814) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0AS",r10
	mov	2973,r13		! source line 2973
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3815) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2974,r13		! source line 2974
	mov	"\0\0AS",r10
	mov	2974,r13		! source line 2974
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3816) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2975,r13		! source line 2975
	mov	"\0\0AS",r10
	mov	2975,r13		! source line 2975
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3817) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2978,r13		! source line 2978
	mov	"\0\0IF",r10
!   _temp_3820 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3820) then goto _Label_3819
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3819
!	jmp	_Label_3818
_Label_3818:
! THEN...
	mov	2979,r13		! source line 2979
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3821 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3821  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2979,r13		! source line 2979
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2980,r13		! source line 2980
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3819:
! ASSIGNMENT STATEMENT...
	mov	2982,r13		! source line 2982
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2986,r13		! source line 2986
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3823
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3823
!	jmp	_Label_3822
_Label_3822:
! THEN...
	mov	2987,r13		! source line 2987
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3824 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3824  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2987,r13		! source line 2987
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2988,r13		! source line 2988
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3823:
! IF STATEMENT...
	mov	2992,r13		! source line 2992
	mov	"\0\0IF",r10
!   _temp_3827 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3827) then goto _Label_3826
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3826
!	jmp	_Label_3825
_Label_3825:
! THEN...
	mov	2993,r13		! source line 2993
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3828 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3828  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2993,r13		! source line 2993
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2994,r13		! source line 2994
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3826:
! IF STATEMENT...
	mov	2996,r13		! source line 2996
	mov	"\0\0IF",r10
!   _temp_3831 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3831 then goto _Label_3830		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3830
!	jmp	_Label_3829
_Label_3829:
! THEN...
	mov	2997,r13		! source line 2997
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3832 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3832  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2997,r13		! source line 2997
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2998,r13		! source line 2998
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3830:
! ASSIGNMENT STATEMENT...
	mov	3000,r13		! source line 3000
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	3003,r13		! source line 3003
	mov	"\0\0IF",r10
!   _temp_3835 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3835) then goto _Label_3834
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3834
!	jmp	_Label_3833
_Label_3833:
! THEN...
	mov	3004,r13		! source line 3004
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3836 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3836  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3004,r13		! source line 3004
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3834:
! IF STATEMENT...
	mov	3007,r13		! source line 3007
	mov	"\0\0IF",r10
!   _temp_3839 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3839 then goto _Label_3838		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3838
!	jmp	_Label_3837
_Label_3837:
! THEN...
	mov	3008,r13		! source line 3008
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3840 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3840  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3008,r13		! source line 3008
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3009,r13		! source line 3009
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3838:
! ASSIGNMENT STATEMENT...
	mov	3011,r13		! source line 3011
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	3014,r13		! source line 3014
	mov	"\0\0AS",r10
!   _temp_3843 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3842 = _temp_3843 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3841 = _temp_3842 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3841 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3029,r13		! source line 3029
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3845		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3845
!	jmp	_Label_3844
_Label_3844:
! THEN...
	mov	3030,r13		! source line 3030
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3846 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3846  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3030,r13		! source line 3030
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3847 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3847  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3031,r13		! source line 3031
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3848 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3848  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3032,r13		! source line 3032
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3033,r13		! source line 3033
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3845:
! SEND STATEMENT...
	mov	3035,r13		! source line 3035
	mov	"\0\0SE",r10
!   _temp_3849 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	3041,r13		! source line 3041
	mov	"\0\0IF",r10
	mov	3041,r13		! source line 3041
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3853) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3852  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3852 == 707406378 then goto _Label_3851		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3851
!	jmp	_Label_3850
_Label_3850:
! THEN...
	mov	3042,r13		! source line 3042
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3854 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3854  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3042,r13		! source line 3042
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3043,r13		! source line 3043
	mov	"\0\0SE",r10
!   _temp_3855 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3044,r13		! source line 3044
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3851:
! ASSIGNMENT STATEMENT...
	mov	3048,r13		! source line 3048
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	3049,r13		! source line 3049
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3860 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3861 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3860  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3856:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3861 then goto _Label_3859		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3859
_Label_3857:
	mov	3049,r13		! source line 3049
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3050,r13		! source line 3050
	mov	"\0\0AS",r10
	mov	3050,r13		! source line 3050
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3053,r13		! source line 3053
	mov	"\0\0IF",r10
	mov	3053,r13		! source line 3053
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3865) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3864  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3864 then goto _Label_3863 else goto _Label_3862
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3862
	jmp	_Label_3863
_Label_3862:
! THEN...
	mov	3054,r13		! source line 3054
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3866 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3866  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3054,r13		! source line 3054
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3055,r13		! source line 3055
	mov	"\0\0SE",r10
!   _temp_3867 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3863:
! SEND STATEMENT...
	mov	3058,r13		! source line 3058
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3059,r13		! source line 3059
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3858:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3856
! END FOR
_Label_3859:
! IF STATEMENT...
	mov	3063,r13		! source line 3063
	mov	"\0\0IF",r10
	mov	3063,r13		! source line 3063
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3871) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3870  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3870 == 707406378 then goto _Label_3869		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3869
!	jmp	_Label_3868
_Label_3868:
! THEN...
	mov	3064,r13		! source line 3064
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3872 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3872  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3064,r13		! source line 3064
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3065,r13		! source line 3065
	mov	"\0\0SE",r10
!   _temp_3873 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3066,r13		! source line 3066
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3869:
! FOR STATEMENT...
	mov	3070,r13		! source line 3070
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3878 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3879 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3878  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3874:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3879 then goto _Label_3877		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3877
_Label_3875:
	mov	3070,r13		! source line 3070
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3071,r13		! source line 3071
	mov	"\0\0AS",r10
	mov	3071,r13		! source line 3071
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3074,r13		! source line 3074
	mov	"\0\0IF",r10
	mov	3074,r13		! source line 3074
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3883) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3882  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3882 then goto _Label_3881 else goto _Label_3880
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3880
	jmp	_Label_3881
_Label_3880:
! THEN...
	mov	3075,r13		! source line 3075
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3884 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3884  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3075,r13		! source line 3075
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3076,r13		! source line 3076
	mov	"\0\0SE",r10
!   _temp_3885 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3077,r13		! source line 3077
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3881:
! ASSIGNMENT STATEMENT...
	mov	3079,r13		! source line 3079
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3876:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3874
! END FOR
_Label_3877:
! IF STATEMENT...
	mov	3083,r13		! source line 3083
	mov	"\0\0IF",r10
	mov	3083,r13		! source line 3083
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3889) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3888  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3888 == 707406378 then goto _Label_3887		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3887
!	jmp	_Label_3886
_Label_3886:
! THEN...
	mov	3084,r13		! source line 3084
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3890 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3890  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3084,r13		! source line 3084
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3085,r13		! source line 3085
	mov	"\0\0SE",r10
!   _temp_3891 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3086,r13		! source line 3086
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3887:
! ASSIGNMENT STATEMENT...
	mov	3090,r13		! source line 3090
	mov	"\0\0AS",r10
	mov	3090,r13		! source line 3090
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	3094,r13		! source line 3094
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3097,r13		! source line 3097
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_3892
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3893
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3894
	.word	12
	.word	4
	.word	_Label_3895
	.word	-16
	.word	4
	.word	_Label_3896
	.word	-20
	.word	4
	.word	_Label_3897
	.word	-24
	.word	4
	.word	_Label_3898
	.word	-28
	.word	4
	.word	_Label_3899
	.word	-32
	.word	4
	.word	_Label_3900
	.word	-36
	.word	4
	.word	_Label_3901
	.word	-40
	.word	4
	.word	_Label_3902
	.word	-9
	.word	1
	.word	_Label_3903
	.word	-44
	.word	4
	.word	_Label_3904
	.word	-48
	.word	4
	.word	_Label_3905
	.word	-52
	.word	4
	.word	_Label_3906
	.word	-56
	.word	4
	.word	_Label_3907
	.word	-60
	.word	4
	.word	_Label_3908
	.word	-64
	.word	4
	.word	_Label_3909
	.word	-68
	.word	4
	.word	_Label_3910
	.word	-72
	.word	4
	.word	_Label_3911
	.word	-76
	.word	4
	.word	_Label_3912
	.word	-10
	.word	1
	.word	_Label_3913
	.word	-80
	.word	4
	.word	_Label_3914
	.word	-84
	.word	4
	.word	_Label_3915
	.word	-88
	.word	4
	.word	_Label_3916
	.word	-92
	.word	4
	.word	_Label_3917
	.word	-96
	.word	4
	.word	_Label_3918
	.word	-100
	.word	4
	.word	_Label_3919
	.word	-104
	.word	4
	.word	_Label_3920
	.word	-108
	.word	4
	.word	_Label_3921
	.word	-112
	.word	4
	.word	_Label_3922
	.word	-116
	.word	4
	.word	_Label_3923
	.word	-120
	.word	4
	.word	_Label_3924
	.word	-124
	.word	4
	.word	_Label_3925
	.word	-128
	.word	4
	.word	_Label_3926
	.word	-132
	.word	4
	.word	_Label_3927
	.word	-136
	.word	4
	.word	_Label_3928
	.word	-140
	.word	4
	.word	_Label_3929
	.word	-144
	.word	4
	.word	_Label_3930
	.word	-148
	.word	4
	.word	_Label_3931
	.word	-152
	.word	4
	.word	_Label_3932
	.word	-156
	.word	4
	.word	_Label_3933
	.word	-160
	.word	4
	.word	_Label_3934
	.word	-164
	.word	4
	.word	_Label_3935
	.word	-168
	.word	4
	.word	_Label_3936
	.word	-172
	.word	4
	.word	_Label_3937
	.word	-176
	.word	4
	.word	_Label_3938
	.word	-180
	.word	4
	.word	_Label_3939
	.word	-184
	.word	4
	.word	_Label_3940
	.word	-188
	.word	4
	.word	_Label_3941
	.word	-192
	.word	4
	.word	_Label_3942
	.word	-196
	.word	4
	.word	_Label_3943
	.word	-200
	.word	4
	.word	_Label_3944
	.word	-204
	.word	4
	.word	_Label_3945
	.word	-208
	.word	4
	.word	_Label_3946
	.word	-212
	.word	4
	.word	_Label_3947
	.word	-216
	.word	4
	.word	_Label_3948
	.word	-220
	.word	4
	.word	_Label_3949
	.word	-224
	.word	4
	.word	_Label_3950
	.word	-228
	.word	4
	.word	_Label_3951
	.word	-232
	.word	4
	.word	_Label_3952
	.word	-236
	.word	4
	.word	_Label_3953
	.word	-240
	.word	4
	.word	_Label_3954
	.word	-244
	.word	4
	.word	_Label_3955
	.word	-248
	.word	4
	.word	_Label_3956
	.word	-252
	.word	4
	.word	_Label_3957
	.word	-256
	.word	4
	.word	_Label_3958
	.word	-260
	.word	4
	.word	_Label_3959
	.word	-264
	.word	4
	.word	_Label_3960
	.word	-268
	.word	4
	.word	0
_Label_3892:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3893:
	.ascii	"Pself\0"
	.align
_Label_3894:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3895:
	.byte	'?'
	.ascii	"_temp_3891\0"
	.align
_Label_3896:
	.byte	'?'
	.ascii	"_temp_3890\0"
	.align
_Label_3897:
	.byte	'?'
	.ascii	"_temp_3889\0"
	.align
_Label_3898:
	.byte	'?'
	.ascii	"_temp_3888\0"
	.align
_Label_3899:
	.byte	'?'
	.ascii	"_temp_3885\0"
	.align
_Label_3900:
	.byte	'?'
	.ascii	"_temp_3884\0"
	.align
_Label_3901:
	.byte	'?'
	.ascii	"_temp_3883\0"
	.align
_Label_3902:
	.byte	'C'
	.ascii	"_temp_3882\0"
	.align
_Label_3903:
	.byte	'?'
	.ascii	"_temp_3879\0"
	.align
_Label_3904:
	.byte	'?'
	.ascii	"_temp_3878\0"
	.align
_Label_3905:
	.byte	'?'
	.ascii	"_temp_3873\0"
	.align
_Label_3906:
	.byte	'?'
	.ascii	"_temp_3872\0"
	.align
_Label_3907:
	.byte	'?'
	.ascii	"_temp_3871\0"
	.align
_Label_3908:
	.byte	'?'
	.ascii	"_temp_3870\0"
	.align
_Label_3909:
	.byte	'?'
	.ascii	"_temp_3867\0"
	.align
_Label_3910:
	.byte	'?'
	.ascii	"_temp_3866\0"
	.align
_Label_3911:
	.byte	'?'
	.ascii	"_temp_3865\0"
	.align
_Label_3912:
	.byte	'C'
	.ascii	"_temp_3864\0"
	.align
_Label_3913:
	.byte	'?'
	.ascii	"_temp_3861\0"
	.align
_Label_3914:
	.byte	'?'
	.ascii	"_temp_3860\0"
	.align
_Label_3915:
	.byte	'?'
	.ascii	"_temp_3855\0"
	.align
_Label_3916:
	.byte	'?'
	.ascii	"_temp_3854\0"
	.align
_Label_3917:
	.byte	'?'
	.ascii	"_temp_3853\0"
	.align
_Label_3918:
	.byte	'?'
	.ascii	"_temp_3852\0"
	.align
_Label_3919:
	.byte	'?'
	.ascii	"_temp_3849\0"
	.align
_Label_3920:
	.byte	'?'
	.ascii	"_temp_3848\0"
	.align
_Label_3921:
	.byte	'?'
	.ascii	"_temp_3847\0"
	.align
_Label_3922:
	.byte	'?'
	.ascii	"_temp_3846\0"
	.align
_Label_3923:
	.byte	'?'
	.ascii	"_temp_3843\0"
	.align
_Label_3924:
	.byte	'?'
	.ascii	"_temp_3842\0"
	.align
_Label_3925:
	.byte	'?'
	.ascii	"_temp_3841\0"
	.align
_Label_3926:
	.byte	'?'
	.ascii	"_temp_3840\0"
	.align
_Label_3927:
	.byte	'?'
	.ascii	"_temp_3839\0"
	.align
_Label_3928:
	.byte	'?'
	.ascii	"_temp_3836\0"
	.align
_Label_3929:
	.byte	'?'
	.ascii	"_temp_3835\0"
	.align
_Label_3930:
	.byte	'?'
	.ascii	"_temp_3832\0"
	.align
_Label_3931:
	.byte	'?'
	.ascii	"_temp_3831\0"
	.align
_Label_3932:
	.byte	'?'
	.ascii	"_temp_3828\0"
	.align
_Label_3933:
	.byte	'?'
	.ascii	"_temp_3827\0"
	.align
_Label_3934:
	.byte	'?'
	.ascii	"_temp_3824\0"
	.align
_Label_3935:
	.byte	'?'
	.ascii	"_temp_3821\0"
	.align
_Label_3936:
	.byte	'?'
	.ascii	"_temp_3820\0"
	.align
_Label_3937:
	.byte	'?'
	.ascii	"_temp_3817\0"
	.align
_Label_3938:
	.byte	'?'
	.ascii	"_temp_3816\0"
	.align
_Label_3939:
	.byte	'?'
	.ascii	"_temp_3815\0"
	.align
_Label_3940:
	.byte	'?'
	.ascii	"_temp_3814\0"
	.align
_Label_3941:
	.byte	'?'
	.ascii	"_temp_3813\0"
	.align
_Label_3942:
	.byte	'?'
	.ascii	"_temp_3812\0"
	.align
_Label_3943:
	.byte	'?'
	.ascii	"_temp_3811\0"
	.align
_Label_3944:
	.byte	'?'
	.ascii	"_temp_3810\0"
	.align
_Label_3945:
	.byte	'?'
	.ascii	"_temp_3809\0"
	.align
_Label_3946:
	.byte	'?'
	.ascii	"_temp_3806\0"
	.align
_Label_3947:
	.byte	'?'
	.ascii	"_temp_3805\0"
	.align
_Label_3948:
	.byte	'?'
	.ascii	"_temp_3804\0"
	.align
_Label_3949:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3950:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3951:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3952:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3953:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3954:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3955:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3956:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3957:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3958:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3959:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3960:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align

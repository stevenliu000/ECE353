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
	.skip	1316
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
_StringConst_199:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_198:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_197:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_196:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_195:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_194:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_193:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_192:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_191:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_190:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_189:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_188:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_187:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_186:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_185:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_184:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_183:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_182:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_181:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_180:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_179:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_178:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_177:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_176:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_175:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_174:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_173:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_172:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_171:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_170:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_169:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_168:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_167:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_166:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_165:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_164:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_163:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_162:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_161:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_160:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_159:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_158:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_157:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_156:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_155:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_154:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_153:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_152:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_151:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_150:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_149:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_148:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_147:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_146:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_143:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_142:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_141:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_140:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_138:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_137:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_136:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_134:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_133:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_132:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_131:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_130:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_129:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_128:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_127:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_126:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_125:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_124:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_123:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_122:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_121:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_120:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_119:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_118:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_117:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_116:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_115:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_114:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_113:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_112:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_111:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_110:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_109:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_108:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_107:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_106:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_105:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_104:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_103:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_102:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_101:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_100:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_99:
	.word	14			! length
	.ascii	"ThreadNameHere"
	.align
_StringConst_98:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_97:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_96:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_95:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_94:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_93:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_92:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_91:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_90:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_89:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_88:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_87:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_86:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_85:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_84:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_83:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_82:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_81:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_80:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_79:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_78:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_77:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_76:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_75:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_74:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_73:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_72:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_71:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_70:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_69:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_68:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_67:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_66:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_65:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_64:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_63:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_62:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_61:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_60:
	.word	20			! length
	.ascii	"Becoming User Thread"
	.align
_StringConst_59:
	.word	12			! length
	.ascii	"TestProgram3"
	.align
_StringConst_58:
	.word	11			! length
	.ascii	"UserProgram"
	.align
_StringConst_57:
	.word	26			! length
	.ascii	"Loading initial program..."
	.align
_StringConst_56:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_55:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_54:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_53:
	.word	25			! length
	.ascii	"Handle_Sys_Close invoked!"
	.align
_StringConst_52:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_51:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_50:
	.word	24			! length
	.ascii	"Handle_Sys_Seek invoked!"
	.align
_StringConst_49:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_48:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_47:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_46:
	.word	25			! length
	.ascii	"Handle_Sys_Write invoked!"
	.align
_StringConst_45:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_44:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_43:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_42:
	.word	24			! length
	.ascii	"Handle_Sys_Read invoked!"
	.align
_StringConst_41:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_40:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_39:
	.word	24			! length
	.ascii	"Handle_Sys_Open invoked!"
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
	set	0x6cf0bb00,r4		! myHashVal = 1827715840
	cmp	r3,r4
	be	_Label_208
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
_Label_208:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_209
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_209
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_209
_Label_209:
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
_Label_3339:
	push	r0
	sub	r1,1,r1
	bne	_Label_3339
	mov	8,r13		! source line 8
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_210 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_210  sizeInBytes=4
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
_Label_3340:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3340
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0SE",r10
!   _temp_214 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_215 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_214  sizeInBytes=4
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
!   _temp_216 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_217 = _temp_216 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_217 = 3  (sizeInBytes=4)
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
_Label_3341:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3341
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_219 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_220 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_219  sizeInBytes=4
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
!   _temp_221 = _function_207_IdleFunction
	set	_function_207_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_222 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_221  sizeInBytes=4
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
	.word	_Label_223
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_224
	.word	-12
	.word	4
	.word	_Label_225
	.word	-16
	.word	4
	.word	_Label_226
	.word	-20
	.word	4
	.word	_Label_227
	.word	-24
	.word	4
	.word	_Label_228
	.word	-28
	.word	4
	.word	_Label_229
	.word	-32
	.word	4
	.word	_Label_230
	.word	-36
	.word	4
	.word	_Label_231
	.word	-40
	.word	4
	.word	_Label_232
	.word	-44
	.word	4
	.word	_Label_233
	.word	-48
	.word	4
	.word	_Label_234
	.word	-52
	.word	4
	.word	_Label_235
	.word	-56
	.word	4
	.word	_Label_236
	.word	-60
	.word	4
	.word	0
_Label_223:
	.ascii	"InitializeScheduler\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_207_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_207_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3342:
	push	r0
	sub	r1,1,r1
	bne	_Label_3342
	mov	33,r13		! source line 33
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0WH",r10
_Label_237:
!	jmp	_Label_238
_Label_238:
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
!   _temp_242 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_240 else goto _Label_241
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_241
	jmp	_Label_240
_Label_240:
! THEN...
	mov	46,r13		! source line 46
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_243
_Label_241:
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
_Label_243:
! END WHILE...
	jmp	_Label_237
_Label_239:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_207_IdleFunction:
	.word	_sourceFileName
	.word	_Label_244
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_245
	.word	8
	.word	4
	.word	_Label_246
	.word	-12
	.word	4
	.word	_Label_247
	.word	-16
	.word	4
	.word	0
_Label_244:
	.ascii	"IdleFunction\0"
	.align
_Label_245:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_247:
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
_Label_3343:
	push	r0
	sub	r1,1,r1
	bne	_Label_3343
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
!   _temp_250 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_250 ) then goto _Label_249		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_249
!	jmp	_Label_248
_Label_248:
! THEN...
	mov	72,r13		! source line 72
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_252 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_252 [0 ] into _temp_253
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
!   _temp_251 = _temp_253		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_251  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_249:
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
!   _temp_254 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_254 = 3  (sizeInBytes=4)
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
_Label_255:
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_259 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_258  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_258 then goto _Label_257 else goto _Label_256
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_256
	jmp	_Label_257
_Label_256:
	mov	85,r13		! source line 85
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0AS",r10
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_260 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_261 = &_P_Kernel_threadManager
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
	jmp	_Label_255
_Label_257:
! IF STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_264 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_264 ) then goto _Label_263		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_263
!	jmp	_Label_262
_Label_262:
! THEN...
	mov	91,r13		! source line 91
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_266 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_266 [0 ] into _temp_267
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
!   _temp_265 = _temp_267		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_265  sizeInBytes=4
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
!   _temp_269 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_268 = *_temp_269  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_268) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_270 = _temp_268 + 32
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
_Label_263:
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
	.word	_Label_271
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_272
	.word	8
	.word	4
	.word	_Label_273
	.word	-16
	.word	4
	.word	_Label_274
	.word	-20
	.word	4
	.word	_Label_275
	.word	-24
	.word	4
	.word	_Label_276
	.word	-28
	.word	4
	.word	_Label_277
	.word	-32
	.word	4
	.word	_Label_278
	.word	-36
	.word	4
	.word	_Label_279
	.word	-40
	.word	4
	.word	_Label_280
	.word	-44
	.word	4
	.word	_Label_281
	.word	-48
	.word	4
	.word	_Label_282
	.word	-52
	.word	4
	.word	_Label_283
	.word	-9
	.word	1
	.word	_Label_284
	.word	-56
	.word	4
	.word	_Label_285
	.word	-60
	.word	4
	.word	_Label_286
	.word	-64
	.word	4
	.word	_Label_287
	.word	-68
	.word	4
	.word	_Label_288
	.word	-72
	.word	4
	.word	_Label_289
	.word	-76
	.word	4
	.word	_Label_290
	.word	-80
	.word	4
	.word	0
_Label_271:
	.ascii	"Run\0"
	.align
_Label_272:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_283:
	.byte	'C'
	.ascii	"_temp_258\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_289:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_290:
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
_Label_3344:
	push	r0
	sub	r1,1,r1
	bne	_Label_3344
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
!   _temp_291 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_291  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_292 = _function_206_ThreadPrintShort
	set	_function_206_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_293 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_292  sizeInBytes=4
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
	.word	_Label_294
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_295
	.word	-12
	.word	4
	.word	_Label_296
	.word	-16
	.word	4
	.word	_Label_297
	.word	-20
	.word	4
	.word	_Label_298
	.word	-24
	.word	4
	.word	0
_Label_294:
	.ascii	"PrintReadyList\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_298:
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
_Label_3345:
	push	r0
	sub	r1,1,r1
	bne	_Label_3345
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
!   _temp_299 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_299  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_301 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_300 = *_temp_301  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
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
!   _temp_302 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_302  sizeInBytes=4
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
	.word	_Label_303
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_304
	.word	-12
	.word	4
	.word	_Label_305
	.word	-16
	.word	4
	.word	_Label_306
	.word	-20
	.word	4
	.word	_Label_307
	.word	-24
	.word	4
	.word	_Label_308
	.word	-28
	.word	4
	.word	_Label_309
	.word	-32
	.word	4
	.word	0
_Label_303:
	.ascii	"ThreadStartMain\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_308:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_309:
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
_Label_3346:
	push	r0
	sub	r1,1,r1
	bne	_Label_3346
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
!   _temp_310 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_311 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
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
	.word	_Label_312
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_313
	.word	-12
	.word	4
	.word	_Label_314
	.word	-16
	.word	4
	.word	_Label_315
	.word	-20
	.word	4
	.word	0
_Label_312:
	.ascii	"ThreadFinish\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_315:
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
_Label_3347:
	push	r0
	sub	r1,1,r1
	bne	_Label_3347
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
!   _temp_316 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_316  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_318		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_318
!	jmp	_Label_317
_Label_317:
! THEN...
	mov	168,r13		! source line 168
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_319 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
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
!   _temp_321 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_320 = *_temp_321  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_318:
! CALL STATEMENT...
!   _temp_322 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
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
!   _temp_323 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_324 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
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
	.word	_Label_325
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_326
	.word	8
	.word	4
	.word	_Label_327
	.word	-12
	.word	4
	.word	_Label_328
	.word	-16
	.word	4
	.word	_Label_329
	.word	-20
	.word	4
	.word	_Label_330
	.word	-24
	.word	4
	.word	_Label_331
	.word	-28
	.word	4
	.word	_Label_332
	.word	-32
	.word	4
	.word	_Label_333
	.word	-36
	.word	4
	.word	_Label_334
	.word	-40
	.word	4
	.word	0
_Label_325:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_326:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_334:
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
_Label_3348:
	push	r0
	sub	r1,1,r1
	bne	_Label_3348
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
!   if newStatus != 1 then goto _Label_336		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_336
!	jmp	_Label_335
_Label_335:
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
	jmp	_Label_337
_Label_336:
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
_Label_337:
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
	.word	_Label_338
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_339
	.word	8
	.word	4
	.word	_Label_340
	.word	-12
	.word	4
	.word	0
_Label_338:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_339:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_340:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_206_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3349:
	push	r0
	sub	r1,1,r1
	bne	_Label_3349
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
!   if t == 0 then goto _Label_344		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_344
!   _temp_343 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_345
_Label_344:
!   _temp_343 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_345:
!   if _temp_343 then goto _Label_342 else goto _Label_341
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_341
	jmp	_Label_342
_Label_341:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_346 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
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
_Label_342:
! CALL STATEMENT...
!   _temp_347 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
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
!   _temp_349 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_348 = *_temp_349  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_350 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
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
!   _temp_359 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_358 = *_temp_359  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_353
	cmp	r1,2
	be	_Label_354
	cmp	r1,3
	be	_Label_355
	cmp	r1,4
	be	_Label_356
	cmp	r1,5
	be	_Label_357
	jmp	_Label_351
! CASE 1...
_Label_353:
! CALL STATEMENT...
!   _temp_360 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_352
! CASE 2...
_Label_354:
! CALL STATEMENT...
!   _temp_361 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_352
! CASE 3...
_Label_355:
! CALL STATEMENT...
!   _temp_362 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_352
! CASE 4...
_Label_356:
! CALL STATEMENT...
!   _temp_363 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_352
! CASE 5...
_Label_357:
! CALL STATEMENT...
!   _temp_364 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_352
! DEFAULT CASE...
_Label_351:
! CALL STATEMENT...
!   _temp_365 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
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
_Label_352:
! CALL STATEMENT...
!   _temp_366 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_367 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_367  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_368 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
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
_RoutineDescriptor__function_206_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_369
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_370
	.word	8
	.word	4
	.word	_Label_371
	.word	-16
	.word	4
	.word	_Label_372
	.word	-20
	.word	4
	.word	_Label_373
	.word	-24
	.word	4
	.word	_Label_374
	.word	-28
	.word	4
	.word	_Label_375
	.word	-32
	.word	4
	.word	_Label_376
	.word	-36
	.word	4
	.word	_Label_377
	.word	-40
	.word	4
	.word	_Label_378
	.word	-44
	.word	4
	.word	_Label_379
	.word	-48
	.word	4
	.word	_Label_380
	.word	-52
	.word	4
	.word	_Label_381
	.word	-56
	.word	4
	.word	_Label_382
	.word	-60
	.word	4
	.word	_Label_383
	.word	-64
	.word	4
	.word	_Label_384
	.word	-68
	.word	4
	.word	_Label_385
	.word	-72
	.word	4
	.word	_Label_386
	.word	-76
	.word	4
	.word	_Label_387
	.word	-9
	.word	1
	.word	_Label_388
	.word	-80
	.word	4
	.word	0
_Label_369:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_370:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_387:
	.byte	'C'
	.ascii	"_temp_343\0"
	.align
_Label_388:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_205_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3350:
	push	r0
	sub	r1,1,r1
	bne	_Label_3350
	mov	1029,r13		! source line 1029
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_389 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
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
_RoutineDescriptor__function_205_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_390
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_391
	.word	8
	.word	4
	.word	_Label_392
	.word	-12
	.word	4
	.word	0
_Label_390:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_391:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_389\0"
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
	mov	19,r1
_Label_3351:
	push	r0
	sub	r1,1,r1
	bne	_Label_3351
	mov	1039,r13		! source line 1039
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1049,r13		! source line 1049
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_394 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_393 = *_temp_394  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_393) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_395 = _temp_393 + 28
	load	[r14+-72],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_395 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1050,r13		! source line 1050
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1050,r13		! source line 1050
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=status  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_396 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_396 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=status  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1052,r13		! source line 1052
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=status  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_399 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_398 = *_temp_399  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_398) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_400 = _temp_398 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_397 = _temp_400		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-56]
!   _temp_401 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_397  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_403 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_402 = *_temp_403  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_404 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_402  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1055,r13		! source line 1055
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=status  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_406 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_405 = *_temp_406  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_405) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_407 = _temp_405 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_407 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_408 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_408 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1058,r13		! source line 1058
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=status  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1058,r13		! source line 1058
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=status  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! CALL STATEMENT...
!   Call the function
	mov	1059,r13		! source line 1059
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_409
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_410
	.word	8
	.word	4
	.word	_Label_411
	.word	-12
	.word	4
	.word	_Label_412
	.word	-16
	.word	4
	.word	_Label_413
	.word	-20
	.word	4
	.word	_Label_414
	.word	-24
	.word	4
	.word	_Label_415
	.word	-28
	.word	4
	.word	_Label_416
	.word	-32
	.word	4
	.word	_Label_417
	.word	-36
	.word	4
	.word	_Label_418
	.word	-40
	.word	4
	.word	_Label_419
	.word	-44
	.word	4
	.word	_Label_420
	.word	-48
	.word	4
	.word	_Label_421
	.word	-52
	.word	4
	.word	_Label_422
	.word	-56
	.word	4
	.word	_Label_423
	.word	-60
	.word	4
	.word	_Label_424
	.word	-64
	.word	4
	.word	_Label_425
	.word	-68
	.word	4
	.word	_Label_426
	.word	-72
	.word	4
	.word	_Label_427
	.word	-76
	.word	4
	.word	0
_Label_409:
	.ascii	"ProcessFinish\0"
	.align
_Label_410:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_427:
	.byte	'I'
	.ascii	"status\0"
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
_Label_3352:
	push	r0
	sub	r1,1,r1
	bne	_Label_3352
	mov	1542,r13		! source line 1542
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1554,r13		! source line 1554
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
	mov	1555,r13		! source line 1555
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1555,r13		! source line 1555
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
	.word	_Label_428
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_428:
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
_Label_3353:
	push	r0
	sub	r1,1,r1
	bne	_Label_3353
	mov	1560,r13		! source line 1560
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1571,r13		! source line 1571
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1573,r13		! source line 1573
	mov	"\0\0IF",r10
!   _temp_432 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_433 = _temp_432 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_431 = *_temp_433  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_431 == 0 then goto _Label_430		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_430
!	jmp	_Label_429
_Label_429:
! THEN...
	mov	1574,r13		! source line 1574
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1574,r13		! source line 1574
	mov	"\0\0SE",r10
!   _temp_435 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_436 = _temp_435 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_434 = *_temp_436  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_434) then goto _runtimeErrorNullPointer
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
_Label_430:
! RETURN STATEMENT...
	mov	1573,r13		! source line 1573
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
	.word	_Label_437
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_438
	.word	-12
	.word	4
	.word	_Label_439
	.word	-16
	.word	4
	.word	_Label_440
	.word	-20
	.word	4
	.word	_Label_441
	.word	-24
	.word	4
	.word	_Label_442
	.word	-28
	.word	4
	.word	_Label_443
	.word	-32
	.word	4
	.word	0
_Label_437:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_431\0"
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
	mov	1581,r13		! source line 1581
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1590,r13		! source line 1590
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1590,r13		! source line 1590
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
	.word	_Label_444
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_444:
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
_Label_3354:
	push	r0
	sub	r1,1,r1
	bne	_Label_3354
	mov	1595,r13		! source line 1595
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_445 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_445  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1602,r13		! source line 1602
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1602,r13		! source line 1602
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
	.word	_Label_446
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_447
	.word	-12
	.word	4
	.word	0
_Label_446:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_445\0"
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
_Label_3355:
	push	r0
	sub	r1,1,r1
	bne	_Label_3355
	mov	1607,r13		! source line 1607
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_448 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_448  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1614,r13		! source line 1614
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1614,r13		! source line 1614
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
	.word	_Label_449
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_450
	.word	-12
	.word	4
	.word	0
_Label_449:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_448\0"
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
_Label_3356:
	push	r0
	sub	r1,1,r1
	bne	_Label_3356
	mov	1619,r13		! source line 1619
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1625,r13		! source line 1625
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_451 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_451  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1626,r13		! source line 1626
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1626,r13		! source line 1626
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
	.word	_Label_452
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_453
	.word	-12
	.word	4
	.word	0
_Label_452:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_451\0"
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
_Label_3357:
	push	r0
	sub	r1,1,r1
	bne	_Label_3357
	mov	1631,r13		! source line 1631
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1637,r13		! source line 1637
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_454 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_454  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1638,r13		! source line 1638
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1638,r13		! source line 1638
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
	.word	_Label_455
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_456
	.word	-12
	.word	4
	.word	0
_Label_455:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_454\0"
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
_Label_3358:
	push	r0
	sub	r1,1,r1
	bne	_Label_3358
	mov	1643,r13		! source line 1643
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1649,r13		! source line 1649
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_457 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_457  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1650,r13		! source line 1650
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1650,r13		! source line 1650
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
	.word	_Label_458
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_459
	.word	-12
	.word	4
	.word	0
_Label_458:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_457\0"
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
_Label_3359:
	push	r0
	sub	r1,1,r1
	bne	_Label_3359
	mov	1655,r13		! source line 1655
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1661,r13		! source line 1661
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_460 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_460  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1662,r13		! source line 1662
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1662,r13		! source line 1662
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
	.word	_Label_461
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_462
	.word	-12
	.word	4
	.word	0
_Label_461:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_460\0"
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
_Label_3360:
	push	r0
	sub	r1,1,r1
	bne	_Label_3360
	mov	1667,r13		! source line 1667
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1673,r13		! source line 1673
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_463 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_463  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1674,r13		! source line 1674
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1674,r13		! source line 1674
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
	.word	_Label_464
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_465
	.word	-12
	.word	4
	.word	0
_Label_464:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_204_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3361:
	push	r0
	sub	r1,1,r1
	bne	_Label_3361
	mov	1679,r13		! source line 1679
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_466 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_466  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1684,r13		! source line 1684
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1685,r13		! source line 1685
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_467 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_467  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1686,r13		! source line 1686
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_471 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_470 = *_temp_471  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_470 == 0 then goto _Label_469		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_469
!	jmp	_Label_468
_Label_468:
! THEN...
	mov	1690,r13		! source line 1690
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_473 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_472 = *_temp_473  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_472) then goto _runtimeErrorNullPointer
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
	jmp	_Label_474
_Label_469:
! ELSE...
	mov	1692,r13		! source line 1692
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_475 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_475  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1692,r13		! source line 1692
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_474:
! SEND STATEMENT...
	mov	1694,r13		! source line 1694
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
	mov	1700,r13		! source line 1700
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_204_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_476
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_477
	.word	8
	.word	4
	.word	_Label_478
	.word	-12
	.word	4
	.word	_Label_479
	.word	-16
	.word	4
	.word	_Label_480
	.word	-20
	.word	4
	.word	_Label_481
	.word	-24
	.word	4
	.word	_Label_482
	.word	-28
	.word	4
	.word	_Label_483
	.word	-32
	.word	4
	.word	_Label_484
	.word	-36
	.word	4
	.word	0
_Label_476:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_477:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_466\0"
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
_Label_3362:
	push	r0
	sub	r1,1,r1
	bne	_Label_3362
	mov	1705,r13		! source line 1705
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1712,r13		! source line 1712
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1726,r13		! source line 1726
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3363
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_485
_Label_3363:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_485
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_485
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_499,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_499:
	jmp	_Label_491	! 1:	
	jmp	_Label_498	! 2:	
	jmp	_Label_488	! 3:	
	jmp	_Label_487	! 4:	
	jmp	_Label_490	! 5:	
	jmp	_Label_489	! 6:	
	jmp	_Label_492	! 7:	
	jmp	_Label_493	! 8:	
	jmp	_Label_494	! 9:	
	jmp	_Label_495	! 10:	
	jmp	_Label_496	! 11:	
	jmp	_Label_497	! 12:	
! CASE 4...
_Label_487:
! RETURN STATEMENT...
	mov	1728,r13		! source line 1728
	mov	"\0\0RE",r10
!   Call the function
	mov	1728,r13		! source line 1728
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_500  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_500  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_488:
! CALL STATEMENT...
!   Call the function
	mov	1730,r13		! source line 1730
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1731,r13		! source line 1731
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_489:
! RETURN STATEMENT...
	mov	1733,r13		! source line 1733
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1733,r13		! source line 1733
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_501  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_501  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_490:
! RETURN STATEMENT...
	mov	1735,r13		! source line 1735
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1735,r13		! source line 1735
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_502  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_502  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_491:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1737,r13		! source line 1737
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1738,r13		! source line 1738
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_492:
! RETURN STATEMENT...
	mov	1740,r13		! source line 1740
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1740,r13		! source line 1740
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_503  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_503  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_493:
! RETURN STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1742,r13		! source line 1742
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_504  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_504  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_494:
! RETURN STATEMENT...
	mov	1744,r13		! source line 1744
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
	mov	1744,r13		! source line 1744
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_505  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_505  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_495:
! RETURN STATEMENT...
	mov	1746,r13		! source line 1746
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
	mov	1746,r13		! source line 1746
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_506  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_506  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_496:
! RETURN STATEMENT...
	mov	1748,r13		! source line 1748
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1748,r13		! source line 1748
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_507  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_507  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_497:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1750,r13		! source line 1750
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_498:
! CALL STATEMENT...
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_485:
! CALL STATEMENT...
!   _temp_508 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_508  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1756,r13		! source line 1756
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1757,r13		! source line 1757
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1758,r13		! source line 1758
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_509 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1759,r13		! source line 1759
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_486:
! RETURN STATEMENT...
	mov	1761,r13		! source line 1761
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
	.word	_Label_510
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_511
	.word	8
	.word	4
	.word	_Label_512
	.word	12
	.word	4
	.word	_Label_513
	.word	16
	.word	4
	.word	_Label_514
	.word	20
	.word	4
	.word	_Label_515
	.word	24
	.word	4
	.word	_Label_516
	.word	-12
	.word	4
	.word	_Label_517
	.word	-16
	.word	4
	.word	_Label_518
	.word	-20
	.word	4
	.word	_Label_519
	.word	-24
	.word	4
	.word	_Label_520
	.word	-28
	.word	4
	.word	_Label_521
	.word	-32
	.word	4
	.word	_Label_522
	.word	-36
	.word	4
	.word	_Label_523
	.word	-40
	.word	4
	.word	_Label_524
	.word	-44
	.word	4
	.word	_Label_525
	.word	-48
	.word	4
	.word	0
_Label_510:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_511:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_512:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_513:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_514:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_515:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_500\0"
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
_Label_3364:
	push	r0
	sub	r1,1,r1
	bne	_Label_3364
	mov	1766,r13		! source line 1766
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1768,r13		! source line 1768
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1768,r13		! source line 1768
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
	.word	_Label_526
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_527
	.word	8
	.word	4
	.word	0
_Label_526:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_527:
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
_Label_3365:
	push	r0
	sub	r1,1,r1
	bne	_Label_3365
	mov	1773,r13		! source line 1773
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_528 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_528  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1775,r13		! source line 1775
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	1776,r13		! source line 1776
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1776,r13		! source line 1776
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
	.word	_Label_529
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_530
	.word	-12
	.word	4
	.word	0
_Label_529:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_528\0"
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
_Label_3366:
	push	r0
	sub	r1,1,r1
	bne	_Label_3366
	mov	1781,r13		! source line 1781
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1783,r13		! source line 1783
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
	mov	1783,r13		! source line 1783
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
	.word	_Label_531
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_531:
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
	mov	55,r1
_Label_3367:
	push	r0
	sub	r1,1,r1
	bne	_Label_3367
	mov	1789,r13		! source line 1789
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1798,r13		! source line 1798
	mov	"\0\0AS",r10
	mov	1798,r13		! source line 1798
	mov	"\0\0SE",r10
!   _temp_532 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-196]
!   Send message GetANewThread
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-200]
! ASSIGNMENT STATEMENT...
	mov	1799,r13		! source line 1799
	mov	"\0\0AS",r10
	mov	1799,r13		! source line 1799
	mov	"\0\0SE",r10
!   _temp_533 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-192]
!   Send message GetANewProcess
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_534 = newPCB + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-188]
!   Data Move: *_temp_534 = newThread  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1801,r13		! source line 1801
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_535 = newPCB + 16
	load	[r14+-204],r1
	add	r1,16,r1
	store	r1,[r14+-184]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_538 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_537 = *_temp_538  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_537) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_539 = _temp_537 + 12
	load	[r14+-176],r1
	add	r1,12,r1
	store	r1,[r14+-168]
!   Data Move: _temp_536 = *_temp_539  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   Data Move: *_temp_535 = _temp_536  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-184],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_540 = newThread + 76
	load	[r14+-200],r1
	add	r1,76,r1
	store	r1,[r14+-164]
!   Data Move: *_temp_540 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-164],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_541 = newThread + 4160
	load	[r14+-200],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_541 = newPCB  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r14+-160],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_543 = newThread + 4096
	load	[r14+-200],r1
	add	r1,4096,r1
	store	r1,[r14+-152]
!   Move address of _temp_543 [0 ] into _temp_544
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_542 = _temp_544		(4 bytes)
	load	[r14+-148],r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_542  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	1805,r13		! source line 1805
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1806,r13		! source line 1806
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1806,r13		! source line 1806
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_545 = newThread + 68
	load	[r14+-200],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_547 = newThread + 88
	load	[r14+-200],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_547 [999 ] into _temp_548
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
!   _temp_546 = _temp_548		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_545 = _temp_546  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_550 = newPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_549 = _temp_550		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_553 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_552 = *_temp_553  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_552) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_554 = _temp_552 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_555 = _temp_554 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_551 = *_temp_555  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_556 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_549  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_551  sizeInBytes=4
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
	mov	1811,r13		! source line 1811
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_561 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_565 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_564 = *_temp_565  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_564) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_566 = _temp_564 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_567 = _temp_566 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_563 = *_temp_567  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_562 = _temp_563 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_561  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-216]
_Label_557:
!   Perform the FOR-LOOP termination test
!   if i > _temp_562 then goto _Label_560		
	load	[r14+-216],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_560
_Label_558:
	mov	1811,r13		! source line 1811
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_569 = newPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_568  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1812,r13		! source line 1812
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_572 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_571 = *_temp_572  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_571) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_573 = _temp_571 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_570  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_568  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_570  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1812,r13		! source line 1812
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0IF",r10
	mov	1813,r13		! source line 1813
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_578 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_577 = *_temp_578  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_577) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_579 = _temp_577 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_576  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_580 = _temp_576 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_580 then goto _Label_575 else goto _Label_574
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_574
	jmp	_Label_575
_Label_574:
! THEN...
	mov	1814,r13		! source line 1814
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1814,r13		! source line 1814
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_581 = newPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
	jmp	_Label_582
_Label_575:
! ELSE...
	mov	1816,r13		! source line 1816
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_583 = newPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-216],r1
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
_Label_582:
!   Increment the FOR-LOOP index variable and jump back
_Label_559:
!   i = i + 1
	load	[r14+-216],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
	jmp	_Label_557
! END FOR
_Label_560:
! ASSIGNMENT STATEMENT...
	mov	1820,r13		! source line 1820
	mov	"\0\0AS",r10
!   Call the function
	mov	1820,r13		! source line 1820
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
! SEND STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0SE",r10
!   _temp_584 = _function_203_ResumeChildAfterFork
	set	_function_203_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_584  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-200],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_586 = newPCB + 12
	load	[r14+-204],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_585 = *_temp_586  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_585  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,224,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_587
	.word	0		! total size of parameters
	.word	220		! frame size = 220
	.word	_Label_588
	.word	-16
	.word	4
	.word	_Label_589
	.word	-20
	.word	4
	.word	_Label_590
	.word	-24
	.word	4
	.word	_Label_591
	.word	-28
	.word	4
	.word	_Label_592
	.word	-32
	.word	4
	.word	_Label_593
	.word	-9
	.word	1
	.word	_Label_594
	.word	-36
	.word	4
	.word	_Label_595
	.word	-40
	.word	4
	.word	_Label_596
	.word	-44
	.word	4
	.word	_Label_597
	.word	-10
	.word	1
	.word	_Label_598
	.word	-48
	.word	4
	.word	_Label_599
	.word	-52
	.word	4
	.word	_Label_600
	.word	-56
	.word	4
	.word	_Label_601
	.word	-60
	.word	4
	.word	_Label_602
	.word	-64
	.word	4
	.word	_Label_603
	.word	-68
	.word	4
	.word	_Label_604
	.word	-72
	.word	4
	.word	_Label_605
	.word	-76
	.word	4
	.word	_Label_606
	.word	-80
	.word	4
	.word	_Label_607
	.word	-84
	.word	4
	.word	_Label_608
	.word	-88
	.word	4
	.word	_Label_609
	.word	-92
	.word	4
	.word	_Label_610
	.word	-96
	.word	4
	.word	_Label_611
	.word	-100
	.word	4
	.word	_Label_612
	.word	-104
	.word	4
	.word	_Label_613
	.word	-108
	.word	4
	.word	_Label_614
	.word	-112
	.word	4
	.word	_Label_615
	.word	-116
	.word	4
	.word	_Label_616
	.word	-120
	.word	4
	.word	_Label_617
	.word	-124
	.word	4
	.word	_Label_618
	.word	-128
	.word	4
	.word	_Label_619
	.word	-132
	.word	4
	.word	_Label_620
	.word	-136
	.word	4
	.word	_Label_621
	.word	-140
	.word	4
	.word	_Label_622
	.word	-144
	.word	4
	.word	_Label_623
	.word	-148
	.word	4
	.word	_Label_624
	.word	-152
	.word	4
	.word	_Label_625
	.word	-156
	.word	4
	.word	_Label_626
	.word	-160
	.word	4
	.word	_Label_627
	.word	-164
	.word	4
	.word	_Label_628
	.word	-168
	.word	4
	.word	_Label_629
	.word	-172
	.word	4
	.word	_Label_630
	.word	-176
	.word	4
	.word	_Label_631
	.word	-180
	.word	4
	.word	_Label_632
	.word	-184
	.word	4
	.word	_Label_633
	.word	-188
	.word	4
	.word	_Label_634
	.word	-192
	.word	4
	.word	_Label_635
	.word	-196
	.word	4
	.word	_Label_636
	.word	-200
	.word	4
	.word	_Label_637
	.word	-204
	.word	4
	.word	_Label_638
	.word	-208
	.word	4
	.word	_Label_639
	.word	-212
	.word	4
	.word	_Label_640
	.word	-216
	.word	4
	.word	0
_Label_587:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_593:
	.byte	'C'
	.ascii	"_temp_580\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_597:
	.byte	'C'
	.ascii	"_temp_576\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_636:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_637:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_638:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_639:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_640:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_203_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3368:
	push	r0
	sub	r1,1,r1
	bne	_Label_3368
	mov	1828,r13		! source line 1828
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1835,r13		! source line 1835
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_642 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_641 = *_temp_642  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_641) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_643 = _temp_641 + 32
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
!   _temp_645 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_645 [0 ] into _temp_646
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
!   _temp_644 = _temp_646		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_644  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1837,r13		! source line 1837
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_647 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_647 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_648 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_648 [14 ] into _temp_649
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
!   Data Move: userStackTop = *_temp_649  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_650 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_650 [999 ] into _temp_651
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
!   systemStackTop = _temp_651		(4 bytes)
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
	mov	1841,r13		! source line 1841
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_203_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_652
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_653
	.word	8
	.word	4
	.word	_Label_654
	.word	-12
	.word	4
	.word	_Label_655
	.word	-16
	.word	4
	.word	_Label_656
	.word	-20
	.word	4
	.word	_Label_657
	.word	-24
	.word	4
	.word	_Label_658
	.word	-28
	.word	4
	.word	_Label_659
	.word	-32
	.word	4
	.word	_Label_660
	.word	-36
	.word	4
	.word	_Label_661
	.word	-40
	.word	4
	.word	_Label_662
	.word	-44
	.word	4
	.word	_Label_663
	.word	-48
	.word	4
	.word	_Label_664
	.word	-52
	.word	4
	.word	_Label_665
	.word	-56
	.word	4
	.word	_Label_666
	.word	-60
	.word	4
	.word	_Label_667
	.word	-64
	.word	4
	.word	0
_Label_652:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_653:
	.byte	'I'
	.ascii	"PC\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_665:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_666:
	.byte	'I'
	.ascii	"userStackTop\0"
	.align
_Label_667:
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
_Label_3369:
	push	r0
	sub	r1,1,r1
	bne	_Label_3369
	mov	1847,r13		! source line 1847
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_672 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_673 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_672  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_668:
!   Perform the FOR-LOOP termination test
!   if i > _temp_673 then goto _Label_671		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_671
_Label_669:
	mov	1853,r13		! source line 1853
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1854,r13		! source line 1854
	mov	"\0\0IF",r10
!   _temp_679 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_680 = _temp_679 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_680 [i ] into _temp_681
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_682 = _temp_681 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_678 = *_temp_682  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_678 != processID then goto _Label_675		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_675
!	jmp	_Label_677
_Label_677:
!   _temp_684 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_685 = _temp_684 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_685 [i ] into _temp_686
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_687 = _temp_686 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_683 = *_temp_687  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_690 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_689 = *_temp_690  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_689) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_691 = _temp_689 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_688 = *_temp_691  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_683 != _temp_688 then goto _Label_675		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_675
!	jmp	_Label_676
_Label_676:
!   _temp_693 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_694 = _temp_693 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_694 [i ] into _temp_695
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_696 = _temp_695 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_692 = *_temp_696  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_692 == 3 then goto _Label_675		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_675
!	jmp	_Label_674
_Label_674:
! THEN...
	mov	1855,r13		! source line 1855
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1855,r13		! source line 1855
	mov	"\0\0AS",r10
	mov	1855,r13		! source line 1855
	mov	"\0\0SE",r10
!   _temp_698 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_699 = _temp_698 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_699 [i ] into _temp_700
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_697 = _temp_700		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_701 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_697  sizeInBytes=4
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
	mov	1856,r13		! source line 1856
	mov	"\0\0RE",r10
!   ReturnResult: childExitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_675:
!   Increment the FOR-LOOP index variable and jump back
_Label_670:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_668
! END FOR
_Label_671:
! RETURN STATEMENT...
	mov	1860,r13		! source line 1860
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
	.word	_Label_702
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_703
	.word	8
	.word	4
	.word	_Label_704
	.word	-12
	.word	4
	.word	_Label_705
	.word	-16
	.word	4
	.word	_Label_706
	.word	-20
	.word	4
	.word	_Label_707
	.word	-24
	.word	4
	.word	_Label_708
	.word	-28
	.word	4
	.word	_Label_709
	.word	-32
	.word	4
	.word	_Label_710
	.word	-36
	.word	4
	.word	_Label_711
	.word	-40
	.word	4
	.word	_Label_712
	.word	-44
	.word	4
	.word	_Label_713
	.word	-48
	.word	4
	.word	_Label_714
	.word	-52
	.word	4
	.word	_Label_715
	.word	-56
	.word	4
	.word	_Label_716
	.word	-60
	.word	4
	.word	_Label_717
	.word	-64
	.word	4
	.word	_Label_718
	.word	-68
	.word	4
	.word	_Label_719
	.word	-72
	.word	4
	.word	_Label_720
	.word	-76
	.word	4
	.word	_Label_721
	.word	-80
	.word	4
	.word	_Label_722
	.word	-84
	.word	4
	.word	_Label_723
	.word	-88
	.word	4
	.word	_Label_724
	.word	-92
	.word	4
	.word	_Label_725
	.word	-96
	.word	4
	.word	_Label_726
	.word	-100
	.word	4
	.word	_Label_727
	.word	-104
	.word	4
	.word	_Label_728
	.word	-108
	.word	4
	.word	_Label_729
	.word	-112
	.word	4
	.word	_Label_730
	.word	-116
	.word	4
	.word	_Label_731
	.word	-120
	.word	4
	.word	0
_Label_702:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_703:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_730:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_731:
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
_Label_3370:
	push	r0
	sub	r1,1,r1
	bne	_Label_3370
	mov	1866,r13		! source line 1866
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1879,r13		! source line 1879
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=InterruptStauts  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0AS",r10
	mov	1880,r13		! source line 1880
	mov	"\0\0SE",r10
!   _temp_732 = &strBuffer
	add	r14,-228,r1
	store	r1,[r14+-112]
!   _temp_733 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_735 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_734 = *_temp_735  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_734) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_736 = _temp_734 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_732  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_733  sizeInBytes=4
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
	mov	1882,r13		! source line 1882
	mov	"\0\0IF",r10
!   if ret >= 0 then goto _Label_738		(int)
	load	[r14+-252],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_738
!	jmp	_Label_737
_Label_737:
! THEN...
	mov	1883,r13		! source line 1883
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_738:
! ASSIGNMENT STATEMENT...
	mov	1886,r13		! source line 1886
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_3371:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3371
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! SEND STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0SE",r10
!   _temp_740 = &newAddrSpace
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
	mov	1889,r13		! source line 1889
	mov	"\0\0AS",r10
	mov	1889,r13		! source line 1889
	mov	"\0\0SE",r10
!   _temp_741 = &strBuffer
	add	r14,-228,r1
	store	r1,[r14+-84]
!   _temp_742 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_741  sizeInBytes=4
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
	mov	1890,r13		! source line 1890
	mov	"\0\0IF",r10
!   if intIsZero (newOpenFile) then goto _Label_743
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_743
	jmp	_Label_744
_Label_743:
! THEN...
	mov	1891,r13		! source line 1891
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1891,r13		! source line 1891
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_744:
! ASSIGNMENT STATEMENT...
	mov	1894,r13		! source line 1894
	mov	"\0\0AS",r10
	mov	1894,r13		! source line 1894
	mov	"\0\0SE",r10
!   _temp_745 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (newOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_745  sizeInBytes=4
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
	mov	1895,r13		! source line 1895
	mov	"\0\0IF",r10
!   if PC >= 0 then goto _Label_747		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_747
!	jmp	_Label_746
_Label_746:
! THEN...
	mov	1896,r13		! source line 1896
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_747:
! SEND STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_750 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_749 = *_temp_750  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_749) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_751 = _temp_749 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_748 = _temp_751		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_752 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_748  sizeInBytes=4
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
	mov	1900,r13		! source line 1900
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_754 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_753 = *_temp_754  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_753) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_755 = _temp_753 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_755 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_3372:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3372
! SEND STATEMENT...
	mov	1901,r13		! source line 1901
	mov	"\0\0SE",r10
!   _temp_756 = &_P_Kernel_fileManager
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
	mov	1902,r13		! source line 1902
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_757 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_757 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0AS",r10
!   _temp_759 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-28]
!   _temp_760 = _temp_759 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_758 = *_temp_760  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   initUStack = _temp_758 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_761 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_761 [999 ] into _temp_762
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
!   initSStack = _temp_762		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-236]
! SEND STATEMENT...
	mov	1907,r13		! source line 1907
	mov	"\0\0SE",r10
!   _temp_763 = &newAddrSpace
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
	mov	1908,r13		! source line 1908
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1909,r13		! source line 1909
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
	.word	_Label_764
	.word	4		! total size of parameters
	.word	260		! frame size = 260
	.word	_Label_765
	.word	8
	.word	4
	.word	_Label_766
	.word	-12
	.word	4
	.word	_Label_767
	.word	-16
	.word	4
	.word	_Label_768
	.word	-20
	.word	4
	.word	_Label_769
	.word	-24
	.word	4
	.word	_Label_770
	.word	-28
	.word	4
	.word	_Label_771
	.word	-32
	.word	4
	.word	_Label_772
	.word	-36
	.word	4
	.word	_Label_773
	.word	-40
	.word	4
	.word	_Label_774
	.word	-44
	.word	4
	.word	_Label_775
	.word	-48
	.word	4
	.word	_Label_776
	.word	-52
	.word	4
	.word	_Label_777
	.word	-56
	.word	4
	.word	_Label_778
	.word	-60
	.word	4
	.word	_Label_779
	.word	-64
	.word	4
	.word	_Label_780
	.word	-68
	.word	4
	.word	_Label_781
	.word	-72
	.word	4
	.word	_Label_782
	.word	-76
	.word	4
	.word	_Label_783
	.word	-80
	.word	4
	.word	_Label_784
	.word	-84
	.word	4
	.word	_Label_785
	.word	-88
	.word	4
	.word	_Label_786
	.word	-92
	.word	4
	.word	_Label_787
	.word	-96
	.word	4
	.word	_Label_788
	.word	-100
	.word	4
	.word	_Label_789
	.word	-104
	.word	4
	.word	_Label_790
	.word	-108
	.word	4
	.word	_Label_791
	.word	-112
	.word	4
	.word	_Label_792
	.word	-204
	.word	92
	.word	_Label_793
	.word	-228
	.word	24
	.word	_Label_794
	.word	-232
	.word	4
	.word	_Label_795
	.word	-236
	.word	4
	.word	_Label_796
	.word	-240
	.word	4
	.word	_Label_797
	.word	-244
	.word	4
	.word	_Label_798
	.word	-248
	.word	4
	.word	_Label_799
	.word	-252
	.word	4
	.word	0
_Label_764:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_765:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_792:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_793:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_794:
	.byte	'I'
	.ascii	"initUStack\0"
	.align
_Label_795:
	.byte	'I'
	.ascii	"initSStack\0"
	.align
_Label_796:
	.byte	'I'
	.ascii	"PC\0"
	.align
_Label_797:
	.byte	'P'
	.ascii	"newOpenFile\0"
	.align
_Label_798:
	.byte	'I'
	.ascii	"InterruptStauts\0"
	.align
_Label_799:
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
_Label_3373:
	push	r0
	sub	r1,1,r1
	bne	_Label_3373
	mov	1914,r13		! source line 1914
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0AS",r10
	mov	1920,r13		! source line 1920
	mov	"\0\0SE",r10
!   _temp_800 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_801 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_803 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_802 = *_temp_803  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_802) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_804 = _temp_802 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_800  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_801  sizeInBytes=4
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
!   _temp_805 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_805  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1922,r13		! source line 1922
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_806 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_806  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_807 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_807  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1924,r13		! source line 1924
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1925,r13		! source line 1925
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_808 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_808  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1926,r13		! source line 1926
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_809 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_809  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1927,r13		! source line 1927
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1928,r13		! source line 1928
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1929,r13		! source line 1929
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
	.word	_Label_810
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_811
	.word	8
	.word	4
	.word	_Label_812
	.word	-12
	.word	4
	.word	_Label_813
	.word	-16
	.word	4
	.word	_Label_814
	.word	-20
	.word	4
	.word	_Label_815
	.word	-24
	.word	4
	.word	_Label_816
	.word	-28
	.word	4
	.word	_Label_817
	.word	-32
	.word	4
	.word	_Label_818
	.word	-36
	.word	4
	.word	_Label_819
	.word	-40
	.word	4
	.word	_Label_820
	.word	-44
	.word	4
	.word	_Label_821
	.word	-48
	.word	4
	.word	_Label_822
	.word	-52
	.word	4
	.word	_Label_823
	.word	-76
	.word	24
	.word	0
_Label_810:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_811:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_822:
	.byte	'I'
	.ascii	"ret\0"
	.align
_Label_823:
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
	mov	21,r1
_Label_3374:
	push	r0
	sub	r1,1,r1
	bne	_Label_3374
	mov	1934,r13		! source line 1934
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0AS",r10
	mov	1940,r13		! source line 1940
	mov	"\0\0SE",r10
!   _temp_824 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_825 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_827 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_826 = *_temp_827  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_826) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_828 = _temp_826 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_824  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_825  sizeInBytes=4
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
!   _temp_829 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_829  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1941,r13		! source line 1941
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1942,r13		! source line 1942
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_830 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_830  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1943,r13		! source line 1943
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_831 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_831  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1944,r13		! source line 1944
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1945,r13		! source line 1945
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_832 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_832  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1946,r13		! source line 1946
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_833 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_833  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1947,r13		! source line 1947
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1948,r13		! source line 1948
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_834
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_835
	.word	8
	.word	4
	.word	_Label_836
	.word	-12
	.word	4
	.word	_Label_837
	.word	-16
	.word	4
	.word	_Label_838
	.word	-20
	.word	4
	.word	_Label_839
	.word	-24
	.word	4
	.word	_Label_840
	.word	-28
	.word	4
	.word	_Label_841
	.word	-32
	.word	4
	.word	_Label_842
	.word	-36
	.word	4
	.word	_Label_843
	.word	-40
	.word	4
	.word	_Label_844
	.word	-44
	.word	4
	.word	_Label_845
	.word	-48
	.word	4
	.word	_Label_846
	.word	-52
	.word	4
	.word	_Label_847
	.word	-76
	.word	24
	.word	0
_Label_834:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_835:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_846:
	.byte	'I'
	.ascii	"ret\0"
	.align
_Label_847:
	.byte	'A'
	.ascii	"strBuffer\0"
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
	mov	6,r1
_Label_3375:
	push	r0
	sub	r1,1,r1
	bne	_Label_3375
	mov	1954,r13		! source line 1954
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_848 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_848  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1956,r13		! source line 1956
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1957,r13		! source line 1957
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_849 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_849  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1958,r13		! source line 1958
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1959,r13		! source line 1959
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1960,r13		! source line 1960
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_850 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1961,r13		! source line 1961
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_851 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_851  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1962,r13		! source line 1962
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1963,r13		! source line 1963
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_852 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_852  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1964,r13		! source line 1964
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1965,r13		! source line 1965
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1966,r13		! source line 1966
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_853
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_854
	.word	8
	.word	4
	.word	_Label_855
	.word	12
	.word	4
	.word	_Label_856
	.word	16
	.word	4
	.word	_Label_857
	.word	-12
	.word	4
	.word	_Label_858
	.word	-16
	.word	4
	.word	_Label_859
	.word	-20
	.word	4
	.word	_Label_860
	.word	-24
	.word	4
	.word	_Label_861
	.word	-28
	.word	4
	.word	0
_Label_853:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_854:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_855:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_856:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_848\0"
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
	mov	6,r1
_Label_3376:
	push	r0
	sub	r1,1,r1
	bne	_Label_3376
	mov	1972,r13		! source line 1972
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_862 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_862  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1974,r13		! source line 1974
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1975,r13		! source line 1975
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_863 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_863  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1976,r13		! source line 1976
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1977,r13		! source line 1977
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1978,r13		! source line 1978
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_864 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_864  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1979,r13		! source line 1979
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_865 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_865  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1980,r13		! source line 1980
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1981,r13		! source line 1981
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_866 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_866  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1982,r13		! source line 1982
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1983,r13		! source line 1983
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1984,r13		! source line 1984
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_867
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_868
	.word	8
	.word	4
	.word	_Label_869
	.word	12
	.word	4
	.word	_Label_870
	.word	16
	.word	4
	.word	_Label_871
	.word	-12
	.word	4
	.word	_Label_872
	.word	-16
	.word	4
	.word	_Label_873
	.word	-20
	.word	4
	.word	_Label_874
	.word	-24
	.word	4
	.word	_Label_875
	.word	-28
	.word	4
	.word	0
_Label_867:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_868:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_869:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_870:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_862\0"
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
	mov	4,r1
_Label_3377:
	push	r0
	sub	r1,1,r1
	bne	_Label_3377
	mov	1990,r13		! source line 1990
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_876 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_876  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1992,r13		! source line 1992
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1993,r13		! source line 1993
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_877 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_877  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1995,r13		! source line 1995
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_878 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_878  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1997,r13		! source line 1997
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1998,r13		! source line 1998
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1999,r13		! source line 1999
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2000,r13		! source line 2000
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_879
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_880
	.word	8
	.word	4
	.word	_Label_881
	.word	12
	.word	4
	.word	_Label_882
	.word	-12
	.word	4
	.word	_Label_883
	.word	-16
	.word	4
	.word	_Label_884
	.word	-20
	.word	4
	.word	0
_Label_879:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_880:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_881:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_876\0"
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
	mov	3,r1
_Label_3378:
	push	r0
	sub	r1,1,r1
	bne	_Label_3378
	mov	2005,r13		! source line 2005
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_885 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_885  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2007,r13		! source line 2007
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2008,r13		! source line 2008
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_886 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_886  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2009,r13		! source line 2009
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2010,r13		! source line 2010
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2011,r13		! source line 2011
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_887
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_888
	.word	8
	.word	4
	.word	_Label_889
	.word	-12
	.word	4
	.word	_Label_890
	.word	-16
	.word	4
	.word	0
_Label_887:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_888:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_202_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3379:
	push	r0
	sub	r1,1,r1
	bne	_Label_3379
	mov	2603,r13		! source line 2603
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_891 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_891  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0AS",r10
!   _temp_892 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_892) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_894 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_894) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_893 = *_temp_894  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_892 = _temp_893  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0AS",r10
!   _temp_895 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_895) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_897 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_897) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_896 = *_temp_897  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_895 = _temp_896  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0AS",r10
!   _temp_898 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_898) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_900 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_900) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_899 = *_temp_900  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_898 = _temp_899  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_202_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_901
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_902
	.word	8
	.word	4
	.word	_Label_903
	.word	12
	.word	4
	.word	_Label_904
	.word	-16
	.word	4
	.word	_Label_905
	.word	-9
	.word	1
	.word	_Label_906
	.word	-20
	.word	4
	.word	_Label_907
	.word	-24
	.word	4
	.word	_Label_908
	.word	-10
	.word	1
	.word	_Label_909
	.word	-28
	.word	4
	.word	_Label_910
	.word	-32
	.word	4
	.word	_Label_911
	.word	-11
	.word	1
	.word	_Label_912
	.word	-36
	.word	4
	.word	_Label_913
	.word	-12
	.word	1
	.word	_Label_914
	.word	-40
	.word	4
	.word	_Label_915
	.word	-44
	.word	4
	.word	0
_Label_901:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_902:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_903:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_905:
	.byte	'C'
	.ascii	"_temp_899\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_908:
	.byte	'C'
	.ascii	"_temp_896\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_911:
	.byte	'C'
	.ascii	"_temp_893\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_913:
	.byte	'C'
	.ascii	"_temp_891\0"
	.align
_Label_914:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_915:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_201_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_printFCB,r1
	push	r1
	mov	3,r1
_Label_3380:
	push	r0
	sub	r1,1,r1
	bne	_Label_3380
	mov	2613,r13		! source line 2613
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_917 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_916 = *_temp_917  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_916  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2614,r13		! source line 2614
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2615,r13		! source line 2615
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_201_printFCB:
	.word	_sourceFileName
	.word	_Label_918
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_919
	.word	8
	.word	4
	.word	_Label_920
	.word	-12
	.word	4
	.word	_Label_921
	.word	-16
	.word	4
	.word	0
_Label_918:
	.ascii	"printFCB\0"
	.align
_Label_919:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_200_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_200_printOpen,r1
	push	r1
	mov	4,r1
_Label_3381:
	push	r0
	sub	r1,1,r1
	bne	_Label_3381
	mov	2618,r13		! source line 2618
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_922 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_922  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2619,r13		! source line 2619
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_923 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_923  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2620,r13		! source line 2620
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_924 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_924  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2621,r13		! source line 2621
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2622,r13		! source line 2622
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
	mov	2622,r13		! source line 2622
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_200_printOpen:
	.word	_sourceFileName
	.word	_Label_925
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_926
	.word	8
	.word	4
	.word	_Label_927
	.word	-12
	.word	4
	.word	_Label_928
	.word	-16
	.word	4
	.word	_Label_929
	.word	-20
	.word	4
	.word	0
_Label_925:
	.ascii	"printOpen\0"
	.align
_Label_926:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_922\0"
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
_Label_3382:
	push	r0
	sub	r1,1,r1
	bne	_Label_3382
	mov	2885,r13		! source line 2885
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_930 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_930  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2889,r13		! source line 2889
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2890,r13		! source line 2890
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	2891,r13		! source line 2891
	mov	"\0\0AS",r10
	mov	2891,r13		! source line 2891
	mov	"\0\0SE",r10
!   _temp_931 = &_P_Kernel_threadManager
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
	mov	2892,r13		! source line 2892
	mov	"\0\0SE",r10
!   _temp_932 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-16]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_932  sizeInBytes=4
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
	mov	2893,r13		! source line 2893
	mov	"\0\0SE",r10
!   _temp_933 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_933  sizeInBytes=4
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
	mov	2893,r13		! source line 2893
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
	.word	_Label_934
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_935
	.word	-12
	.word	4
	.word	_Label_936
	.word	-16
	.word	4
	.word	_Label_937
	.word	-20
	.word	4
	.word	_Label_938
	.word	-24
	.word	4
	.word	_Label_939
	.word	-28
	.word	4
	.word	0
_Label_934:
	.ascii	"InitFirstProcess\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_939:
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
_Label_3383:
	push	r0
	sub	r1,1,r1
	bne	_Label_3383
	mov	2899,r13		! source line 2899
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2909,r13		! source line 2909
	mov	"\0\0AS",r10
	mov	2909,r13		! source line 2909
	mov	"\0\0SE",r10
!   _temp_940 = &_P_Kernel_processManager
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
	mov	2910,r13		! source line 2910
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_941 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_941 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_942 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_942 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2912,r13		! source line 2912
	mov	"\0\0AS",r10
	mov	2912,r13		! source line 2912
	mov	"\0\0SE",r10
!   _temp_943 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-60]
!   _temp_944 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_943  sizeInBytes=4
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
	mov	2913,r13		! source line 2913
	mov	"\0\0AS",r10
	mov	2913,r13		! source line 2913
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_946 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_945 = _temp_946		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (newOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_945  sizeInBytes=4
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
	mov	2914,r13		! source line 2914
	mov	"\0\0SE",r10
!   _temp_947 = &_P_Kernel_fileManager
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
	mov	2915,r13		! source line 2915
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_949 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_950 = _temp_949 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_948 = *_temp_950  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUStack = _temp_948 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	2916,r13		! source line 2916
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_951 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_951 [999 ] into _temp_952
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
!   initSStack = _temp_952		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	2918,r13		! source line 2918
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2918,r13		! source line 2918
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! SEND STATEMENT...
	mov	2919,r13		! source line 2919
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_953 = pcb + 32
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
	mov	2920,r13		! source line 2920
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_954 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_954 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_955 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_955  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2921,r13		! source line 2921
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
	mov	2922,r13		! source line 2922
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2922,r13		! source line 2922
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
	.word	_Label_956
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_957
	.word	8
	.word	4
	.word	_Label_958
	.word	-12
	.word	4
	.word	_Label_959
	.word	-16
	.word	4
	.word	_Label_960
	.word	-20
	.word	4
	.word	_Label_961
	.word	-24
	.word	4
	.word	_Label_962
	.word	-28
	.word	4
	.word	_Label_963
	.word	-32
	.word	4
	.word	_Label_964
	.word	-36
	.word	4
	.word	_Label_965
	.word	-40
	.word	4
	.word	_Label_966
	.word	-44
	.word	4
	.word	_Label_967
	.word	-48
	.word	4
	.word	_Label_968
	.word	-52
	.word	4
	.word	_Label_969
	.word	-56
	.word	4
	.word	_Label_970
	.word	-60
	.word	4
	.word	_Label_971
	.word	-64
	.word	4
	.word	_Label_972
	.word	-68
	.word	4
	.word	_Label_973
	.word	-72
	.word	4
	.word	_Label_974
	.word	-76
	.word	4
	.word	_Label_975
	.word	-80
	.word	4
	.word	_Label_976
	.word	-84
	.word	4
	.word	_Label_977
	.word	-88
	.word	4
	.word	_Label_978
	.word	-92
	.word	4
	.word	_Label_979
	.word	-96
	.word	4
	.word	0
_Label_956:
	.ascii	"StartUserProcess\0"
	.align
_Label_957:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_974:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_975:
	.byte	'P'
	.ascii	"newOpenFile\0"
	.align
_Label_976:
	.byte	'I'
	.ascii	"PC\0"
	.align
_Label_977:
	.byte	'I'
	.ascii	"initUStack\0"
	.align
_Label_978:
	.byte	'I'
	.ascii	"initSStack\0"
	.align
_Label_979:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_980
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_980:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_981
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_981:
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
_Label_3384:
	push	r0
	sub	r1,1,r1
	bne	_Label_3384
	mov	231,r13		! source line 231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_983		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_983
!	jmp	_Label_982
_Label_982:
! THEN...
	mov	233,r13		! source line 233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_984 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_984  sizeInBytes=4
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
_Label_983:
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
	.word	_Label_986
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_987
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_988
	.word	12
	.word	4
	.word	_Label_989
	.word	-12
	.word	4
	.word	_Label_990
	.word	-16
	.word	4
	.word	0
_Label_986:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_987:
	.ascii	"Pself\0"
	.align
_Label_988:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_984\0"
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
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
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
!   if count != 2147483647 then goto _Label_992		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_992
!	jmp	_Label_991
_Label_991:
! THEN...
	mov	247,r13		! source line 247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_993 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_993  sizeInBytes=4
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
_Label_992:
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
!   if count > 0 then goto _Label_995		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_995
!	jmp	_Label_994
_Label_994:
! THEN...
	mov	251,r13		! source line 251
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
!   _temp_996 = &waitingThreads
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
!   _temp_997 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_997 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_998 = &_P_Kernel_readyList
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
_Label_995:
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
	.word	_Label_999
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1000
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1001
	.word	-12
	.word	4
	.word	_Label_1002
	.word	-16
	.word	4
	.word	_Label_1003
	.word	-20
	.word	4
	.word	_Label_1004
	.word	-24
	.word	4
	.word	_Label_1005
	.word	-28
	.word	4
	.word	_Label_1006
	.word	-32
	.word	4
	.word	0
_Label_999:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1000:
	.ascii	"Pself\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1005:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1006:
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
_Label_3386:
	push	r0
	sub	r1,1,r1
	bne	_Label_3386
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
!   if count != -2147483648 then goto _Label_1008		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1008
!	jmp	_Label_1007
_Label_1007:
! THEN...
	mov	265,r13		! source line 265
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1009 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1009  sizeInBytes=4
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
_Label_1008:
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
!   if count >= 0 then goto _Label_1011		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1011
!	jmp	_Label_1010
_Label_1010:
! THEN...
	mov	269,r13		! source line 269
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   _temp_1012 = &waitingThreads
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
_Label_1011:
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
	.word	_Label_1013
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1014
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1015
	.word	-12
	.word	4
	.word	_Label_1016
	.word	-16
	.word	4
	.word	_Label_1017
	.word	-20
	.word	4
	.word	0
_Label_1013:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1014:
	.ascii	"Pself\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1017:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1018
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1018:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1019
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1019:
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
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
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
	.word	_Label_1021
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1022
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1023
	.word	-12
	.word	4
	.word	0
_Label_1021:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1022:
	.ascii	"Pself\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_1020\0"
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
_Label_3388:
	push	r0
	sub	r1,1,r1
	bne	_Label_3388
	mov	301,r13		! source line 301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1025		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1025
!	jmp	_Label_1024
_Label_1024:
! THEN...
	mov	305,r13		! source line 305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1026 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
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
_Label_1025:
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
!   if heldBy == 0 then goto _Label_1030		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1030
!   _temp_1029 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1031
_Label_1030:
!   _temp_1029 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1031:
!   if _temp_1029 then goto _Label_1028 else goto _Label_1027
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1027
	jmp	_Label_1028
_Label_1027:
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
	jmp	_Label_1032
_Label_1028:
! ELSE...
	mov	311,r13		! source line 311
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   _temp_1033 = &waitingThreads
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
_Label_1032:
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
	.word	_Label_1034
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1035
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1036
	.word	-16
	.word	4
	.word	_Label_1037
	.word	-9
	.word	1
	.word	_Label_1038
	.word	-20
	.word	4
	.word	_Label_1039
	.word	-24
	.word	4
	.word	0
_Label_1034:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1035:
	.ascii	"Pself\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1037:
	.byte	'C'
	.ascii	"_temp_1029\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1039:
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
_Label_3389:
	push	r0
	sub	r1,1,r1
	bne	_Label_3389
	mov	319,r13		! source line 319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1041		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1041
!	jmp	_Label_1040
_Label_1040:
! THEN...
	mov	324,r13		! source line 324
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1042 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1042  sizeInBytes=4
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
_Label_1041:
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
!   _temp_1043 = &waitingThreads
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
!   if t == 0 then goto _Label_1045		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1045
!	jmp	_Label_1044
_Label_1044:
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
!   _temp_1046 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1046 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0SE",r10
!   _temp_1047 = &_P_Kernel_readyList
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
	jmp	_Label_1048
_Label_1045:
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
_Label_1048:
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
	.word	_Label_1049
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1050
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1051
	.word	-12
	.word	4
	.word	_Label_1052
	.word	-16
	.word	4
	.word	_Label_1053
	.word	-20
	.word	4
	.word	_Label_1054
	.word	-24
	.word	4
	.word	_Label_1055
	.word	-28
	.word	4
	.word	_Label_1056
	.word	-32
	.word	4
	.word	0
_Label_1049:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1050:
	.ascii	"Pself\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1055:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1056:
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
_Label_3390:
	push	r0
	sub	r1,1,r1
	bne	_Label_3390
	mov	340,r13		! source line 340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1059		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1059
!	jmp	_Label_1058
_Label_1058:
!   _temp_1057 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1060
_Label_1059:
!   _temp_1057 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1060:
!   ReturnResult: _temp_1057  (sizeInBytes=1)
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
	.word	_Label_1061
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1062
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1063
	.word	-9
	.word	1
	.word	0
_Label_1061:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1062:
	.ascii	"Pself\0"
	.align
_Label_1063:
	.byte	'C'
	.ascii	"_temp_1057\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1064
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1064:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1065
	.word	_sourceFileName
	.word	153		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1065:
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
_Label_3391:
	push	r0
	sub	r1,1,r1
	bne	_Label_3391
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
	.word	_Label_1067
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1068
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1069
	.word	-12
	.word	4
	.word	0
_Label_1067:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1068:
	.ascii	"Pself\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1066\0"
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
_Label_3392:
	push	r0
	sub	r1,1,r1
	bne	_Label_3392
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
!   Retrieve Result: targetName=_temp_1072  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1072 then goto _Label_1071 else goto _Label_1070
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1070
	jmp	_Label_1071
_Label_1070:
! THEN...
	mov	391,r13		! source line 391
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1073 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1073  sizeInBytes=4
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
_Label_1071:
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
!   _temp_1074 = &waitingThreads
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
	.word	_Label_1075
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1076
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1077
	.word	12
	.word	4
	.word	_Label_1078
	.word	-16
	.word	4
	.word	_Label_1079
	.word	-20
	.word	4
	.word	_Label_1080
	.word	-9
	.word	1
	.word	_Label_1081
	.word	-24
	.word	4
	.word	0
_Label_1075:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1076:
	.ascii	"Pself\0"
	.align
_Label_1077:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1080:
	.byte	'C'
	.ascii	"_temp_1072\0"
	.align
_Label_1081:
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
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
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
!   Retrieve Result: targetName=_temp_1084  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1084 then goto _Label_1083 else goto _Label_1082
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1082
	jmp	_Label_1083
_Label_1082:
! THEN...
	mov	408,r13		! source line 408
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1085 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1085  sizeInBytes=4
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
_Label_1083:
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
!   _temp_1086 = &waitingThreads
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
!   if t == 0 then goto _Label_1088		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1088
!	jmp	_Label_1087
_Label_1087:
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
!   _temp_1089 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1089 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
!   _temp_1090 = &_P_Kernel_readyList
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
_Label_1088:
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
	.word	_Label_1091
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1092
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1093
	.word	12
	.word	4
	.word	_Label_1094
	.word	-16
	.word	4
	.word	_Label_1095
	.word	-20
	.word	4
	.word	_Label_1096
	.word	-24
	.word	4
	.word	_Label_1097
	.word	-28
	.word	4
	.word	_Label_1098
	.word	-9
	.word	1
	.word	_Label_1099
	.word	-32
	.word	4
	.word	_Label_1100
	.word	-36
	.word	4
	.word	0
_Label_1091:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1092:
	.ascii	"Pself\0"
	.align
_Label_1093:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1098:
	.byte	'C'
	.ascii	"_temp_1084\0"
	.align
_Label_1099:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1100:
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
_Label_3394:
	push	r0
	sub	r1,1,r1
	bne	_Label_3394
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
!   Retrieve Result: targetName=_temp_1103  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1103 then goto _Label_1102 else goto _Label_1101
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1101
	jmp	_Label_1102
_Label_1101:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1104 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1104  sizeInBytes=4
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
_Label_1102:
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
_Label_1105:
!	jmp	_Label_1106
_Label_1106:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_1108 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1109
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1109
	jmp	_Label_1110
_Label_1109:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_1107
! END IF...
_Label_1110:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1111 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1111 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_1112 = &_P_Kernel_readyList
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
	jmp	_Label_1105
_Label_1107:
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
	.word	_Label_1113
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1114
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1115
	.word	12
	.word	4
	.word	_Label_1116
	.word	-16
	.word	4
	.word	_Label_1117
	.word	-20
	.word	4
	.word	_Label_1118
	.word	-24
	.word	4
	.word	_Label_1119
	.word	-28
	.word	4
	.word	_Label_1120
	.word	-9
	.word	1
	.word	_Label_1121
	.word	-32
	.word	4
	.word	_Label_1122
	.word	-36
	.word	4
	.word	0
_Label_1113:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1114:
	.ascii	"Pself\0"
	.align
_Label_1115:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1120:
	.byte	'C'
	.ascii	"_temp_1103\0"
	.align
_Label_1121:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1122:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1123
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
_Label_1123:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1124
	.word	_sourceFileName
	.word	166		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1124:
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
_Label_3395:
	push	r0
	sub	r1,1,r1
	bne	_Label_3395
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
!   _temp_1125 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1125) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1125 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_1126 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1126 [0 ] into _temp_1127
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
!   Data Move: *_temp_1127 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1128 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1128 [999 ] into _temp_1129
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
!   Data Move: *_temp_1129 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1130 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1130 [999 ] into _temp_1131
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
!   stackTop = _temp_1131		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1132 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1134 = &_temp_1133
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1134 = _temp_1134 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1136:
!   Data Move: *_temp_1134 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1134 = _temp_1134 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1135 = _temp_1135 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1135) then goto _Label_1136
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1136
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1137 = &_temp_1133
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3396
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3396:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1132 = *_temp_1137  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3397:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3397
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
!   _temp_1138 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1140 = &_temp_1139
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1140 = _temp_1140 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1142:
!   Data Move: *_temp_1140 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1140 = _temp_1140 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1141 = _temp_1141 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1141) then goto _Label_1142
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1142
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1143 = &_temp_1139
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3398
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3398:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1138 = *_temp_1143  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3399:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3399
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
	.word	_Label_1144
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1145
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1146
	.word	12
	.word	4
	.word	_Label_1147
	.word	-12
	.word	4
	.word	_Label_1148
	.word	-16
	.word	4
	.word	_Label_1149
	.word	-20
	.word	4
	.word	_Label_1150
	.word	-84
	.word	64
	.word	_Label_1151
	.word	-88
	.word	4
	.word	_Label_1152
	.word	-92
	.word	4
	.word	_Label_1153
	.word	-96
	.word	4
	.word	_Label_1154
	.word	-100
	.word	4
	.word	_Label_1155
	.word	-156
	.word	56
	.word	_Label_1156
	.word	-160
	.word	4
	.word	_Label_1157
	.word	-164
	.word	4
	.word	_Label_1158
	.word	-168
	.word	4
	.word	_Label_1159
	.word	-172
	.word	4
	.word	_Label_1160
	.word	-176
	.word	4
	.word	_Label_1161
	.word	-180
	.word	4
	.word	_Label_1162
	.word	-184
	.word	4
	.word	_Label_1163
	.word	-188
	.word	4
	.word	0
_Label_1144:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1145:
	.ascii	"Pself\0"
	.align
_Label_1146:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1125\0"
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
_Label_3400:
	push	r0
	sub	r1,1,r1
	bne	_Label_3400
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
!   _temp_1164 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1164  (sizeInBytes=4)
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
!   _temp_1166 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1165  sizeInBytes=4
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
	.word	_Label_1167
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1168
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1169
	.word	12
	.word	4
	.word	_Label_1170
	.word	16
	.word	4
	.word	_Label_1171
	.word	-12
	.word	4
	.word	_Label_1172
	.word	-16
	.word	4
	.word	_Label_1173
	.word	-20
	.word	4
	.word	_Label_1174
	.word	-24
	.word	4
	.word	_Label_1175
	.word	-28
	.word	4
	.word	0
_Label_1167:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1168:
	.ascii	"Pself\0"
	.align
_Label_1169:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1170:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1174:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1175:
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
_Label_3401:
	push	r0
	sub	r1,1,r1
	bne	_Label_3401
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1178 == _P_Kernel_currentThread then goto _Label_1177		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1177
!	jmp	_Label_1176
_Label_1176:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1179 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1179  sizeInBytes=4
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
_Label_1177:
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
!   _temp_1180 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1182		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1182
!	jmp	_Label_1181
_Label_1181:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1184		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1184
!	jmp	_Label_1183
_Label_1183:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1185 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1185  sizeInBytes=4
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
_Label_1184:
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
!   _temp_1187 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1186  sizeInBytes=4
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
_Label_1182:
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
	.word	_Label_1188
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1189
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1190
	.word	-12
	.word	4
	.word	_Label_1191
	.word	-16
	.word	4
	.word	_Label_1192
	.word	-20
	.word	4
	.word	_Label_1193
	.word	-24
	.word	4
	.word	_Label_1194
	.word	-28
	.word	4
	.word	_Label_1195
	.word	-32
	.word	4
	.word	_Label_1196
	.word	-36
	.word	4
	.word	_Label_1197
	.word	-40
	.word	4
	.word	_Label_1198
	.word	-44
	.word	4
	.word	0
_Label_1188:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1189:
	.ascii	"Pself\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1196:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1197:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1198:
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
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1200		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1200
!	jmp	_Label_1199
_Label_1199:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1201 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1201  sizeInBytes=4
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
_Label_1200:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1204 == _P_Kernel_currentThread then goto _Label_1203		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1203
!	jmp	_Label_1202
_Label_1202:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1205 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1205  sizeInBytes=4
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
_Label_1203:
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
!   _temp_1206 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1207
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1207
	jmp	_Label_1208
_Label_1207:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1209 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1209  sizeInBytes=4
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
_Label_1208:
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
	.word	_Label_1210
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1211
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1212
	.word	-12
	.word	4
	.word	_Label_1213
	.word	-16
	.word	4
	.word	_Label_1214
	.word	-20
	.word	4
	.word	_Label_1215
	.word	-24
	.word	4
	.word	_Label_1216
	.word	-28
	.word	4
	.word	_Label_1217
	.word	-32
	.word	4
	.word	0
_Label_1210:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1211:
	.ascii	"Pself\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1217:
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
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_1221 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1221 [0 ] into _temp_1222
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
!   Data Move: _temp_1220 = *_temp_1222  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1220 == 606348324 then goto _Label_1219		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1219
!	jmp	_Label_1218
_Label_1218:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1223 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1223  sizeInBytes=4
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
	jmp	_Label_1224
_Label_1219:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_1228 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1228 [999 ] into _temp_1229
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
!   Data Move: _temp_1227 = *_temp_1229  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1227 == 606348324 then goto _Label_1226		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1226
!	jmp	_Label_1225
_Label_1225:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1230 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1230  sizeInBytes=4
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
_Label_1226:
! END IF...
_Label_1224:
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
	.word	_Label_1231
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1232
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1233
	.word	-12
	.word	4
	.word	_Label_1234
	.word	-16
	.word	4
	.word	_Label_1235
	.word	-20
	.word	4
	.word	_Label_1236
	.word	-24
	.word	4
	.word	_Label_1237
	.word	-28
	.word	4
	.word	_Label_1238
	.word	-32
	.word	4
	.word	_Label_1239
	.word	-36
	.word	4
	.word	_Label_1240
	.word	-40
	.word	4
	.word	0
_Label_1231:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1232:
	.ascii	"Pself\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1220\0"
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
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
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
!   _temp_1241 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1241  sizeInBytes=4
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
!   _temp_1242 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1242  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1243  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1244 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1244  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1245 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1245  sizeInBytes=4
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
!   _temp_1250 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1251 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1250  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1246:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1251 then goto _Label_1249		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1249
_Label_1247:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1252 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1252  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1253 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1253  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1254 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1254  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1256 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1256 [i ] into _temp_1257
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
!   Data Move: _temp_1255 = *_temp_1257  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1255  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1258 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1258  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1260 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1260 [i ] into _temp_1261
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
!   Data Move: _temp_1259 = *_temp_1261  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1259  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1262 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1262  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1248:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1246
! END FOR
_Label_1249:
! CALL STATEMENT...
!   _temp_1263 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-116]
!   _temp_1264 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1263  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1264  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1265 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-108]
!   _temp_1267 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1267 [0 ] into _temp_1268
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
!   _temp_1266 = _temp_1268		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1265  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1266  sizeInBytes=4
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
	be	_Label_1271
	cmp	r1,2
	be	_Label_1272
	cmp	r1,3
	be	_Label_1273
	cmp	r1,4
	be	_Label_1274
	cmp	r1,5
	be	_Label_1275
	jmp	_Label_1269
! CASE 1...
_Label_1271:
! CALL STATEMENT...
!   _temp_1276 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1276  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_1270
! CASE 2...
_Label_1272:
! CALL STATEMENT...
!   _temp_1277 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1277  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_1270
! CASE 3...
_Label_1273:
! CALL STATEMENT...
!   _temp_1278 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1278  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_1270
! CASE 4...
_Label_1274:
! CALL STATEMENT...
!   _temp_1279 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1279  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_1270
! CASE 5...
_Label_1275:
! CALL STATEMENT...
!   _temp_1280 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1280  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_1270
! DEFAULT CASE...
_Label_1269:
! CALL STATEMENT...
!   _temp_1281 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1281  sizeInBytes=4
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
_Label_1270:
! CALL STATEMENT...
!   _temp_1282 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1282  sizeInBytes=4
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
!   _temp_1283 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1283  sizeInBytes=4
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
!   _temp_1288 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1289 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1288  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1284:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1289 then goto _Label_1287		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1287
_Label_1285:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1290 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1290  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1291 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1291  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1292 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1292  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1294 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1294 [i ] into _temp_1295
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
!   Data Move: _temp_1293 = *_temp_1295  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1296 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1296  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1298 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1298 [i ] into _temp_1299
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
!   Data Move: _temp_1297 = *_temp_1299  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1300 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1300  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1286:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1284
! END FOR
_Label_1287:
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
	.word	_Label_1301
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1302
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1303
	.word	-12
	.word	4
	.word	_Label_1304
	.word	-16
	.word	4
	.word	_Label_1305
	.word	-20
	.word	4
	.word	_Label_1306
	.word	-24
	.word	4
	.word	_Label_1307
	.word	-28
	.word	4
	.word	_Label_1308
	.word	-32
	.word	4
	.word	_Label_1309
	.word	-36
	.word	4
	.word	_Label_1310
	.word	-40
	.word	4
	.word	_Label_1311
	.word	-44
	.word	4
	.word	_Label_1312
	.word	-48
	.word	4
	.word	_Label_1313
	.word	-52
	.word	4
	.word	_Label_1314
	.word	-56
	.word	4
	.word	_Label_1315
	.word	-60
	.word	4
	.word	_Label_1316
	.word	-64
	.word	4
	.word	_Label_1317
	.word	-68
	.word	4
	.word	_Label_1318
	.word	-72
	.word	4
	.word	_Label_1319
	.word	-76
	.word	4
	.word	_Label_1320
	.word	-80
	.word	4
	.word	_Label_1321
	.word	-84
	.word	4
	.word	_Label_1322
	.word	-88
	.word	4
	.word	_Label_1323
	.word	-92
	.word	4
	.word	_Label_1324
	.word	-96
	.word	4
	.word	_Label_1325
	.word	-100
	.word	4
	.word	_Label_1326
	.word	-104
	.word	4
	.word	_Label_1327
	.word	-108
	.word	4
	.word	_Label_1328
	.word	-112
	.word	4
	.word	_Label_1329
	.word	-116
	.word	4
	.word	_Label_1330
	.word	-120
	.word	4
	.word	_Label_1331
	.word	-124
	.word	4
	.word	_Label_1332
	.word	-128
	.word	4
	.word	_Label_1333
	.word	-132
	.word	4
	.word	_Label_1334
	.word	-136
	.word	4
	.word	_Label_1335
	.word	-140
	.word	4
	.word	_Label_1336
	.word	-144
	.word	4
	.word	_Label_1337
	.word	-148
	.word	4
	.word	_Label_1338
	.word	-152
	.word	4
	.word	_Label_1339
	.word	-156
	.word	4
	.word	_Label_1340
	.word	-160
	.word	4
	.word	_Label_1341
	.word	-164
	.word	4
	.word	_Label_1342
	.word	-168
	.word	4
	.word	_Label_1343
	.word	-172
	.word	4
	.word	_Label_1344
	.word	-176
	.word	4
	.word	_Label_1345
	.word	-180
	.word	4
	.word	_Label_1346
	.word	-184
	.word	4
	.word	_Label_1347
	.word	-188
	.word	4
	.word	_Label_1348
	.word	-192
	.word	4
	.word	_Label_1349
	.word	-196
	.word	4
	.word	0
_Label_1301:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1302:
	.ascii	"Pself\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1348:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1349:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1350
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1350:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1351
	.word	_sourceFileName
	.word	193		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1351:
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
_Label_3405:
	push	r0
	sub	r1,1,r1
	bne	_Label_3405
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1352 = _StringConst_98
	set	_StringConst_98,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1352  sizeInBytes=4
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
!   _temp_1353 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1355 = &_temp_1354
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1355 = _temp_1355 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1357 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3406:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3406
!   _temp_1357 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1359:
!   Data Move: *_temp_1355 = _temp_1357  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3407:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3407
!   _temp_1355 = _temp_1355 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1356 = _temp_1356 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1356) then goto _Label_1359
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1359
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1360 = &_temp_1354
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3408
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3408:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1353 = *_temp_1360  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3409:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3409
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
!   _temp_1366 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1367 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1366  (sizeInBytes=4)
	load	[r14+-72],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1362:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1367 then goto _Label_1365		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1365
_Label_1363:
	mov	702,r13		! source line 702
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_1368 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-64]
!   _temp_1369 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_1369 [i ] into _temp_1370
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
!   Prepare Argument: offset=12  value=_temp_1368  sizeInBytes=4
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
!   _temp_1371 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1371 [i ] into _temp_1372
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
!   _temp_1373 = _temp_1372 + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1373 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0SE",r10
!   _temp_1375 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1375 [i ] into _temp_1376
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
!   _temp_1374 = _temp_1376		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_1377 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1374  sizeInBytes=4
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
_Label_1364:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1362
! END FOR
_Label_1365:
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
!   _temp_1379 = &threadManagerLock
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
!   _temp_1381 = &aThreadBecameFree
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
	.word	_Label_1382
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1383
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1384
	.word	-12
	.word	4
	.word	_Label_1385
	.word	-16
	.word	4
	.word	_Label_1386
	.word	-20
	.word	4
	.word	_Label_1387
	.word	-24
	.word	4
	.word	_Label_1388
	.word	-28
	.word	4
	.word	_Label_1389
	.word	-32
	.word	4
	.word	_Label_1390
	.word	-36
	.word	4
	.word	_Label_1391
	.word	-40
	.word	4
	.word	_Label_1392
	.word	-44
	.word	4
	.word	_Label_1393
	.word	-48
	.word	4
	.word	_Label_1394
	.word	-52
	.word	4
	.word	_Label_1395
	.word	-56
	.word	4
	.word	_Label_1396
	.word	-60
	.word	4
	.word	_Label_1397
	.word	-64
	.word	4
	.word	_Label_1398
	.word	-68
	.word	4
	.word	_Label_1399
	.word	-72
	.word	4
	.word	_Label_1400
	.word	-76
	.word	4
	.word	_Label_1401
	.word	-80
	.word	4
	.word	_Label_1402
	.word	-84
	.word	4
	.word	_Label_1403
	.word	-4248
	.word	4164
	.word	_Label_1404
	.word	-4252
	.word	4
	.word	_Label_1405
	.word	-4256
	.word	4
	.word	_Label_1406
	.word	-45900
	.word	41644
	.word	_Label_1407
	.word	-45904
	.word	4
	.word	_Label_1408
	.word	-45908
	.word	4
	.word	_Label_1409
	.word	-45912
	.word	4
	.word	0
_Label_1382:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1383:
	.ascii	"Pself\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1409:
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
_Label_3410:
	push	r0
	sub	r1,1,r1
	bne	_Label_3410
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
!   _temp_1410 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1410  sizeInBytes=4
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
!   _temp_1415 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1416 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1415  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1411:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1416 then goto _Label_1414		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1414
_Label_1412:
	mov	727,r13		! source line 727
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1417 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1417  sizeInBytes=4
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
!   _temp_1418 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1418  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1420 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1420 [i ] into _temp_1421
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
!   _temp_1419 = _temp_1421		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1419  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CA",r10
	call	_function_206_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1413:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1411
! END FOR
_Label_1414:
! CALL STATEMENT...
!   _temp_1422 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1422  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0SE",r10
!   _temp_1423 = _function_205_PrintObjectAddr
	set	_function_205_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1424 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1423  sizeInBytes=4
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
	.word	_Label_1425
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1426
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1427
	.word	-12
	.word	4
	.word	_Label_1428
	.word	-16
	.word	4
	.word	_Label_1429
	.word	-20
	.word	4
	.word	_Label_1430
	.word	-24
	.word	4
	.word	_Label_1431
	.word	-28
	.word	4
	.word	_Label_1432
	.word	-32
	.word	4
	.word	_Label_1433
	.word	-36
	.word	4
	.word	_Label_1434
	.word	-40
	.word	4
	.word	_Label_1435
	.word	-44
	.word	4
	.word	_Label_1436
	.word	-48
	.word	4
	.word	_Label_1437
	.word	-52
	.word	4
	.word	_Label_1438
	.word	-56
	.word	4
	.word	_Label_1439
	.word	-60
	.word	4
	.word	0
_Label_1425:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1426:
	.ascii	"Pself\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1438:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1439:
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
_Label_3411:
	push	r0
	sub	r1,1,r1
	bne	_Label_3411
	mov	741,r13		! source line 741
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_1440 = &threadManagerLock
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
_Label_1441:
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_1444 = &freeList
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
!   if result==true then goto _Label_1442 else goto _Label_1443
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1443
	jmp	_Label_1442
_Label_1442:
	mov	751,r13		! source line 751
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0SE",r10
!   _temp_1445 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1446 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1445  sizeInBytes=4
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
	jmp	_Label_1441
_Label_1443:
! ASSIGNMENT STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0AS",r10
	mov	754,r13		! source line 754
	mov	"\0\0SE",r10
!   _temp_1447 = &freeList
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
!   _temp_1448 = avaiThread + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1448 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0SE",r10
!   _temp_1449 = &threadManagerLock
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
	.word	_Label_1450
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1451
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1452
	.word	-12
	.word	4
	.word	_Label_1453
	.word	-16
	.word	4
	.word	_Label_1454
	.word	-20
	.word	4
	.word	_Label_1455
	.word	-24
	.word	4
	.word	_Label_1456
	.word	-28
	.word	4
	.word	_Label_1457
	.word	-32
	.word	4
	.word	_Label_1458
	.word	-36
	.word	4
	.word	_Label_1459
	.word	-40
	.word	4
	.word	0
_Label_1450:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1451:
	.ascii	"Pself\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1459:
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
_Label_3412:
	push	r0
	sub	r1,1,r1
	bne	_Label_3412
	mov	762,r13		! source line 762
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0SE",r10
!   _temp_1460 = &threadManagerLock
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
!   _temp_1461 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1461 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_1462 = &freeList
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
!   _temp_1463 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1464 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1463  sizeInBytes=4
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
!   _temp_1465 = &threadManagerLock
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
	.word	_Label_1466
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1467
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1468
	.word	12
	.word	4
	.word	_Label_1469
	.word	-12
	.word	4
	.word	_Label_1470
	.word	-16
	.word	4
	.word	_Label_1471
	.word	-20
	.word	4
	.word	_Label_1472
	.word	-24
	.word	4
	.word	_Label_1473
	.word	-28
	.word	4
	.word	_Label_1474
	.word	-32
	.word	4
	.word	0
_Label_1466:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1467:
	.ascii	"Pself\0"
	.align
_Label_1468:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1475
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1475:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1476
	.word	_sourceFileName
	.word	214		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1476:
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
	mov	3,r1
_Label_3413:
	push	r0
	sub	r1,1,r1
	bne	_Label_3413
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
_Label_3414:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3414
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_1478 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
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
	mov	788,r13		! source line 788
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1479
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1480
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1481
	.word	-12
	.word	4
	.word	_Label_1482
	.word	-16
	.word	4
	.word	0
_Label_1479:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1480:
	.ascii	"Pself\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1477\0"
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
	mov	4,r1
_Label_3415:
	push	r0
	sub	r1,1,r1
	bne	_Label_3415
	mov	798,r13		! source line 798
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1483) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0SE",r10
!   _temp_1484 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1485 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1485  sizeInBytes=4
	load	[r14+-12],r1
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
	call	_function_206_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	816,r13		! source line 816
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1486
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1487
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1488
	.word	-12
	.word	4
	.word	_Label_1489
	.word	-16
	.word	4
	.word	_Label_1490
	.word	-20
	.word	4
	.word	0
_Label_1486:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1487:
	.ascii	"Pself\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1483\0"
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
_Label_3416:
	push	r0
	sub	r1,1,r1
	bne	_Label_3416
	mov	821,r13		! source line 821
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1491 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1491  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1492  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	826,r13		! source line 826
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1493 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1493  sizeInBytes=4
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
!   _temp_1494 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1494  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	829,r13		! source line 829
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	830,r13		! source line 830
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1496		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1496
!	jmp	_Label_1495
_Label_1495:
! THEN...
	mov	831,r13		! source line 831
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1497 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1497  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1498
_Label_1496:
! ELSE...
	mov	832,r13		! source line 832
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1500		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1500
!	jmp	_Label_1499
_Label_1499:
! THEN...
	mov	833,r13		! source line 833
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1501 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1501  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	833,r13		! source line 833
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1502
_Label_1500:
! ELSE...
	mov	834,r13		! source line 834
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	834,r13		! source line 834
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1504		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1504
!	jmp	_Label_1503
_Label_1503:
! THEN...
	mov	835,r13		! source line 835
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1505 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1505  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1506
_Label_1504:
! ELSE...
	mov	837,r13		! source line 837
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1507 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1507  sizeInBytes=4
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
_Label_1506:
! END IF...
_Label_1502:
! END IF...
_Label_1498:
! CALL STATEMENT...
!   _temp_1508 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1508  sizeInBytes=4
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
!   _temp_1509 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1509  sizeInBytes=4
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
	.word	_Label_1510
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1511
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1512
	.word	-12
	.word	4
	.word	_Label_1513
	.word	-16
	.word	4
	.word	_Label_1514
	.word	-20
	.word	4
	.word	_Label_1515
	.word	-24
	.word	4
	.word	_Label_1516
	.word	-28
	.word	4
	.word	_Label_1517
	.word	-32
	.word	4
	.word	_Label_1518
	.word	-36
	.word	4
	.word	_Label_1519
	.word	-40
	.word	4
	.word	_Label_1520
	.word	-44
	.word	4
	.word	_Label_1521
	.word	-48
	.word	4
	.word	0
_Label_1510:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1511:
	.ascii	"Pself\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1522
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
_Label_1522:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1523
	.word	_sourceFileName
	.word	234		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1523:
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
	mov	368,r1
_Label_3417:
	push	r0
	sub	r1,1,r1
	bne	_Label_3417
	mov	854,r13		! source line 854
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0AS",r10
!   _temp_1525 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1464]
!   NEW ARRAY Constructor...
!   _temp_1527 = &_temp_1526
	add	r14,-1460,r1
	store	r1,[r14+-216]
!   _temp_1527 = _temp_1527 + 4
	load	[r14+-216],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1529 = zeros  (sizeInBytes=124)
	add	r14,-208,r4
	mov	31,r3
_Label_3418:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3418
!   _temp_1529 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-208]
	mov	10,r1
	store	r1,[r14+-212]
_Label_1531:
!   Data Move: *_temp_1527 = _temp_1529  (sizeInBytes=124)
	add	r14,-208,r5
	load	[r14+-216],r4
	mov	31,r3
_Label_3419:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3419
!   _temp_1527 = _temp_1527 + 124
	load	[r14+-216],r1
	add	r1,124,r1
	store	r1,[r14+-216]
!   _temp_1528 = _temp_1528 + -1
	load	[r14+-212],r1
	add	r1,-1,r1
	store	r1,[r14+-212]
!   if intNotZero (_temp_1528) then goto _Label_1531
	load	[r14+-212],r1
	cmp	r1,r0
	bne	_Label_1531
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1460]
!   _temp_1532 = &_temp_1526
	add	r14,-1460,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	load	[r14+-1464],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3420
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3420:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1525 = *_temp_1532  (sizeInBytes=1244)
	load	[r14+-80],r5
	load	[r14+-1464],r4
	mov	311,r3
_Label_3421:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3421
! FOR STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1537 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1538 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1537  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-1472]
_Label_1533:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1538 then goto _Label_1536		
	load	[r14+-1472],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1536
_Label_1534:
	mov	865,r13		! source line 865
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0SE",r10
!   _temp_1539 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_1539 [i ] into _temp_1540
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
	set	124,r3
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
!   _temp_1541 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_1541 [i ] into _temp_1542
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   _temp_1543 = _temp_1542 + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_1543 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0SE",r10
!   _temp_1545 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1545 [i ] into _temp_1546
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1544 = _temp_1546		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1547 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1544  sizeInBytes=4
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
_Label_1535:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1533
! END FOR
_Label_1536:
! ASSIGNMENT STATEMENT...
	mov	871,r13		! source line 871
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	872,r13		! source line 872
	mov	"\0\0SE",r10
!   _temp_1549 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	875,r13		! source line 875
	mov	"\0\0SE",r10
!   _temp_1551 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
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
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	878,r13		! source line 878
	mov	"\0\0SE",r10
!   _temp_1553 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
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
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1554
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1555
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1556
	.word	-12
	.word	4
	.word	_Label_1557
	.word	-16
	.word	4
	.word	_Label_1558
	.word	-20
	.word	4
	.word	_Label_1559
	.word	-24
	.word	4
	.word	_Label_1560
	.word	-28
	.word	4
	.word	_Label_1561
	.word	-32
	.word	4
	.word	_Label_1562
	.word	-36
	.word	4
	.word	_Label_1563
	.word	-40
	.word	4
	.word	_Label_1564
	.word	-44
	.word	4
	.word	_Label_1565
	.word	-48
	.word	4
	.word	_Label_1566
	.word	-52
	.word	4
	.word	_Label_1567
	.word	-56
	.word	4
	.word	_Label_1568
	.word	-60
	.word	4
	.word	_Label_1569
	.word	-64
	.word	4
	.word	_Label_1570
	.word	-68
	.word	4
	.word	_Label_1571
	.word	-72
	.word	4
	.word	_Label_1572
	.word	-76
	.word	4
	.word	_Label_1573
	.word	-80
	.word	4
	.word	_Label_1574
	.word	-84
	.word	4
	.word	_Label_1575
	.word	-208
	.word	124
	.word	_Label_1576
	.word	-212
	.word	4
	.word	_Label_1577
	.word	-216
	.word	4
	.word	_Label_1578
	.word	-1460
	.word	1244
	.word	_Label_1579
	.word	-1464
	.word	4
	.word	_Label_1580
	.word	-1468
	.word	4
	.word	_Label_1581
	.word	-1472
	.word	4
	.word	0
_Label_1554:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1555:
	.ascii	"Pself\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1581:
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
_Label_3422:
	push	r0
	sub	r1,1,r1
	bne	_Label_3422
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
!   _temp_1582 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1582  sizeInBytes=4
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
!   _temp_1587 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1588 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1587  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1583:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1588 then goto _Label_1586		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1586
_Label_1584:
	mov	893,r13		! source line 893
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1589 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1589  sizeInBytes=4
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
!   _temp_1590 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1590  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	896,r13		! source line 896
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_1591 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1591 [i ] into _temp_1592
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
	set	124,r3
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
_Label_1585:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1583
! END FOR
_Label_1586:
! CALL STATEMENT...
!   _temp_1593 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1593  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	899,r13		! source line 899
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_1594 = _function_205_PrintObjectAddr
	set	_function_205_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1595 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1594  sizeInBytes=4
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
	.word	_Label_1596
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1597
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1598
	.word	-12
	.word	4
	.word	_Label_1599
	.word	-16
	.word	4
	.word	_Label_1600
	.word	-20
	.word	4
	.word	_Label_1601
	.word	-24
	.word	4
	.word	_Label_1602
	.word	-28
	.word	4
	.word	_Label_1603
	.word	-32
	.word	4
	.word	_Label_1604
	.word	-36
	.word	4
	.word	_Label_1605
	.word	-40
	.word	4
	.word	_Label_1606
	.word	-44
	.word	4
	.word	_Label_1607
	.word	-48
	.word	4
	.word	_Label_1608
	.word	-52
	.word	4
	.word	_Label_1609
	.word	-56
	.word	4
	.word	0
_Label_1596:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1597:
	.ascii	"Pself\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1608:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1609:
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
_Label_3423:
	push	r0
	sub	r1,1,r1
	bne	_Label_3423
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
!   _temp_1610 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1610  sizeInBytes=4
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
!   _temp_1615 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1616 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1615  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1611:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1616 then goto _Label_1614		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1614
_Label_1612:
	mov	916,r13		! source line 916
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1617 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1617  sizeInBytes=4
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
!   _temp_1618 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1618 [i ] into _temp_1619
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
	set	124,r3
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
_Label_1613:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1611
! END FOR
_Label_1614:
! CALL STATEMENT...
!   _temp_1620 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1620  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	921,r13		! source line 921
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0SE",r10
!   _temp_1621 = _function_205_PrintObjectAddr
	set	_function_205_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1622 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1621  sizeInBytes=4
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
	.word	_Label_1623
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1624
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1625
	.word	-12
	.word	4
	.word	_Label_1626
	.word	-16
	.word	4
	.word	_Label_1627
	.word	-20
	.word	4
	.word	_Label_1628
	.word	-24
	.word	4
	.word	_Label_1629
	.word	-28
	.word	4
	.word	_Label_1630
	.word	-32
	.word	4
	.word	_Label_1631
	.word	-36
	.word	4
	.word	_Label_1632
	.word	-40
	.word	4
	.word	_Label_1633
	.word	-44
	.word	4
	.word	_Label_1634
	.word	-48
	.word	4
	.word	_Label_1635
	.word	-52
	.word	4
	.word	0
_Label_1623:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1624:
	.ascii	"Pself\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1634:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1635:
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
_Label_3424:
	push	r0
	sub	r1,1,r1
	bne	_Label_3424
	mov	929,r13		! source line 929
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0SE",r10
!   _temp_1636 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
_Label_1637:
	mov	937,r13		! source line 937
	mov	"\0\0SE",r10
!   _temp_1640 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1638 else goto _Label_1639
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1639
	jmp	_Label_1638
_Label_1638:
	mov	937,r13		! source line 937
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0SE",r10
!   _temp_1641 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1642 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1641  sizeInBytes=4
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
	jmp	_Label_1637
_Label_1639:
! ASSIGNMENT STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0AS",r10
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_1643 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
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
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0AS",r10
!   if intIsZero (nextProcess) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1644 = nextProcess + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1644 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0AS",r10
!   if intIsZero (nextProcess) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1645 = nextProcess + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1645 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0SE",r10
!   _temp_1646 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	.word	_Label_1647
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1648
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1649
	.word	-12
	.word	4
	.word	_Label_1650
	.word	-16
	.word	4
	.word	_Label_1651
	.word	-20
	.word	4
	.word	_Label_1652
	.word	-24
	.word	4
	.word	_Label_1653
	.word	-28
	.word	4
	.word	_Label_1654
	.word	-32
	.word	4
	.word	_Label_1655
	.word	-36
	.word	4
	.word	_Label_1656
	.word	-40
	.word	4
	.word	_Label_1657
	.word	-44
	.word	4
	.word	0
_Label_1647:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1648:
	.ascii	"Pself\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1657:
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
_Label_3425:
	push	r0
	sub	r1,1,r1
	bne	_Label_3425
	mov	950,r13		! source line 950
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0SE",r10
!   _temp_1658 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
!   _temp_1659 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1659 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_1660 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
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
!   _temp_1661 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1662 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1661  sizeInBytes=4
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
!   _temp_1663 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	.word	_Label_1664
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1665
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1666
	.word	12
	.word	4
	.word	_Label_1667
	.word	-12
	.word	4
	.word	_Label_1668
	.word	-16
	.word	4
	.word	_Label_1669
	.word	-20
	.word	4
	.word	_Label_1670
	.word	-24
	.word	4
	.word	_Label_1671
	.word	-28
	.word	4
	.word	_Label_1672
	.word	-32
	.word	4
	.word	0
_Label_1664:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1665:
	.ascii	"Pself\0"
	.align
_Label_1666:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1658\0"
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
_Label_3426:
	push	r0
	sub	r1,1,r1
	bne	_Label_3426
	mov	964,r13		! source line 964
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0SE",r10
!   _temp_1673 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-244]
!   _temp_1674 = _temp_1673 + 1248
	load	[r14+-244],r1
	add	r1,1248,r1
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
!   _temp_1679 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1680 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-232]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1679  (sizeInBytes=4)
	load	[r14+-236],r1
	store	r1,[r14+-248]
_Label_1675:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1680 then goto _Label_1678		
	load	[r14+-248],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1678
_Label_1676:
	mov	973,r13		! source line 973
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0IF",r10
!   _temp_1684 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-224]
!   _temp_1685 = _temp_1684 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Move address of _temp_1685 [i ] into _temp_1686
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-216]
!   _temp_1687 = _temp_1686 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
!   Data Move: _temp_1683 = *_temp_1687  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1689 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_1688 = *_temp_1689  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if _temp_1683 != _temp_1688 then goto _Label_1682		(int)
	load	[r14+-228],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bne	_Label_1682
!	jmp	_Label_1681
_Label_1681:
! THEN...
	mov	975,r13		! source line 975
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
!   _temp_1690 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-200]
!   _temp_1691 = _temp_1690 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Move address of _temp_1691 [i ] into _temp_1692
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   parentPCB = _temp_1692		(4 bytes)
	load	[r14+-192],r1
	store	r1,[r14+-252]
! END IF...
_Label_1682:
! IF STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0IF",r10
!   _temp_1697 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_1698 = _temp_1697 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_1698 [i ] into _temp_1699
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   _temp_1700 = _temp_1699 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1696 = *_temp_1700  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_1696 != 2 then goto _Label_1694		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1694
!	jmp	_Label_1695
_Label_1695:
!   _temp_1702 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_1703 = _temp_1702 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_1703 [i ] into _temp_1704
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   _temp_1705 = _temp_1704 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_1701 = *_temp_1705  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1707 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_1706 = *_temp_1707  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_1701 != _temp_1706 then goto _Label_1694		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_1694
!	jmp	_Label_1693
_Label_1693:
! THEN...
	mov	978,r13		! source line 978
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0AS",r10
!   _temp_1708 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_1709 = _temp_1708 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1709 [i ] into _temp_1710
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_1711 = _temp_1710 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_1711 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1713 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_1714 = _temp_1713 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_1714 [i ] into _temp_1715
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   _temp_1712 = _temp_1715		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_1716 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_1717 = _temp_1716 + 1284
	load	[r14+-108],r1
	add	r1,1284,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_1712  sizeInBytes=4
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
!   _temp_1719 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_1720 = _temp_1719 + 1248
	load	[r14+-96],r1
	add	r1,1248,r1
	store	r1,[r14+-92]
!   _temp_1718 = _temp_1720		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_1721 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_1722 = _temp_1721 + 1268
	load	[r14+-88],r1
	add	r1,1268,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_1718  sizeInBytes=4
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
_Label_1694:
!   Increment the FOR-LOOP index variable and jump back
_Label_1677:
!   i = i + 1
	load	[r14+-248],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
	jmp	_Label_1675
! END FOR
_Label_1678:
! IF STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0IF",r10
!   if intIsZero (parentPCB) then goto _Label_1724
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_1724
!	jmp	_Label_1725
_Label_1725:
!   if intIsZero (parentPCB) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1727 = parentPCB + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1726 = *_temp_1727  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_1726 != 1 then goto _Label_1724		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1724
!	jmp	_Label_1723
_Label_1723:
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
!   _temp_1728 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_1728 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0SE",r10
!   _temp_1730 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_1731 = _temp_1730 + 1248
	load	[r14+-64],r1
	add	r1,1248,r1
	store	r1,[r14+-60]
!   _temp_1729 = _temp_1731		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_1732 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_1733 = _temp_1732 + 1296
	load	[r14+-56],r1
	add	r1,1296,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1729  sizeInBytes=4
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
	jmp	_Label_1734
_Label_1724:
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
!   _temp_1735 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1735 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0SE",r10
!   _temp_1736 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_1737 = _temp_1736 + 1284
	load	[r14+-44],r1
	add	r1,1284,r1
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
!   _temp_1739 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_1740 = _temp_1739 + 1248
	load	[r14+-32],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1738 = _temp_1740		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1741 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_1742 = _temp_1741 + 1268
	load	[r14+-24],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1738  sizeInBytes=4
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
_Label_1734:
! SEND STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0SE",r10
!   _temp_1743 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_1744 = _temp_1743 + 1248
	load	[r14+-16],r1
	add	r1,1248,r1
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
	.word	_Label_1745
	.word	8		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_1746
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1747
	.word	12
	.word	4
	.word	_Label_1748
	.word	-12
	.word	4
	.word	_Label_1749
	.word	-16
	.word	4
	.word	_Label_1750
	.word	-20
	.word	4
	.word	_Label_1751
	.word	-24
	.word	4
	.word	_Label_1752
	.word	-28
	.word	4
	.word	_Label_1753
	.word	-32
	.word	4
	.word	_Label_1754
	.word	-36
	.word	4
	.word	_Label_1755
	.word	-40
	.word	4
	.word	_Label_1756
	.word	-44
	.word	4
	.word	_Label_1757
	.word	-48
	.word	4
	.word	_Label_1758
	.word	-52
	.word	4
	.word	_Label_1759
	.word	-56
	.word	4
	.word	_Label_1760
	.word	-60
	.word	4
	.word	_Label_1761
	.word	-64
	.word	4
	.word	_Label_1762
	.word	-68
	.word	4
	.word	_Label_1763
	.word	-72
	.word	4
	.word	_Label_1764
	.word	-76
	.word	4
	.word	_Label_1765
	.word	-80
	.word	4
	.word	_Label_1766
	.word	-84
	.word	4
	.word	_Label_1767
	.word	-88
	.word	4
	.word	_Label_1768
	.word	-92
	.word	4
	.word	_Label_1769
	.word	-96
	.word	4
	.word	_Label_1770
	.word	-100
	.word	4
	.word	_Label_1771
	.word	-104
	.word	4
	.word	_Label_1772
	.word	-108
	.word	4
	.word	_Label_1773
	.word	-112
	.word	4
	.word	_Label_1774
	.word	-116
	.word	4
	.word	_Label_1775
	.word	-120
	.word	4
	.word	_Label_1776
	.word	-124
	.word	4
	.word	_Label_1777
	.word	-128
	.word	4
	.word	_Label_1778
	.word	-132
	.word	4
	.word	_Label_1779
	.word	-136
	.word	4
	.word	_Label_1780
	.word	-140
	.word	4
	.word	_Label_1781
	.word	-144
	.word	4
	.word	_Label_1782
	.word	-148
	.word	4
	.word	_Label_1783
	.word	-152
	.word	4
	.word	_Label_1784
	.word	-156
	.word	4
	.word	_Label_1785
	.word	-160
	.word	4
	.word	_Label_1786
	.word	-164
	.word	4
	.word	_Label_1787
	.word	-168
	.word	4
	.word	_Label_1788
	.word	-172
	.word	4
	.word	_Label_1789
	.word	-176
	.word	4
	.word	_Label_1790
	.word	-180
	.word	4
	.word	_Label_1791
	.word	-184
	.word	4
	.word	_Label_1792
	.word	-188
	.word	4
	.word	_Label_1793
	.word	-192
	.word	4
	.word	_Label_1794
	.word	-196
	.word	4
	.word	_Label_1795
	.word	-200
	.word	4
	.word	_Label_1796
	.word	-204
	.word	4
	.word	_Label_1797
	.word	-208
	.word	4
	.word	_Label_1798
	.word	-212
	.word	4
	.word	_Label_1799
	.word	-216
	.word	4
	.word	_Label_1800
	.word	-220
	.word	4
	.word	_Label_1801
	.word	-224
	.word	4
	.word	_Label_1802
	.word	-228
	.word	4
	.word	_Label_1803
	.word	-232
	.word	4
	.word	_Label_1804
	.word	-236
	.word	4
	.word	_Label_1805
	.word	-240
	.word	4
	.word	_Label_1806
	.word	-244
	.word	4
	.word	_Label_1807
	.word	-248
	.word	4
	.word	_Label_1808
	.word	-252
	.word	4
	.word	0
_Label_1745:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_1746:
	.ascii	"Pself\0"
	.align
_Label_1747:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1807:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1808:
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
_Label_3427:
	push	r0
	sub	r1,1,r1
	bne	_Label_3427
	mov	999,r13		! source line 999
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0SE",r10
!   _temp_1809 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_1810 = _temp_1809 + 1248
	load	[r14+-88],r1
	add	r1,1248,r1
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
_Label_1811:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1815 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1814 = *_temp_1815  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_1814 == 2 then goto _Label_1813		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1813
!	jmp	_Label_1812
_Label_1812:
	mov	1007,r13		! source line 1007
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0SE",r10
!   _temp_1817 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_1818 = _temp_1817 + 1248
	load	[r14+-68],r1
	add	r1,1248,r1
	store	r1,[r14+-64]
!   _temp_1816 = _temp_1818		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_1819 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_1820 = _temp_1819 + 1296
	load	[r14+-60],r1
	add	r1,1296,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1816  sizeInBytes=4
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
	jmp	_Label_1811
_Label_1813:
! ASSIGNMENT STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1821 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: procExitStaus = *_temp_1821  (sizeInBytes=4)
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
!   _temp_1822 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1822 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_1823 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_1824 = _temp_1823 + 1284
	load	[r14+-44],r1
	add	r1,1284,r1
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
!   _temp_1826 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_1827 = _temp_1826 + 1248
	load	[r14+-32],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1825 = _temp_1827		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1828 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_1829 = _temp_1828 + 1268
	load	[r14+-24],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1825  sizeInBytes=4
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
!   _temp_1830 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_1831 = _temp_1830 + 1248
	load	[r14+-16],r1
	add	r1,1248,r1
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
	.word	_Label_1832
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_1833
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1834
	.word	12
	.word	4
	.word	_Label_1835
	.word	-12
	.word	4
	.word	_Label_1836
	.word	-16
	.word	4
	.word	_Label_1837
	.word	-20
	.word	4
	.word	_Label_1838
	.word	-24
	.word	4
	.word	_Label_1839
	.word	-28
	.word	4
	.word	_Label_1840
	.word	-32
	.word	4
	.word	_Label_1841
	.word	-36
	.word	4
	.word	_Label_1842
	.word	-40
	.word	4
	.word	_Label_1843
	.word	-44
	.word	4
	.word	_Label_1844
	.word	-48
	.word	4
	.word	_Label_1845
	.word	-52
	.word	4
	.word	_Label_1846
	.word	-56
	.word	4
	.word	_Label_1847
	.word	-60
	.word	4
	.word	_Label_1848
	.word	-64
	.word	4
	.word	_Label_1849
	.word	-68
	.word	4
	.word	_Label_1850
	.word	-72
	.word	4
	.word	_Label_1851
	.word	-76
	.word	4
	.word	_Label_1852
	.word	-80
	.word	4
	.word	_Label_1853
	.word	-84
	.word	4
	.word	_Label_1854
	.word	-88
	.word	4
	.word	_Label_1855
	.word	-92
	.word	4
	.word	0
_Label_1832:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_1833:
	.ascii	"Pself\0"
	.align
_Label_1834:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1855:
	.byte	'I'
	.ascii	"procExitStaus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1856
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1856:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1857
	.word	_sourceFileName
	.word	257		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1857:
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
_Label_3428:
	push	r0
	sub	r1,1,r1
	bne	_Label_3428
	mov	1069,r13		! source line 1069
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1858 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1858  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1075,r13		! source line 1075
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1076,r13		! source line 1076
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
	mov	1077,r13		! source line 1077
	mov	"\0\0SE",r10
!   _temp_1860 = &framesInUse
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
	mov	1078,r13		! source line 1078
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1079,r13		! source line 1079
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
	mov	1080,r13		! source line 1080
	mov	"\0\0SE",r10
!   _temp_1862 = &frameManagerLock
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
	mov	1081,r13		! source line 1081
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
	mov	1082,r13		! source line 1082
	mov	"\0\0SE",r10
!   _temp_1864 = &newFramesAvailable
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
	mov	1088,r13		! source line 1088
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1869 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1870 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1869  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1865:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1870 then goto _Label_1868		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1868
_Label_1866:
	mov	1088,r13		! source line 1088
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1873 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1873) then goto _Label_1872
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1872
!	jmp	_Label_1871
_Label_1871:
! THEN...
	mov	1092,r13		! source line 1092
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1874 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1874  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1092,r13		! source line 1092
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1872:
!   Increment the FOR-LOOP index variable and jump back
_Label_1867:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1865
! END FOR
_Label_1868:
! RETURN STATEMENT...
	mov	1088,r13		! source line 1088
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
	.word	_Label_1875
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1876
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1877
	.word	-12
	.word	4
	.word	_Label_1878
	.word	-16
	.word	4
	.word	_Label_1879
	.word	-20
	.word	4
	.word	_Label_1880
	.word	-24
	.word	4
	.word	_Label_1881
	.word	-28
	.word	4
	.word	_Label_1882
	.word	-32
	.word	4
	.word	_Label_1883
	.word	-36
	.word	4
	.word	_Label_1884
	.word	-40
	.word	4
	.word	_Label_1885
	.word	-44
	.word	4
	.word	_Label_1886
	.word	-48
	.word	4
	.word	_Label_1887
	.word	-52
	.word	4
	.word	_Label_1888
	.word	-56
	.word	4
	.word	0
_Label_1875:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1876:
	.ascii	"Pself\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1888:
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
_Label_3429:
	push	r0
	sub	r1,1,r1
	bne	_Label_3429
	mov	1099,r13		! source line 1099
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0SE",r10
!   _temp_1889 = &frameManagerLock
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
!   _temp_1890 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1890  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1104,r13		! source line 1104
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1891 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1891  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1105,r13		! source line 1105
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1892 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1892  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1106,r13		! source line 1106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0SE",r10
!   _temp_1893 = &framesInUse
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
	mov	1108,r13		! source line 1108
	mov	"\0\0SE",r10
!   _temp_1894 = &frameManagerLock
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
	mov	1108,r13		! source line 1108
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
	.word	_Label_1895
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1896
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1897
	.word	-12
	.word	4
	.word	_Label_1898
	.word	-16
	.word	4
	.word	_Label_1899
	.word	-20
	.word	4
	.word	_Label_1900
	.word	-24
	.word	4
	.word	_Label_1901
	.word	-28
	.word	4
	.word	_Label_1902
	.word	-32
	.word	4
	.word	0
_Label_1895:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1896:
	.ascii	"Pself\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1889\0"
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
_Label_3430:
	push	r0
	sub	r1,1,r1
	bne	_Label_3430
	mov	1113,r13		! source line 1113
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0SE",r10
!   _temp_1903 = &frameManagerLock
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
	mov	1124,r13		! source line 1124
	mov	"\0\0WH",r10
_Label_1904:
!   if numberFreeFrames >= 1 then goto _Label_1906		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1906
!	jmp	_Label_1905
_Label_1905:
	mov	1124,r13		! source line 1124
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1125,r13		! source line 1125
	mov	"\0\0SE",r10
!   _temp_1907 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1908 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1907  sizeInBytes=4
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
	jmp	_Label_1904
_Label_1906:
! ASSIGNMENT STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0AS",r10
	mov	1129,r13		! source line 1129
	mov	"\0\0SE",r10
!   _temp_1909 = &framesInUse
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
	mov	1130,r13		! source line 1130
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
	mov	1133,r13		! source line 1133
	mov	"\0\0SE",r10
!   _temp_1910 = &frameManagerLock
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
	mov	1136,r13		! source line 1136
	mov	"\0\0AS",r10
!   _temp_1911 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1911		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1138,r13		! source line 1138
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
	.word	_Label_1912
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1913
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1914
	.word	-12
	.word	4
	.word	_Label_1915
	.word	-16
	.word	4
	.word	_Label_1916
	.word	-20
	.word	4
	.word	_Label_1917
	.word	-24
	.word	4
	.word	_Label_1918
	.word	-28
	.word	4
	.word	_Label_1919
	.word	-32
	.word	4
	.word	_Label_1920
	.word	-36
	.word	4
	.word	_Label_1921
	.word	-40
	.word	4
	.word	0
_Label_1912:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1913:
	.ascii	"Pself\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1920:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1921:
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
_Label_3431:
	push	r0
	sub	r1,1,r1
	bne	_Label_3431
	mov	1143,r13		! source line 1143
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0SE",r10
!   _temp_1922 = &frameManagerLock
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
	mov	1150,r13		! source line 1150
	mov	"\0\0WH",r10
_Label_1923:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1925		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1925
!	jmp	_Label_1924
_Label_1924:
	mov	1150,r13		! source line 1150
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0SE",r10
!   _temp_1926 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1927 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1926  sizeInBytes=4
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
	jmp	_Label_1923
_Label_1925:
! FOR STATEMENT...
	mov	1153,r13		! source line 1153
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1932 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1933 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1932  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1928:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1933 then goto _Label_1931		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1931
_Label_1929:
	mov	1153,r13		! source line 1153
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1154,r13		! source line 1154
	mov	"\0\0AS",r10
	mov	1154,r13		! source line 1154
	mov	"\0\0SE",r10
!   _temp_1934 = &framesInUse
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
	mov	1155,r13		! source line 1155
	mov	"\0\0AS",r10
!   _temp_1935 = f * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1935		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	1156,r13		! source line 1156
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
_Label_1930:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1928
! END FOR
_Label_1931:
! ASSIGNMENT STATEMENT...
	mov	1158,r13		! source line 1158
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
	mov	1159,r13		! source line 1159
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1936 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1936 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0SE",r10
!   _temp_1937 = &frameManagerLock
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
	mov	1160,r13		! source line 1160
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
	.word	_Label_1938
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1939
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1940
	.word	12
	.word	4
	.word	_Label_1941
	.word	16
	.word	4
	.word	_Label_1942
	.word	-12
	.word	4
	.word	_Label_1943
	.word	-16
	.word	4
	.word	_Label_1944
	.word	-20
	.word	4
	.word	_Label_1945
	.word	-24
	.word	4
	.word	_Label_1946
	.word	-28
	.word	4
	.word	_Label_1947
	.word	-32
	.word	4
	.word	_Label_1948
	.word	-36
	.word	4
	.word	_Label_1949
	.word	-40
	.word	4
	.word	_Label_1950
	.word	-44
	.word	4
	.word	_Label_1951
	.word	-48
	.word	4
	.word	_Label_1952
	.word	-52
	.word	4
	.word	_Label_1953
	.word	-56
	.word	4
	.word	0
_Label_1938:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1939:
	.ascii	"Pself\0"
	.align
_Label_1940:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1941:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1951:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1952:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1953:
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
_Label_3432:
	push	r0
	sub	r1,1,r1
	bne	_Label_3432
	mov	1165,r13		! source line 1165
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0SE",r10
!   _temp_1954 = &frameManagerLock
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
	mov	1172,r13		! source line 1172
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1959 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1962 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1961 = *_temp_1962  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_1960 = _temp_1961 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1959  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_1955:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1960 then goto _Label_1958		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1958
_Label_1956:
	mov	1172,r13		! source line 1172
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0AS",r10
	mov	1173,r13		! source line 1173
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
	mov	1174,r13		! source line 1174
	mov	"\0\0AS",r10
!   _temp_1963 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_1963 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0SE",r10
!   _temp_1964 = &framesInUse
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
_Label_1957:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1955
! END FOR
_Label_1958:
! ASSIGNMENT STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1966 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1965 = *_temp_1966  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_1965		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0SE",r10
!   _temp_1967 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1968 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1967  sizeInBytes=4
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
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
!   _temp_1969 = &frameManagerLock
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
	mov	1179,r13		! source line 1179
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
	.word	_Label_1970
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1971
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1972
	.word	12
	.word	4
	.word	_Label_1973
	.word	-12
	.word	4
	.word	_Label_1974
	.word	-16
	.word	4
	.word	_Label_1975
	.word	-20
	.word	4
	.word	_Label_1976
	.word	-24
	.word	4
	.word	_Label_1977
	.word	-28
	.word	4
	.word	_Label_1978
	.word	-32
	.word	4
	.word	_Label_1979
	.word	-36
	.word	4
	.word	_Label_1980
	.word	-40
	.word	4
	.word	_Label_1981
	.word	-44
	.word	4
	.word	_Label_1982
	.word	-48
	.word	4
	.word	_Label_1983
	.word	-52
	.word	4
	.word	_Label_1984
	.word	-56
	.word	4
	.word	_Label_1985
	.word	-60
	.word	4
	.word	_Label_1986
	.word	-64
	.word	4
	.word	_Label_1987
	.word	-68
	.word	4
	.word	0
_Label_1970:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1971:
	.ascii	"Pself\0"
	.align
_Label_1972:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1985:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1986:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1987:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1988
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
_Label_1988:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1989
	.word	_sourceFileName
	.word	276		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1989:
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
_Label_3433:
	push	r0
	sub	r1,1,r1
	bne	_Label_3433
	mov	1190,r13		! source line 1190
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1194,r13		! source line 1194
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
!   _temp_1990 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1992 = &_temp_1991
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1992 = _temp_1992 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1994:
!   Data Move: *_temp_1992 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1992 = _temp_1992 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1993 = _temp_1993 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1993) then goto _Label_1994
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1994
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1995 = &_temp_1991
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3434
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3434:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1990 = *_temp_1995  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3435:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3435
! RETURN STATEMENT...
	mov	1195,r13		! source line 1195
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
	.word	_Label_1996
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1997
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1998
	.word	-12
	.word	4
	.word	_Label_1999
	.word	-16
	.word	4
	.word	_Label_2000
	.word	-20
	.word	4
	.word	_Label_2001
	.word	-104
	.word	84
	.word	_Label_2002
	.word	-108
	.word	4
	.word	0
_Label_1996:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1997:
	.ascii	"Pself\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1990\0"
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
_Label_3436:
	push	r0
	sub	r1,1,r1
	bne	_Label_3436
	mov	1200,r13		! source line 1200
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2003 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2003  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1205,r13		! source line 1205
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2004 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2004  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1206,r13		! source line 1206
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2009 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2010 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2009  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2005:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2010 then goto _Label_2008		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2008
_Label_2006:
	mov	1207,r13		! source line 1207
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2011 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2011  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1208,r13		! source line 1208
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2013 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2013 [i ] into _temp_2014
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
!   _temp_2012 = _temp_2014		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2012  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1209,r13		! source line 1209
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2015 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2015  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1210,r13		! source line 1210
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2017 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2017 [i ] into _temp_2018
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
!   Data Move: _temp_2016 = *_temp_2018  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2016  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1211,r13		! source line 1211
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2019 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2019  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1212,r13		! source line 1212
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2020 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2020  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1213,r13		! source line 1213
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2021 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2021  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1214,r13		! source line 1214
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2023) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2022  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2022  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1215,r13		! source line 1215
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2024 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2024  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1216,r13		! source line 1216
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0IF",r10
	mov	1217,r13		! source line 1217
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2028) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2027  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2027) then goto _Label_2026
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2026
!	jmp	_Label_2025
_Label_2025:
! THEN...
	mov	1218,r13		! source line 1218
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2030) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2029  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2029  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2031
_Label_2026:
! ELSE...
	mov	1220,r13		! source line 1220
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2032 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2032  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1220,r13		! source line 1220
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2031:
! CALL STATEMENT...
!   _temp_2033 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2033  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0IF",r10
	mov	1223,r13		! source line 1223
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2036) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2034 else goto _Label_2035
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2035
	jmp	_Label_2034
_Label_2034:
! THEN...
	mov	1224,r13		! source line 1224
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2037 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2037  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2038
_Label_2035:
! ELSE...
	mov	1226,r13		! source line 1226
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2039 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2039  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2038:
! CALL STATEMENT...
!   _temp_2040 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2040  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1228,r13		! source line 1228
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1229,r13		! source line 1229
	mov	"\0\0IF",r10
	mov	1229,r13		! source line 1229
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2043) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2041 else goto _Label_2042
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2042
	jmp	_Label_2041
_Label_2041:
! THEN...
	mov	1230,r13		! source line 1230
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2044 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2044  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1230,r13		! source line 1230
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2045
_Label_2042:
! ELSE...
	mov	1232,r13		! source line 1232
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2046 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2046  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1232,r13		! source line 1232
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2045:
! CALL STATEMENT...
!   _temp_2047 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2047  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1234,r13		! source line 1234
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0IF",r10
	mov	1235,r13		! source line 1235
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2050) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2048 else goto _Label_2049
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2049
	jmp	_Label_2048
_Label_2048:
! THEN...
	mov	1236,r13		! source line 1236
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2051 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2051  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1236,r13		! source line 1236
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2052
_Label_2049:
! ELSE...
	mov	1238,r13		! source line 1238
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2053 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2053  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1238,r13		! source line 1238
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2052:
! CALL STATEMENT...
!   _temp_2054 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2054  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1240,r13		! source line 1240
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0IF",r10
	mov	1241,r13		! source line 1241
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2057) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2055 else goto _Label_2056
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2056
	jmp	_Label_2055
_Label_2055:
! THEN...
	mov	1242,r13		! source line 1242
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2058 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2058  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2059
_Label_2056:
! ELSE...
	mov	1244,r13		! source line 1244
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2060 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2060  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2059:
! CALL STATEMENT...
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2007:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2005
! END FOR
_Label_2008:
! RETURN STATEMENT...
	mov	1207,r13		! source line 1207
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
	.word	_Label_2061
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2062
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2063
	.word	-12
	.word	4
	.word	_Label_2064
	.word	-16
	.word	4
	.word	_Label_2065
	.word	-20
	.word	4
	.word	_Label_2066
	.word	-24
	.word	4
	.word	_Label_2067
	.word	-28
	.word	4
	.word	_Label_2068
	.word	-32
	.word	4
	.word	_Label_2069
	.word	-36
	.word	4
	.word	_Label_2070
	.word	-40
	.word	4
	.word	_Label_2071
	.word	-44
	.word	4
	.word	_Label_2072
	.word	-48
	.word	4
	.word	_Label_2073
	.word	-52
	.word	4
	.word	_Label_2074
	.word	-56
	.word	4
	.word	_Label_2075
	.word	-60
	.word	4
	.word	_Label_2076
	.word	-64
	.word	4
	.word	_Label_2077
	.word	-68
	.word	4
	.word	_Label_2078
	.word	-72
	.word	4
	.word	_Label_2079
	.word	-76
	.word	4
	.word	_Label_2080
	.word	-80
	.word	4
	.word	_Label_2081
	.word	-84
	.word	4
	.word	_Label_2082
	.word	-88
	.word	4
	.word	_Label_2083
	.word	-92
	.word	4
	.word	_Label_2084
	.word	-96
	.word	4
	.word	_Label_2085
	.word	-100
	.word	4
	.word	_Label_2086
	.word	-104
	.word	4
	.word	_Label_2087
	.word	-108
	.word	4
	.word	_Label_2088
	.word	-112
	.word	4
	.word	_Label_2089
	.word	-116
	.word	4
	.word	_Label_2090
	.word	-120
	.word	4
	.word	_Label_2091
	.word	-124
	.word	4
	.word	_Label_2092
	.word	-128
	.word	4
	.word	_Label_2093
	.word	-132
	.word	4
	.word	_Label_2094
	.word	-136
	.word	4
	.word	_Label_2095
	.word	-140
	.word	4
	.word	_Label_2096
	.word	-144
	.word	4
	.word	_Label_2097
	.word	-148
	.word	4
	.word	_Label_2098
	.word	-152
	.word	4
	.word	_Label_2099
	.word	-156
	.word	4
	.word	_Label_2100
	.word	-160
	.word	4
	.word	_Label_2101
	.word	-164
	.word	4
	.word	_Label_2102
	.word	-168
	.word	4
	.word	0
_Label_2061:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2062:
	.ascii	"Pself\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2102:
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
_Label_3437:
	push	r0
	sub	r1,1,r1
	bne	_Label_3437
	mov	1252,r13		! source line 1252
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1257,r13		! source line 1257
	mov	"\0\0RE",r10
!   _temp_2105 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2105 [entry ] into _temp_2106
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
!   Data Move: _temp_2104 = *_temp_2106  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2103 = _temp_2104 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2103  (sizeInBytes=4)
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
	.word	_Label_2107
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2108
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2109
	.word	12
	.word	4
	.word	_Label_2110
	.word	-12
	.word	4
	.word	_Label_2111
	.word	-16
	.word	4
	.word	_Label_2112
	.word	-20
	.word	4
	.word	_Label_2113
	.word	-24
	.word	4
	.word	0
_Label_2107:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2108:
	.ascii	"Pself\0"
	.align
_Label_2109:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2103\0"
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
_Label_3438:
	push	r0
	sub	r1,1,r1
	bne	_Label_3438
	mov	1262,r13		! source line 1262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0RE",r10
!   _temp_2116 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2116 [entry ] into _temp_2117
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
!   Data Move: _temp_2115 = *_temp_2117  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2114 = _temp_2115 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2114  (sizeInBytes=4)
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
	.word	_Label_2118
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2119
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2120
	.word	12
	.word	4
	.word	_Label_2121
	.word	-12
	.word	4
	.word	_Label_2122
	.word	-16
	.word	4
	.word	_Label_2123
	.word	-20
	.word	4
	.word	_Label_2124
	.word	-24
	.word	4
	.word	0
_Label_2118:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2119:
	.ascii	"Pself\0"
	.align
_Label_2120:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2114\0"
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
_Label_3439:
	push	r0
	sub	r1,1,r1
	bne	_Label_3439
	mov	1271,r13		! source line 1271
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0AS",r10
!   _temp_2125 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2125 [entry ] into _temp_2126
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
!   _temp_2130 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2130 [entry ] into _temp_2131
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
!   Data Move: _temp_2129 = *_temp_2131  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2128 = _temp_2129 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2127 = _temp_2128 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2126 = _temp_2127  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1276,r13		! source line 1276
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
	.word	_Label_2132
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2133
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2134
	.word	12
	.word	4
	.word	_Label_2135
	.word	16
	.word	4
	.word	_Label_2136
	.word	-12
	.word	4
	.word	_Label_2137
	.word	-16
	.word	4
	.word	_Label_2138
	.word	-20
	.word	4
	.word	_Label_2139
	.word	-24
	.word	4
	.word	_Label_2140
	.word	-28
	.word	4
	.word	_Label_2141
	.word	-32
	.word	4
	.word	_Label_2142
	.word	-36
	.word	4
	.word	0
_Label_2132:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2133:
	.ascii	"Pself\0"
	.align
_Label_2134:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2135:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2125\0"
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
_Label_3440:
	push	r0
	sub	r1,1,r1
	bne	_Label_3440
	mov	1281,r13		! source line 1281
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0RE",r10
!   _temp_2146 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2146 [entry ] into _temp_2147
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
!   Data Move: _temp_2145 = *_temp_2147  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2144 = _temp_2145 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2144) then goto _Label_2148
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2148
!   _temp_2143 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2149
_Label_2148:
!   _temp_2143 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2149:
!   ReturnResult: _temp_2143  (sizeInBytes=1)
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
	.word	_Label_2150
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2151
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2152
	.word	12
	.word	4
	.word	_Label_2153
	.word	-16
	.word	4
	.word	_Label_2154
	.word	-20
	.word	4
	.word	_Label_2155
	.word	-24
	.word	4
	.word	_Label_2156
	.word	-28
	.word	4
	.word	_Label_2157
	.word	-9
	.word	1
	.word	0
_Label_2150:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2151:
	.ascii	"Pself\0"
	.align
_Label_2152:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2157:
	.byte	'C'
	.ascii	"_temp_2143\0"
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
_Label_3441:
	push	r0
	sub	r1,1,r1
	bne	_Label_3441
	mov	1290,r13		! source line 1290
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0RE",r10
!   _temp_2161 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2161 [entry ] into _temp_2162
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
!   Data Move: _temp_2160 = *_temp_2162  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2159 = _temp_2160 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2159) then goto _Label_2163
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2163
!   _temp_2158 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2164
_Label_2163:
!   _temp_2158 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2164:
!   ReturnResult: _temp_2158  (sizeInBytes=1)
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
	.word	_Label_2165
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2166
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2167
	.word	12
	.word	4
	.word	_Label_2168
	.word	-16
	.word	4
	.word	_Label_2169
	.word	-20
	.word	4
	.word	_Label_2170
	.word	-24
	.word	4
	.word	_Label_2171
	.word	-28
	.word	4
	.word	_Label_2172
	.word	-9
	.word	1
	.word	0
_Label_2165:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2166:
	.ascii	"Pself\0"
	.align
_Label_2167:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2172:
	.byte	'C'
	.ascii	"_temp_2158\0"
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
_Label_3442:
	push	r0
	sub	r1,1,r1
	bne	_Label_3442
	mov	1299,r13		! source line 1299
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0RE",r10
!   _temp_2176 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2176 [entry ] into _temp_2177
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
!   Data Move: _temp_2175 = *_temp_2177  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2174 = _temp_2175 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2174) then goto _Label_2178
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2178
!   _temp_2173 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2179
_Label_2178:
!   _temp_2173 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2179:
!   ReturnResult: _temp_2173  (sizeInBytes=1)
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
	.word	_Label_2180
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2181
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2182
	.word	12
	.word	4
	.word	_Label_2183
	.word	-16
	.word	4
	.word	_Label_2184
	.word	-20
	.word	4
	.word	_Label_2185
	.word	-24
	.word	4
	.word	_Label_2186
	.word	-28
	.word	4
	.word	_Label_2187
	.word	-9
	.word	1
	.word	0
_Label_2180:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2181:
	.ascii	"Pself\0"
	.align
_Label_2182:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2187:
	.byte	'C'
	.ascii	"_temp_2173\0"
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
_Label_3443:
	push	r0
	sub	r1,1,r1
	bne	_Label_3443
	mov	1308,r13		! source line 1308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0RE",r10
!   _temp_2191 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2191 [entry ] into _temp_2192
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
!   Data Move: _temp_2190 = *_temp_2192  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2189 = _temp_2190 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2189) then goto _Label_2193
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2193
!   _temp_2188 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2194
_Label_2193:
!   _temp_2188 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2194:
!   ReturnResult: _temp_2188  (sizeInBytes=1)
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
	.word	_Label_2195
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2196
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2197
	.word	12
	.word	4
	.word	_Label_2198
	.word	-16
	.word	4
	.word	_Label_2199
	.word	-20
	.word	4
	.word	_Label_2200
	.word	-24
	.word	4
	.word	_Label_2201
	.word	-28
	.word	4
	.word	_Label_2202
	.word	-9
	.word	1
	.word	0
_Label_2195:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2196:
	.ascii	"Pself\0"
	.align
_Label_2197:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2202:
	.byte	'C'
	.ascii	"_temp_2188\0"
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
_Label_3444:
	push	r0
	sub	r1,1,r1
	bne	_Label_3444
	mov	1317,r13		! source line 1317
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1321,r13		! source line 1321
	mov	"\0\0AS",r10
!   _temp_2203 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2203 [entry ] into _temp_2204
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
!   _temp_2207 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2207 [entry ] into _temp_2208
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
!   Data Move: _temp_2206 = *_temp_2208  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2205 = _temp_2206 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2204 = _temp_2205  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1321,r13		! source line 1321
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
	.word	_Label_2209
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2210
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2211
	.word	12
	.word	4
	.word	_Label_2212
	.word	-12
	.word	4
	.word	_Label_2213
	.word	-16
	.word	4
	.word	_Label_2214
	.word	-20
	.word	4
	.word	_Label_2215
	.word	-24
	.word	4
	.word	_Label_2216
	.word	-28
	.word	4
	.word	_Label_2217
	.word	-32
	.word	4
	.word	0
_Label_2209:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2210:
	.ascii	"Pself\0"
	.align
_Label_2211:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2203\0"
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
_Label_3445:
	push	r0
	sub	r1,1,r1
	bne	_Label_3445
	mov	1326,r13		! source line 1326
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0AS",r10
!   _temp_2218 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2218 [entry ] into _temp_2219
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
!   _temp_2222 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2222 [entry ] into _temp_2223
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
!   Data Move: _temp_2221 = *_temp_2223  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2220 = _temp_2221 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2219 = _temp_2220  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_2224
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2225
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2226
	.word	12
	.word	4
	.word	_Label_2227
	.word	-12
	.word	4
	.word	_Label_2228
	.word	-16
	.word	4
	.word	_Label_2229
	.word	-20
	.word	4
	.word	_Label_2230
	.word	-24
	.word	4
	.word	_Label_2231
	.word	-28
	.word	4
	.word	_Label_2232
	.word	-32
	.word	4
	.word	0
_Label_2224:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2225:
	.ascii	"Pself\0"
	.align
_Label_2226:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2218\0"
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
_Label_3446:
	push	r0
	sub	r1,1,r1
	bne	_Label_3446
	mov	1335,r13		! source line 1335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0AS",r10
!   _temp_2233 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2233 [entry ] into _temp_2234
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
!   _temp_2237 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2237 [entry ] into _temp_2238
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
!   Data Move: _temp_2236 = *_temp_2238  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2235 = _temp_2236 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2234 = _temp_2235  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_2239
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2240
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2241
	.word	12
	.word	4
	.word	_Label_2242
	.word	-12
	.word	4
	.word	_Label_2243
	.word	-16
	.word	4
	.word	_Label_2244
	.word	-20
	.word	4
	.word	_Label_2245
	.word	-24
	.word	4
	.word	_Label_2246
	.word	-28
	.word	4
	.word	_Label_2247
	.word	-32
	.word	4
	.word	0
_Label_2239:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2240:
	.ascii	"Pself\0"
	.align
_Label_2241:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2233\0"
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
_Label_3447:
	push	r0
	sub	r1,1,r1
	bne	_Label_3447
	mov	1344,r13		! source line 1344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1348,r13		! source line 1348
	mov	"\0\0AS",r10
!   _temp_2248 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2248 [entry ] into _temp_2249
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
!   _temp_2252 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2252 [entry ] into _temp_2253
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
!   Data Move: _temp_2251 = *_temp_2253  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2250 = _temp_2251 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2249 = _temp_2250  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_2254
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2255
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2256
	.word	12
	.word	4
	.word	_Label_2257
	.word	-12
	.word	4
	.word	_Label_2258
	.word	-16
	.word	4
	.word	_Label_2259
	.word	-20
	.word	4
	.word	_Label_2260
	.word	-24
	.word	4
	.word	_Label_2261
	.word	-28
	.word	4
	.word	_Label_2262
	.word	-32
	.word	4
	.word	0
_Label_2254:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2255:
	.ascii	"Pself\0"
	.align
_Label_2256:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2248\0"
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
_Label_3448:
	push	r0
	sub	r1,1,r1
	bne	_Label_3448
	mov	1353,r13		! source line 1353
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0AS",r10
!   _temp_2263 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2263 [entry ] into _temp_2264
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
!   _temp_2267 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2267 [entry ] into _temp_2268
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
!   Data Move: _temp_2266 = *_temp_2268  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2265 = _temp_2266 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2264 = _temp_2265  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_2269
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2270
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2271
	.word	12
	.word	4
	.word	_Label_2272
	.word	-12
	.word	4
	.word	_Label_2273
	.word	-16
	.word	4
	.word	_Label_2274
	.word	-20
	.word	4
	.word	_Label_2275
	.word	-24
	.word	4
	.word	_Label_2276
	.word	-28
	.word	4
	.word	_Label_2277
	.word	-32
	.word	4
	.word	0
_Label_2269:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2270:
	.ascii	"Pself\0"
	.align
_Label_2271:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2263\0"
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
_Label_3449:
	push	r0
	sub	r1,1,r1
	bne	_Label_3449
	mov	1362,r13		! source line 1362
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0AS",r10
!   _temp_2278 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2278 [entry ] into _temp_2279
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
!   _temp_2282 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2282 [entry ] into _temp_2283
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
!   Data Move: _temp_2281 = *_temp_2283  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2280 = _temp_2281 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2279 = _temp_2280  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_2284
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2285
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2286
	.word	12
	.word	4
	.word	_Label_2287
	.word	-12
	.word	4
	.word	_Label_2288
	.word	-16
	.word	4
	.word	_Label_2289
	.word	-20
	.word	4
	.word	_Label_2290
	.word	-24
	.word	4
	.word	_Label_2291
	.word	-28
	.word	4
	.word	_Label_2292
	.word	-32
	.word	4
	.word	0
_Label_2284:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2285:
	.ascii	"Pself\0"
	.align
_Label_2286:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2278\0"
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
_Label_3450:
	push	r0
	sub	r1,1,r1
	bne	_Label_3450
	mov	1371,r13		! source line 1371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0AS",r10
!   _temp_2293 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2293 [entry ] into _temp_2294
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
!   _temp_2297 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2297 [entry ] into _temp_2298
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
!   Data Move: _temp_2296 = *_temp_2298  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2295 = _temp_2296 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2294 = _temp_2295  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_2299
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2300
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2301
	.word	12
	.word	4
	.word	_Label_2302
	.word	-12
	.word	4
	.word	_Label_2303
	.word	-16
	.word	4
	.word	_Label_2304
	.word	-20
	.word	4
	.word	_Label_2305
	.word	-24
	.word	4
	.word	_Label_2306
	.word	-28
	.word	4
	.word	_Label_2307
	.word	-32
	.word	4
	.word	0
_Label_2299:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2300:
	.ascii	"Pself\0"
	.align
_Label_2301:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2293\0"
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
_Label_3451:
	push	r0
	sub	r1,1,r1
	bne	_Label_3451
	mov	1380,r13		! source line 1380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0AS",r10
!   _temp_2308 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2308 [entry ] into _temp_2309
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
!   _temp_2312 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2312 [entry ] into _temp_2313
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
!   Data Move: _temp_2311 = *_temp_2313  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2310 = _temp_2311 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2309 = _temp_2310  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_2314
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2315
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2316
	.word	12
	.word	4
	.word	_Label_2317
	.word	-12
	.word	4
	.word	_Label_2318
	.word	-16
	.word	4
	.word	_Label_2319
	.word	-20
	.word	4
	.word	_Label_2320
	.word	-24
	.word	4
	.word	_Label_2321
	.word	-28
	.word	4
	.word	_Label_2322
	.word	-32
	.word	4
	.word	0
_Label_2314:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2315:
	.ascii	"Pself\0"
	.align
_Label_2316:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2308\0"
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
_Label_3452:
	push	r0
	sub	r1,1,r1
	bne	_Label_3452
	mov	1389,r13		! source line 1389
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2324 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2324 [0 ] into _temp_2325
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
!   _temp_2323 = _temp_2325		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2326 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2323  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2326  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1395,r13		! source line 1395
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1395,r13		! source line 1395
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
	.word	_Label_2327
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2328
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2329
	.word	-12
	.word	4
	.word	_Label_2330
	.word	-16
	.word	4
	.word	_Label_2331
	.word	-20
	.word	4
	.word	_Label_2332
	.word	-24
	.word	4
	.word	0
_Label_2327:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2328:
	.ascii	"Pself\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2323\0"
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
_Label_3453:
	push	r0
	sub	r1,1,r1
	bne	_Label_3453
	mov	1400,r13		! source line 1400
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2333
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2333
	jmp	_Label_2334
_Label_2333:
! THEN...
	mov	1416,r13		! source line 1416
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2335
_Label_2334:
! ELSE...
	mov	1417,r13		! source line 1417
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2337		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2337
!	jmp	_Label_2336
_Label_2336:
! THEN...
	mov	1418,r13		! source line 1418
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1418,r13		! source line 1418
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2337:
! END IF...
_Label_2335:
! ASSIGNMENT STATEMENT...
	mov	1420,r13		! source line 1420
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
	mov	1421,r13		! source line 1421
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
	mov	1424,r13		! source line 1424
	mov	"\0\0WH",r10
_Label_2338:
!	jmp	_Label_2339
_Label_2339:
	mov	1424,r13		! source line 1424
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2342		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2342
!	jmp	_Label_2341
_Label_2341:
! THEN...
	mov	1426,r13		! source line 1426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2343 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2343  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1426,r13		! source line 1426
	mov	"\0\0CE",r10
	call	print
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
_Label_2342:
! IF STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0IF",r10
	mov	1429,r13		! source line 1429
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2347) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2346  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2346 then goto _Label_2345 else goto _Label_2344
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2344
	jmp	_Label_2345
_Label_2344:
! THEN...
	mov	1430,r13		! source line 1430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2348 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2348  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1430,r13		! source line 1430
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2345:
! ASSIGNMENT STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0AS",r10
	mov	1433,r13		! source line 1433
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2350) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2349  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2349 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0WH",r10
_Label_2351:
!   if offset >= 8192 then goto _Label_2353		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2353
!	jmp	_Label_2352
_Label_2352:
	mov	1435,r13		! source line 1435
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2354 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2354  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2356		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2356
!	jmp	_Label_2355
_Label_2355:
! THEN...
	mov	1444,r13		! source line 1444
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2356:
! END WHILE...
	jmp	_Label_2351
_Label_2353:
! ASSIGNMENT STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2338
_Label_2340:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2357
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2358
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2359
	.word	12
	.word	4
	.word	_Label_2360
	.word	16
	.word	4
	.word	_Label_2361
	.word	20
	.word	4
	.word	_Label_2362
	.word	-9
	.word	1
	.word	_Label_2363
	.word	-16
	.word	4
	.word	_Label_2364
	.word	-20
	.word	4
	.word	_Label_2365
	.word	-24
	.word	4
	.word	_Label_2366
	.word	-28
	.word	4
	.word	_Label_2367
	.word	-10
	.word	1
	.word	_Label_2368
	.word	-32
	.word	4
	.word	_Label_2369
	.word	-36
	.word	4
	.word	_Label_2370
	.word	-40
	.word	4
	.word	_Label_2371
	.word	-44
	.word	4
	.word	_Label_2372
	.word	-48
	.word	4
	.word	0
_Label_2357:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2358:
	.ascii	"Pself\0"
	.align
_Label_2359:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2360:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2361:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2362:
	.byte	'C'
	.ascii	"_temp_2354\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2367:
	.byte	'C'
	.ascii	"_temp_2346\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2369:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2370:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2371:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2372:
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
_Label_3454:
	push	r0
	sub	r1,1,r1
	bne	_Label_3454
	mov	1454,r13		! source line 1454
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2373
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2373
	jmp	_Label_2374
_Label_2373:
! THEN...
	mov	1466,r13		! source line 1466
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2375
_Label_2374:
! ELSE...
	mov	1467,r13		! source line 1467
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2377		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2377
!	jmp	_Label_2376
_Label_2376:
! THEN...
	mov	1468,r13		! source line 1468
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1468,r13		! source line 1468
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2377:
! END IF...
_Label_2375:
! ASSIGNMENT STATEMENT...
	mov	1470,r13		! source line 1470
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
	mov	1471,r13		! source line 1471
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
	mov	1472,r13		! source line 1472
	mov	"\0\0WH",r10
_Label_2378:
!	jmp	_Label_2379
_Label_2379:
	mov	1472,r13		! source line 1472
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2384		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2384
	jmp	_Label_2381
_Label_2384:
	mov	1474,r13		! source line 1474
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2386) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2385  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2385 then goto _Label_2383 else goto _Label_2381
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2381
	jmp	_Label_2383
_Label_2383:
	mov	1475,r13		! source line 1475
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2388) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2387  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2387 then goto _Label_2382 else goto _Label_2381
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2381
	jmp	_Label_2382
_Label_2381:
! THEN...
	mov	1476,r13		! source line 1476
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2382:
! ASSIGNMENT STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0AS",r10
	mov	1478,r13		! source line 1478
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2390) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2389  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2389 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0WH",r10
_Label_2391:
!   if offset >= 8192 then goto _Label_2393		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2393
!	jmp	_Label_2392
_Label_2392:
	mov	1479,r13		! source line 1479
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2394 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2394  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2396		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2396
!	jmp	_Label_2395
_Label_2395:
! THEN...
	mov	1486,r13		! source line 1486
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2396:
! END WHILE...
	jmp	_Label_2391
_Label_2393:
! ASSIGNMENT STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2378
_Label_2380:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2397
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2398
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2399
	.word	12
	.word	4
	.word	_Label_2400
	.word	16
	.word	4
	.word	_Label_2401
	.word	20
	.word	4
	.word	_Label_2402
	.word	-9
	.word	1
	.word	_Label_2403
	.word	-16
	.word	4
	.word	_Label_2404
	.word	-20
	.word	4
	.word	_Label_2405
	.word	-24
	.word	4
	.word	_Label_2406
	.word	-10
	.word	1
	.word	_Label_2407
	.word	-28
	.word	4
	.word	_Label_2408
	.word	-11
	.word	1
	.word	_Label_2409
	.word	-32
	.word	4
	.word	_Label_2410
	.word	-36
	.word	4
	.word	_Label_2411
	.word	-40
	.word	4
	.word	_Label_2412
	.word	-44
	.word	4
	.word	0
_Label_2397:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2398:
	.ascii	"Pself\0"
	.align
_Label_2399:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2400:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2401:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2402:
	.byte	'C'
	.ascii	"_temp_2394\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2406:
	.byte	'C'
	.ascii	"_temp_2387\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2408:
	.byte	'C'
	.ascii	"_temp_2385\0"
	.align
_Label_2409:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2410:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2411:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2412:
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
_Label_3455:
	push	r0
	sub	r1,1,r1
	bne	_Label_3455
	mov	1496,r13		! source line 1496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1520,r13		! source line 1520
	mov	"\0\0IF",r10
	mov	1520,r13		! source line 1520
	mov	"\0\0SE",r10
!   _temp_2416 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2417) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2416  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2415  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2415 >= 4 then goto _Label_2414		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2414
!	jmp	_Label_2413
_Label_2413:
! THEN...
	mov	1523,r13		! source line 1523
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2414:
! IF STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2419		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2419
!	jmp	_Label_2418
_Label_2418:
! THEN...
	mov	1528,r13		! source line 1528
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2419:
! ASSIGNMENT STATEMENT...
	mov	1531,r13		! source line 1531
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
	mov	1533,r13		! source line 1533
	mov	"\0\0RE",r10
	mov	1533,r13		! source line 1533
	mov	"\0\0SE",r10
!   _temp_2422 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2421 = _temp_2422 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2423 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2424) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2421  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2423  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2420  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2420  (sizeInBytes=4)
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
	.word	_Label_2425
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2426
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2427
	.word	12
	.word	4
	.word	_Label_2428
	.word	16
	.word	4
	.word	_Label_2429
	.word	20
	.word	4
	.word	_Label_2430
	.word	-12
	.word	4
	.word	_Label_2431
	.word	-16
	.word	4
	.word	_Label_2432
	.word	-20
	.word	4
	.word	_Label_2433
	.word	-24
	.word	4
	.word	_Label_2434
	.word	-28
	.word	4
	.word	_Label_2435
	.word	-32
	.word	4
	.word	_Label_2436
	.word	-36
	.word	4
	.word	_Label_2437
	.word	-40
	.word	4
	.word	_Label_2438
	.word	-44
	.word	4
	.word	0
_Label_2425:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2426:
	.ascii	"Pself\0"
	.align
_Label_2427:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2428:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2429:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2438:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2439
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2439:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2440
	.word	_sourceFileName
	.word	310		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2440:
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
_Label_3456:
	push	r0
	sub	r1,1,r1
	bne	_Label_3456
	mov	2039,r13		! source line 2039
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2441 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2441  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2040,r13		! source line 2040
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2047,r13		! source line 2047
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
	mov	2048,r13		! source line 2048
	mov	"\0\0SE",r10
!   _temp_2443 = &semUsedInSynchMethods
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
	mov	2049,r13		! source line 2049
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
	mov	2050,r13		! source line 2050
	mov	"\0\0SE",r10
!   _temp_2445 = &diskBusy
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
	mov	2050,r13		! source line 2050
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
	.word	_Label_2446
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2447
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2448
	.word	-12
	.word	4
	.word	_Label_2449
	.word	-16
	.word	4
	.word	_Label_2450
	.word	-20
	.word	4
	.word	_Label_2451
	.word	-24
	.word	4
	.word	_Label_2452
	.word	-28
	.word	4
	.word	0
_Label_2446:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2447:
	.ascii	"Pself\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2441\0"
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
_Label_3457:
	push	r0
	sub	r1,1,r1
	bne	_Label_3457
	mov	2055,r13		! source line 2055
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0SE",r10
!   _temp_2453 = &diskBusy
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
	mov	2069,r13		! source line 2069
	mov	"\0\0WH",r10
_Label_2454:
!	jmp	_Label_2455
_Label_2455:
	mov	2069,r13		! source line 2069
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0SE",r10
!   _temp_2457 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2458) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2457  sizeInBytes=4
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
	mov	2073,r13		! source line 2073
	mov	"\0\0SE",r10
!   _temp_2459 = &semUsedInSynchMethods
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
	mov	2076,r13		! source line 2076
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2468 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2462
	cmp	r1,2
	be	_Label_2463
	cmp	r1,3
	be	_Label_2464
	cmp	r1,4
	be	_Label_2465
	cmp	r1,5
	be	_Label_2466
	cmp	r1,6
	be	_Label_2467
	jmp	_Label_2460
! CASE 1...
_Label_2462:
! SEND STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0SE",r10
!   _temp_2469 = &diskBusy
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
	mov	2079,r13		! source line 2079
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2463:
! CALL STATEMENT...
!   _temp_2470 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2470  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2081,r13		! source line 2081
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2464:
! CALL STATEMENT...
!   _temp_2471 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2471  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2083,r13		! source line 2083
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2465:
! CALL STATEMENT...
!   _temp_2472 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2472  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2085,r13		! source line 2085
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2466:
! BREAK STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0BR",r10
	jmp	_Label_2461
! CASE 6...
_Label_2467:
! CALL STATEMENT...
!   _temp_2473 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2473  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2091,r13		! source line 2091
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2460:
! CALL STATEMENT...
!   _temp_2474 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2474  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2093,r13		! source line 2093
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2461:
! END WHILE...
	jmp	_Label_2454
_Label_2456:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2475
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2476
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2477
	.word	12
	.word	4
	.word	_Label_2478
	.word	16
	.word	4
	.word	_Label_2479
	.word	20
	.word	4
	.word	_Label_2480
	.word	-12
	.word	4
	.word	_Label_2481
	.word	-16
	.word	4
	.word	_Label_2482
	.word	-20
	.word	4
	.word	_Label_2483
	.word	-24
	.word	4
	.word	_Label_2484
	.word	-28
	.word	4
	.word	_Label_2485
	.word	-32
	.word	4
	.word	_Label_2486
	.word	-36
	.word	4
	.word	_Label_2487
	.word	-40
	.word	4
	.word	_Label_2488
	.word	-44
	.word	4
	.word	_Label_2489
	.word	-48
	.word	4
	.word	_Label_2490
	.word	-52
	.word	4
	.word	0
_Label_2475:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2476:
	.ascii	"Pself\0"
	.align
_Label_2477:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2478:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2479:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2453\0"
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
	mov	2102,r13		! source line 2102
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2120,r13		! source line 2120
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
	mov	2121,r13		! source line 2121
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
	mov	2122,r13		! source line 2122
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
	mov	2123,r13		! source line 2123
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
	mov	2123,r13		! source line 2123
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
	.word	_Label_2491
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2492
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2493
	.word	12
	.word	4
	.word	_Label_2494
	.word	16
	.word	4
	.word	_Label_2495
	.word	20
	.word	4
	.word	_Label_2496
	.word	24
	.word	4
	.word	0
_Label_2491:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2492:
	.ascii	"Pself\0"
	.align
_Label_2493:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2494:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2495:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2496:
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
_Label_3458:
	push	r0
	sub	r1,1,r1
	bne	_Label_3458
	mov	2128,r13		! source line 2128
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0SE",r10
!   _temp_2497 = &diskBusy
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
	mov	2141,r13		! source line 2141
	mov	"\0\0WH",r10
_Label_2498:
!	jmp	_Label_2499
_Label_2499:
	mov	2141,r13		! source line 2141
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0SE",r10
!   _temp_2501 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2502) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2501  sizeInBytes=4
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
	mov	2144,r13		! source line 2144
	mov	"\0\0SE",r10
!   _temp_2503 = &semUsedInSynchMethods
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
	mov	2147,r13		! source line 2147
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2512 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2506
	cmp	r1,2
	be	_Label_2507
	cmp	r1,3
	be	_Label_2508
	cmp	r1,4
	be	_Label_2509
	cmp	r1,5
	be	_Label_2510
	cmp	r1,6
	be	_Label_2511
	jmp	_Label_2504
! CASE 1...
_Label_2506:
! SEND STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0SE",r10
!   _temp_2513 = &diskBusy
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
	mov	2150,r13		! source line 2150
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2507:
! CALL STATEMENT...
!   _temp_2514 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2514  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2152,r13		! source line 2152
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2508:
! CALL STATEMENT...
!   _temp_2515 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2515  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2154,r13		! source line 2154
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2509:
! CALL STATEMENT...
!   _temp_2516 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2516  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2156,r13		! source line 2156
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2510:
! BREAK STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0BR",r10
	jmp	_Label_2505
! CASE 6...
_Label_2511:
! CALL STATEMENT...
!   _temp_2517 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2517  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2162,r13		! source line 2162
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2504:
! CALL STATEMENT...
!   _temp_2518 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2518  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2164,r13		! source line 2164
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2505:
! END WHILE...
	jmp	_Label_2498
_Label_2500:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2519
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2520
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2521
	.word	12
	.word	4
	.word	_Label_2522
	.word	16
	.word	4
	.word	_Label_2523
	.word	20
	.word	4
	.word	_Label_2524
	.word	-12
	.word	4
	.word	_Label_2525
	.word	-16
	.word	4
	.word	_Label_2526
	.word	-20
	.word	4
	.word	_Label_2527
	.word	-24
	.word	4
	.word	_Label_2528
	.word	-28
	.word	4
	.word	_Label_2529
	.word	-32
	.word	4
	.word	_Label_2530
	.word	-36
	.word	4
	.word	_Label_2531
	.word	-40
	.word	4
	.word	_Label_2532
	.word	-44
	.word	4
	.word	_Label_2533
	.word	-48
	.word	4
	.word	_Label_2534
	.word	-52
	.word	4
	.word	0
_Label_2519:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2520:
	.ascii	"Pself\0"
	.align
_Label_2521:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2522:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2523:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2497\0"
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
	mov	2173,r13		! source line 2173
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2190,r13		! source line 2190
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
	mov	2191,r13		! source line 2191
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
	mov	2192,r13		! source line 2192
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
	mov	2193,r13		! source line 2193
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
	mov	2193,r13		! source line 2193
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
	.word	_Label_2535
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2536
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2537
	.word	12
	.word	4
	.word	_Label_2538
	.word	16
	.word	4
	.word	_Label_2539
	.word	20
	.word	4
	.word	_Label_2540
	.word	24
	.word	4
	.word	0
_Label_2535:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2536:
	.ascii	"Pself\0"
	.align
_Label_2537:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2538:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2539:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2540:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2541
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
_Label_2541:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2542
	.word	_sourceFileName
	.word	333		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2542:
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
_Label_3459:
	push	r0
	sub	r1,1,r1
	bne	_Label_3459
	mov	2204,r13		! source line 2204
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2543 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2543  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2211,r13		! source line 2211
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2212,r13		! source line 2212
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
	mov	2213,r13		! source line 2213
	mov	"\0\0SE",r10
!   _temp_2545 = &fileManagerLock
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
	mov	2216,r13		! source line 2216
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
	mov	2217,r13		! source line 2217
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
	mov	2218,r13		! source line 2218
	mov	"\0\0SE",r10
!   _temp_2548 = &anFCBBecameFree
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
	mov	2219,r13		! source line 2219
	mov	"\0\0AS",r10
!   _temp_2549 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2551 = &_temp_2550
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2551 = _temp_2551 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2553 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3460:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3460
!   _temp_2553 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2555:
!   Data Move: *_temp_2551 = _temp_2553  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3461:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3461
!   _temp_2551 = _temp_2551 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2552 = _temp_2552 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2552) then goto _Label_2555
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2555
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2556 = &_temp_2550
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3462
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3462:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2549 = *_temp_2556  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3463:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3463
! FOR STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2561 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2562 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2561  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2557:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2562 then goto _Label_2560		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2560
_Label_2558:
	mov	2221,r13		! source line 2221
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0AS",r10
!   _temp_2563 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2563 [i ] into _temp_2564
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
!   _temp_2565 = _temp_2564 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2565 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0SE",r10
!   _temp_2566 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2566 [i ] into _temp_2567
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
	mov	2224,r13		! source line 2224
	mov	"\0\0SE",r10
!   _temp_2569 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2569 [i ] into _temp_2570
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
!   _temp_2568 = _temp_2570		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2571 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2568  sizeInBytes=4
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
_Label_2559:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2557
! END FOR
_Label_2560:
! ASSIGNMENT STATEMENT...
	mov	2228,r13		! source line 2228
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
	mov	2229,r13		! source line 2229
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
	mov	2230,r13		! source line 2230
	mov	"\0\0SE",r10
!   _temp_2574 = &anOpenFileBecameFree
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
	mov	2231,r13		! source line 2231
	mov	"\0\0AS",r10
!   _temp_2575 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2577 = &_temp_2576
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2577 = _temp_2577 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2579 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3464:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3464
!   _temp_2579 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2581:
!   Data Move: *_temp_2577 = _temp_2579  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3465:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3465
!   _temp_2577 = _temp_2577 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2578 = _temp_2578 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2578) then goto _Label_2581
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2581
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2582 = &_temp_2576
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3466
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3466:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2575 = *_temp_2582  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3467:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3467
! FOR STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2587 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2588 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2587  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2583:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2588 then goto _Label_2586		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2586
_Label_2584:
	mov	2233,r13		! source line 2233
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2234,r13		! source line 2234
	mov	"\0\0AS",r10
!   _temp_2589 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2589 [i ] into _temp_2590
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
!   _temp_2591 = _temp_2590 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2591 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0SE",r10
!   _temp_2593 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2593 [i ] into _temp_2594
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
!   _temp_2592 = _temp_2594		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2595 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2592  sizeInBytes=4
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
_Label_2585:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2583
! END FOR
_Label_2586:
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3468:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3468
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0AS",r10
!   _temp_2597 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2598 = _temp_2597 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2598 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0AS",r10
	mov	2245,r13		! source line 2245
	mov	"\0\0SE",r10
!   _temp_2599 = &_P_Kernel_frameManager
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
	mov	2246,r13		! source line 2246
	mov	"\0\0SE",r10
!   _temp_2600 = &_P_Kernel_diskDriver
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
	mov	2246,r13		! source line 2246
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
	.word	_Label_2601
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2602
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2603
	.word	-12
	.word	4
	.word	_Label_2604
	.word	-16
	.word	4
	.word	_Label_2605
	.word	-20
	.word	4
	.word	_Label_2606
	.word	-24
	.word	4
	.word	_Label_2607
	.word	-28
	.word	4
	.word	_Label_2608
	.word	-32
	.word	4
	.word	_Label_2609
	.word	-36
	.word	4
	.word	_Label_2610
	.word	-40
	.word	4
	.word	_Label_2611
	.word	-44
	.word	4
	.word	_Label_2612
	.word	-48
	.word	4
	.word	_Label_2613
	.word	-52
	.word	4
	.word	_Label_2614
	.word	-56
	.word	4
	.word	_Label_2615
	.word	-60
	.word	4
	.word	_Label_2616
	.word	-64
	.word	4
	.word	_Label_2617
	.word	-68
	.word	4
	.word	_Label_2618
	.word	-72
	.word	4
	.word	_Label_2619
	.word	-100
	.word	28
	.word	_Label_2620
	.word	-104
	.word	4
	.word	_Label_2621
	.word	-108
	.word	4
	.word	_Label_2622
	.word	-392
	.word	284
	.word	_Label_2623
	.word	-396
	.word	4
	.word	_Label_2624
	.word	-400
	.word	4
	.word	_Label_2625
	.word	-404
	.word	4
	.word	_Label_2626
	.word	-408
	.word	4
	.word	_Label_2627
	.word	-412
	.word	4
	.word	_Label_2628
	.word	-416
	.word	4
	.word	_Label_2629
	.word	-420
	.word	4
	.word	_Label_2630
	.word	-424
	.word	4
	.word	_Label_2631
	.word	-428
	.word	4
	.word	_Label_2632
	.word	-432
	.word	4
	.word	_Label_2633
	.word	-436
	.word	4
	.word	_Label_2634
	.word	-440
	.word	4
	.word	_Label_2635
	.word	-444
	.word	4
	.word	_Label_2636
	.word	-448
	.word	4
	.word	_Label_2637
	.word	-452
	.word	4
	.word	_Label_2638
	.word	-456
	.word	4
	.word	_Label_2639
	.word	-460
	.word	4
	.word	_Label_2640
	.word	-500
	.word	40
	.word	_Label_2641
	.word	-504
	.word	4
	.word	_Label_2642
	.word	-508
	.word	4
	.word	_Label_2643
	.word	-912
	.word	404
	.word	_Label_2644
	.word	-916
	.word	4
	.word	_Label_2645
	.word	-920
	.word	4
	.word	_Label_2646
	.word	-924
	.word	4
	.word	_Label_2647
	.word	-928
	.word	4
	.word	_Label_2648
	.word	-932
	.word	4
	.word	_Label_2649
	.word	-936
	.word	4
	.word	_Label_2650
	.word	-940
	.word	4
	.word	_Label_2651
	.word	-944
	.word	4
	.word	0
_Label_2601:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2602:
	.ascii	"Pself\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2651:
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
_Label_3469:
	push	r0
	sub	r1,1,r1
	bne	_Label_3469
	mov	2253,r13		! source line 2253
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0SE",r10
!   _temp_2652 = &fileManagerLock
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
!   _temp_2653 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2653  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2256,r13		! source line 2256
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2658 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2659 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2658  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2654:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2659 then goto _Label_2657		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2657
_Label_2655:
	mov	2257,r13		! source line 2257
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2660 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2660  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2258,r13		! source line 2258
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2259,r13		! source line 2259
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2661 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2661  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2260,r13		! source line 2260
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0SE",r10
!   _temp_2662 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2662 [i ] into _temp_2663
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
_Label_2656:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2654
! END FOR
_Label_2657:
! CALL STATEMENT...
!   _temp_2664 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2664  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2263,r13		! source line 2263
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0SE",r10
!   _temp_2665 = _function_201_printFCB
	set	_function_201_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2666 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2665  sizeInBytes=4
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
	mov	2265,r13		! source line 2265
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2667 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2667  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2266,r13		! source line 2266
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2672 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2673 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2672  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2668:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2673 then goto _Label_2671		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2671
_Label_2669:
	mov	2267,r13		! source line 2267
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2674 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2674  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2268,r13		! source line 2268
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2269,r13		! source line 2269
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2675 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2675  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2270,r13		! source line 2270
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2677 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2677 [i ] into _temp_2678
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
!   _temp_2676 = _temp_2678		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2676  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2271,r13		! source line 2271
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2679 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2679  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2272,r13		! source line 2272
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2273,r13		! source line 2273
	mov	"\0\0SE",r10
!   _temp_2680 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2680 [i ] into _temp_2681
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
_Label_2670:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2668
! END FOR
_Label_2671:
! CALL STATEMENT...
!   _temp_2682 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2682  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2275,r13		! source line 2275
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0SE",r10
!   _temp_2683 = _function_200_printOpen
	set	_function_200_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2684 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2683  sizeInBytes=4
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
	mov	2277,r13		! source line 2277
	mov	"\0\0SE",r10
!   _temp_2685 = &fileManagerLock
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
	mov	2277,r13		! source line 2277
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
	.word	_Label_2686
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2687
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2688
	.word	-12
	.word	4
	.word	_Label_2689
	.word	-16
	.word	4
	.word	_Label_2690
	.word	-20
	.word	4
	.word	_Label_2691
	.word	-24
	.word	4
	.word	_Label_2692
	.word	-28
	.word	4
	.word	_Label_2693
	.word	-32
	.word	4
	.word	_Label_2694
	.word	-36
	.word	4
	.word	_Label_2695
	.word	-40
	.word	4
	.word	_Label_2696
	.word	-44
	.word	4
	.word	_Label_2697
	.word	-48
	.word	4
	.word	_Label_2698
	.word	-52
	.word	4
	.word	_Label_2699
	.word	-56
	.word	4
	.word	_Label_2700
	.word	-60
	.word	4
	.word	_Label_2701
	.word	-64
	.word	4
	.word	_Label_2702
	.word	-68
	.word	4
	.word	_Label_2703
	.word	-72
	.word	4
	.word	_Label_2704
	.word	-76
	.word	4
	.word	_Label_2705
	.word	-80
	.word	4
	.word	_Label_2706
	.word	-84
	.word	4
	.word	_Label_2707
	.word	-88
	.word	4
	.word	_Label_2708
	.word	-92
	.word	4
	.word	_Label_2709
	.word	-96
	.word	4
	.word	_Label_2710
	.word	-100
	.word	4
	.word	_Label_2711
	.word	-104
	.word	4
	.word	_Label_2712
	.word	-108
	.word	4
	.word	_Label_2713
	.word	-112
	.word	4
	.word	_Label_2714
	.word	-116
	.word	4
	.word	0
_Label_2686:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2687:
	.ascii	"Pself\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2714:
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
_Label_3470:
	push	r0
	sub	r1,1,r1
	bne	_Label_3470
	mov	2282,r13		! source line 2282
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0AS",r10
	mov	2298,r13		! source line 2298
	mov	"\0\0SE",r10
!   _temp_2715 = &_P_Kernel_fileManager
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
	mov	2299,r13		! source line 2299
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2716
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2716
	jmp	_Label_2717
_Label_2716:
! THEN...
	mov	2300,r13		! source line 2300
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2717:
! SEND STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0SE",r10
!   _temp_2718 = &fileManagerLock
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
	mov	2305,r13		! source line 2305
	mov	"\0\0WH",r10
_Label_2719:
	mov	2305,r13		! source line 2305
	mov	"\0\0SE",r10
!   _temp_2722 = &openFileFreeList
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
!   if result==true then goto _Label_2720 else goto _Label_2721
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2721
	jmp	_Label_2720
_Label_2720:
	mov	2305,r13		! source line 2305
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0SE",r10
!   _temp_2723 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2724 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2723  sizeInBytes=4
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
	jmp	_Label_2719
_Label_2721:
! ASSIGNMENT STATEMENT...
	mov	2308,r13		! source line 2308
	mov	"\0\0AS",r10
	mov	2308,r13		! source line 2308
	mov	"\0\0SE",r10
!   _temp_2725 = &openFileFreeList
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
	mov	2311,r13		! source line 2311
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2726 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2726 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2727 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2727 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2315,r13		! source line 2315
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2728 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2728 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0SE",r10
!   _temp_2729 = &fileManagerLock
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
	mov	2318,r13		! source line 2318
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
	.word	_Label_2730
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2731
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2732
	.word	12
	.word	4
	.word	_Label_2733
	.word	-12
	.word	4
	.word	_Label_2734
	.word	-16
	.word	4
	.word	_Label_2735
	.word	-20
	.word	4
	.word	_Label_2736
	.word	-24
	.word	4
	.word	_Label_2737
	.word	-28
	.word	4
	.word	_Label_2738
	.word	-32
	.word	4
	.word	_Label_2739
	.word	-36
	.word	4
	.word	_Label_2740
	.word	-40
	.word	4
	.word	_Label_2741
	.word	-44
	.word	4
	.word	_Label_2742
	.word	-48
	.word	4
	.word	_Label_2743
	.word	-52
	.word	4
	.word	_Label_2744
	.word	-56
	.word	4
	.word	0
_Label_2730:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2731:
	.ascii	"Pself\0"
	.align
_Label_2732:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2743:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2744:
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
_Label_3471:
	push	r0
	sub	r1,1,r1
	bne	_Label_3471
	mov	2323,r13		! source line 2323
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2348,r13		! source line 2348
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2351,r13		! source line 2351
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
	mov	2352,r13		! source line 2352
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2746		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2746
!	jmp	_Label_2745
_Label_2745:
! THEN...
	mov	2354,r13		! source line 2354
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2747 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2747  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2354,r13		! source line 2354
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2746:
! ASSIGNMENT STATEMENT...
	mov	2358,r13		! source line 2358
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
	mov	2359,r13		! source line 2359
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2360,r13		! source line 2360
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
	mov	2361,r13		! source line 2361
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0WH",r10
_Label_2748:
!   if numFiles <= 0 then goto _Label_2750		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2750
!	jmp	_Label_2749
_Label_2749:
	mov	2364,r13		! source line 2364
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2751 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2751  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2365,r13		! source line 2365
	mov	"\0\0CA",r10
	call	_function_202_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2752 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2752  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2367,r13		! source line 2367
	mov	"\0\0CA",r10
	call	_function_202_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2753 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2753  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2369,r13		! source line 2369
	mov	"\0\0CA",r10
	call	_function_202_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2757 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2757 then goto _Label_2755		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2755
!	jmp	_Label_2756
_Label_2756:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2759
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
!   _temp_2758 = _temp_2759		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2758  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2372,r13		! source line 2372
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2754 else goto _Label_2755
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2755
	jmp	_Label_2754
_Label_2754:
! THEN...
	mov	2373,r13		! source line 2373
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2373,r13		! source line 2373
	mov	"\0\0BR",r10
	jmp	_Label_2750
! END IF...
_Label_2755:
! ASSIGNMENT STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2748
_Label_2750:
! IF STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2761		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2761
!	jmp	_Label_2760
_Label_2760:
! THEN...
	mov	2381,r13		! source line 2381
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2761:
! SEND STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0SE",r10
!   _temp_2762 = &fileManagerLock
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
	mov	2386,r13		! source line 2386
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2767 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2768 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2767  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2763:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2768 then goto _Label_2766		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2766
_Label_2764:
	mov	2386,r13		! source line 2386
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0AS",r10
!   _temp_2769 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2769 [i ] into _temp_2770
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
!   fcb = _temp_2770		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2774 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2773 = *_temp_2774  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2773 != start then goto _Label_2772		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2772
!	jmp	_Label_2771
_Label_2771:
! THEN...
	mov	2389,r13		! source line 2389
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2775 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2778 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2777 = *_temp_2778  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2776 = _temp_2777 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2775 = _temp_2776  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0SE",r10
!   _temp_2779 = &fileManagerLock
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
	mov	2391,r13		! source line 2391
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2772:
!   Increment the FOR-LOOP index variable and jump back
_Label_2765:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2763
! END FOR
_Label_2766:
! WHILE STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0WH",r10
_Label_2780:
	mov	2396,r13		! source line 2396
	mov	"\0\0SE",r10
!   _temp_2783 = &fcbFreeList
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
!   if result==true then goto _Label_2781 else goto _Label_2782
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2782
	jmp	_Label_2781
_Label_2781:
	mov	2396,r13		! source line 2396
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0SE",r10
!   _temp_2784 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2785 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2784  sizeInBytes=4
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
	jmp	_Label_2780
_Label_2782:
! ASSIGNMENT STATEMENT...
	mov	2399,r13		! source line 2399
	mov	"\0\0AS",r10
	mov	2399,r13		! source line 2399
	mov	"\0\0SE",r10
!   _temp_2786 = &fcbFreeList
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
	mov	2402,r13		! source line 2402
	mov	"\0\0SE",r10
!   _temp_2787 = &fileManagerLock
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
	mov	2405,r13		! source line 2405
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2788 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2788 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2789 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2789 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2790 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2790 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2795 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2794 = *_temp_2795  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2794 < 0 then goto _Label_2793		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2793
	jmp	_Label_2791
_Label_2793:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2796 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2796 ) then goto _Label_2792		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2792
!	jmp	_Label_2791
_Label_2791:
! THEN...
	mov	2409,r13		! source line 2409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2797 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2797  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2409,r13		! source line 2409
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2792:
! RETURN STATEMENT...
	mov	2411,r13		! source line 2411
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
	.word	_Label_2798
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2799
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2800
	.word	12
	.word	4
	.word	_Label_2801
	.word	-12
	.word	4
	.word	_Label_2802
	.word	-16
	.word	4
	.word	_Label_2803
	.word	-20
	.word	4
	.word	_Label_2804
	.word	-24
	.word	4
	.word	_Label_2805
	.word	-28
	.word	4
	.word	_Label_2806
	.word	-32
	.word	4
	.word	_Label_2807
	.word	-36
	.word	4
	.word	_Label_2808
	.word	-40
	.word	4
	.word	_Label_2809
	.word	-44
	.word	4
	.word	_Label_2810
	.word	-48
	.word	4
	.word	_Label_2811
	.word	-52
	.word	4
	.word	_Label_2812
	.word	-56
	.word	4
	.word	_Label_2813
	.word	-60
	.word	4
	.word	_Label_2814
	.word	-64
	.word	4
	.word	_Label_2815
	.word	-68
	.word	4
	.word	_Label_2816
	.word	-72
	.word	4
	.word	_Label_2817
	.word	-76
	.word	4
	.word	_Label_2818
	.word	-80
	.word	4
	.word	_Label_2819
	.word	-84
	.word	4
	.word	_Label_2820
	.word	-88
	.word	4
	.word	_Label_2821
	.word	-92
	.word	4
	.word	_Label_2822
	.word	-96
	.word	4
	.word	_Label_2823
	.word	-100
	.word	4
	.word	_Label_2824
	.word	-104
	.word	4
	.word	_Label_2825
	.word	-108
	.word	4
	.word	_Label_2826
	.word	-112
	.word	4
	.word	_Label_2827
	.word	-116
	.word	4
	.word	_Label_2828
	.word	-120
	.word	4
	.word	_Label_2829
	.word	-124
	.word	4
	.word	_Label_2830
	.word	-128
	.word	4
	.word	_Label_2831
	.word	-132
	.word	4
	.word	_Label_2832
	.word	-136
	.word	4
	.word	_Label_2833
	.word	-140
	.word	4
	.word	_Label_2834
	.word	-144
	.word	4
	.word	_Label_2835
	.word	-148
	.word	4
	.word	_Label_2836
	.word	-152
	.word	4
	.word	_Label_2837
	.word	-156
	.word	4
	.word	_Label_2838
	.word	-160
	.word	4
	.word	0
_Label_2798:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2799:
	.ascii	"Pself\0"
	.align
_Label_2800:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2832:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2833:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2834:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2835:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2836:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2837:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2838:
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
_Label_3472:
	push	r0
	sub	r1,1,r1
	bne	_Label_3472
	mov	2424,r13		! source line 2424
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0IF",r10
!   _temp_2841 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2841 then goto _Label_2840		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2840
!	jmp	_Label_2839
_Label_2839:
! THEN...
	mov	2427,r13		! source line 2427
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2840:
! SEND STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0SE",r10
!   _temp_2842 = &fileManagerLock
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
	mov	2430,r13		! source line 2430
	mov	"\0\0SE",r10
!   _temp_2843 = &_P_Kernel_fileManager
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
	mov	2431,r13		! source line 2431
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2844 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2844  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2845 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2848 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2847 = *_temp_2848  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2846 = _temp_2847 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2845 = _temp_2846  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2852 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2851 = *_temp_2852  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2851 > 0 then goto _Label_2850		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2850
!	jmp	_Label_2849
_Label_2849:
! THEN...
	mov	2434,r13		! source line 2434
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0SE",r10
!   _temp_2853 = &openFileFreeList
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
	mov	2435,r13		! source line 2435
	mov	"\0\0SE",r10
!   _temp_2854 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2855 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2854  sizeInBytes=4
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
	mov	2436,r13		! source line 2436
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2856 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2859 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2858 = *_temp_2859  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2857 = _temp_2858 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2856 = _temp_2857  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2863 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2862 = *_temp_2863  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2862 > 0 then goto _Label_2861		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2861
!	jmp	_Label_2860
_Label_2860:
! THEN...
	mov	2438,r13		! source line 2438
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0SE",r10
!   _temp_2864 = &fcbFreeList
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
	mov	2439,r13		! source line 2439
	mov	"\0\0SE",r10
!   _temp_2865 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2866 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2865  sizeInBytes=4
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
_Label_2861:
! END IF...
_Label_2850:
! SEND STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0SE",r10
!   _temp_2867 = &fileManagerLock
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
	mov	2442,r13		! source line 2442
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
	.word	_Label_2868
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2869
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2870
	.word	12
	.word	4
	.word	_Label_2871
	.word	-12
	.word	4
	.word	_Label_2872
	.word	-16
	.word	4
	.word	_Label_2873
	.word	-20
	.word	4
	.word	_Label_2874
	.word	-24
	.word	4
	.word	_Label_2875
	.word	-28
	.word	4
	.word	_Label_2876
	.word	-32
	.word	4
	.word	_Label_2877
	.word	-36
	.word	4
	.word	_Label_2878
	.word	-40
	.word	4
	.word	_Label_2879
	.word	-44
	.word	4
	.word	_Label_2880
	.word	-48
	.word	4
	.word	_Label_2881
	.word	-52
	.word	4
	.word	_Label_2882
	.word	-56
	.word	4
	.word	_Label_2883
	.word	-60
	.word	4
	.word	_Label_2884
	.word	-64
	.word	4
	.word	_Label_2885
	.word	-68
	.word	4
	.word	_Label_2886
	.word	-72
	.word	4
	.word	_Label_2887
	.word	-76
	.word	4
	.word	_Label_2888
	.word	-80
	.word	4
	.word	_Label_2889
	.word	-84
	.word	4
	.word	_Label_2890
	.word	-88
	.word	4
	.word	_Label_2891
	.word	-92
	.word	4
	.word	_Label_2892
	.word	-96
	.word	4
	.word	_Label_2893
	.word	-100
	.word	4
	.word	_Label_2894
	.word	-104
	.word	4
	.word	0
_Label_2868:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2869:
	.ascii	"Pself\0"
	.align
_Label_2870:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2894:
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
_Label_3473:
	push	r0
	sub	r1,1,r1
	bne	_Label_3473
	mov	2447,r13		! source line 2447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2452,r13		! source line 2452
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2898 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2897 = *_temp_2898  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2897) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2899 = _temp_2897 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2899 ) then goto _Label_2896		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2896
!	jmp	_Label_2895
_Label_2895:
! THEN...
	mov	2453,r13		! source line 2453
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2904 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2903 = *_temp_2904  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2903) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2905 = _temp_2903 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2902 = *_temp_2905  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2902 >= 0 then goto _Label_2901		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2901
!	jmp	_Label_2900
_Label_2900:
! THEN...
	mov	2454,r13		! source line 2454
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2906 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2906  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2454,r13		! source line 2454
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2901:
! ASSIGNMENT STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2908 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2907 = *_temp_2908  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2907) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2909 = _temp_2907 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2909 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2913 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2912 = *_temp_2913  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2912) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2914 = _temp_2912 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2911 = *_temp_2914  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2917 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2916 = *_temp_2917  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2916) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2918 = _temp_2916 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2915 = *_temp_2918  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2910 = _temp_2911 + _temp_2915		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2921 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2920 = *_temp_2921  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2920) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2922 = _temp_2920 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2919 = *_temp_2922  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2923 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2910  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2919  sizeInBytes=4
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
_Label_2896:
! RETURN STATEMENT...
	mov	2452,r13		! source line 2452
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
	.word	_Label_2924
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2925
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2926
	.word	12
	.word	4
	.word	_Label_2927
	.word	-12
	.word	4
	.word	_Label_2928
	.word	-16
	.word	4
	.word	_Label_2929
	.word	-20
	.word	4
	.word	_Label_2930
	.word	-24
	.word	4
	.word	_Label_2931
	.word	-28
	.word	4
	.word	_Label_2932
	.word	-32
	.word	4
	.word	_Label_2933
	.word	-36
	.word	4
	.word	_Label_2934
	.word	-40
	.word	4
	.word	_Label_2935
	.word	-44
	.word	4
	.word	_Label_2936
	.word	-48
	.word	4
	.word	_Label_2937
	.word	-52
	.word	4
	.word	_Label_2938
	.word	-56
	.word	4
	.word	_Label_2939
	.word	-60
	.word	4
	.word	_Label_2940
	.word	-64
	.word	4
	.word	_Label_2941
	.word	-68
	.word	4
	.word	_Label_2942
	.word	-72
	.word	4
	.word	_Label_2943
	.word	-76
	.word	4
	.word	_Label_2944
	.word	-80
	.word	4
	.word	_Label_2945
	.word	-84
	.word	4
	.word	_Label_2946
	.word	-88
	.word	4
	.word	_Label_2947
	.word	-92
	.word	4
	.word	_Label_2948
	.word	-96
	.word	4
	.word	_Label_2949
	.word	-100
	.word	4
	.word	_Label_2950
	.word	-104
	.word	4
	.word	_Label_2951
	.word	-108
	.word	4
	.word	0
_Label_2924:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2925:
	.ascii	"Pself\0"
	.align
_Label_2926:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2897\0"
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
_Label_3474:
	push	r0
	sub	r1,1,r1
	bne	_Label_3474
	mov	2466,r13		! source line 2466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0SE",r10
!   _temp_2952 = &fileManagerLock
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
	mov	2482,r13		! source line 2482
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2958		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2958
!   _temp_2957 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2959
_Label_2958:
!   _temp_2957 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2959:
!   if _temp_2957 then goto _Label_2956 else goto _Label_2953
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2953
	jmp	_Label_2956
_Label_2956:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2962 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2961 = *_temp_2962  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2961 == 0 then goto _Label_2963		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2963
!   _temp_2960 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2964
_Label_2963:
!   _temp_2960 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2964:
!   if _temp_2960 then goto _Label_2955 else goto _Label_2953
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2953
	jmp	_Label_2955
_Label_2955:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2967 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2966 = *_temp_2967  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2966) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2968 = _temp_2966 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2965 = *_temp_2968  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2965 >= 0 then goto _Label_2954		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2954
!	jmp	_Label_2953
_Label_2953:
! THEN...
	mov	2483,r13		! source line 2483
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2969 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2969  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2483,r13		! source line 2483
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2954:
! ASSIGNMENT STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2970 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2970  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0WH",r10
_Label_2971:
!   if numBytes <= 0 then goto _Label_2973		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2973
!	jmp	_Label_2972
_Label_2972:
	mov	2486,r13		! source line 2486
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2495,r13		! source line 2495
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
	mov	2496,r13		! source line 2496
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
	mov	2500,r13		! source line 2500
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2977 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2976 = *_temp_2977  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2976 == sector then goto _Label_2975		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2975
!	jmp	_Label_2974
_Label_2974:
! THEN...
	mov	2501,r13		! source line 2501
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2978) then goto _runtimeErrorNullPointer
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
	mov	2503,r13		! source line 2503
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2981 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2980 = *_temp_2981  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2979 = sector + _temp_2980		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2983 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2982 = *_temp_2983  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2984 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2979  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2982  sizeInBytes=4
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
	mov	2506,r13		! source line 2506
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2985 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2985 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2986 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2986 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2975:
! ASSIGNMENT STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2988 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2987 = *_temp_2988  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2987 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0AS",r10
!   _temp_2989 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2989  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2510,r13		! source line 2510
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
	mov	2514,r13		! source line 2514
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2971
_Label_2973:
! SEND STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0SE",r10
!   _temp_2990 = &fileManagerLock
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
	mov	2525,r13		! source line 2525
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
	.word	_Label_2991
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2992
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2993
	.word	12
	.word	4
	.word	_Label_2994
	.word	16
	.word	4
	.word	_Label_2995
	.word	20
	.word	4
	.word	_Label_2996
	.word	24
	.word	4
	.word	_Label_2997
	.word	-16
	.word	4
	.word	_Label_2998
	.word	-20
	.word	4
	.word	_Label_2999
	.word	-24
	.word	4
	.word	_Label_3000
	.word	-28
	.word	4
	.word	_Label_3001
	.word	-32
	.word	4
	.word	_Label_3002
	.word	-36
	.word	4
	.word	_Label_3003
	.word	-40
	.word	4
	.word	_Label_3004
	.word	-44
	.word	4
	.word	_Label_3005
	.word	-48
	.word	4
	.word	_Label_3006
	.word	-52
	.word	4
	.word	_Label_3007
	.word	-56
	.word	4
	.word	_Label_3008
	.word	-60
	.word	4
	.word	_Label_3009
	.word	-64
	.word	4
	.word	_Label_3010
	.word	-68
	.word	4
	.word	_Label_3011
	.word	-72
	.word	4
	.word	_Label_3012
	.word	-76
	.word	4
	.word	_Label_3013
	.word	-80
	.word	4
	.word	_Label_3014
	.word	-84
	.word	4
	.word	_Label_3015
	.word	-88
	.word	4
	.word	_Label_3016
	.word	-92
	.word	4
	.word	_Label_3017
	.word	-96
	.word	4
	.word	_Label_3018
	.word	-100
	.word	4
	.word	_Label_3019
	.word	-104
	.word	4
	.word	_Label_3020
	.word	-9
	.word	1
	.word	_Label_3021
	.word	-10
	.word	1
	.word	_Label_3022
	.word	-108
	.word	4
	.word	_Label_3023
	.word	-112
	.word	4
	.word	_Label_3024
	.word	-116
	.word	4
	.word	_Label_3025
	.word	-120
	.word	4
	.word	_Label_3026
	.word	-124
	.word	4
	.word	_Label_3027
	.word	-128
	.word	4
	.word	0
_Label_2991:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2992:
	.ascii	"Pself\0"
	.align
_Label_2993:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2994:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2995:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2996:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2987\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_2962\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_3020:
	.byte	'C'
	.ascii	"_temp_2960\0"
	.align
_Label_3021:
	.byte	'C'
	.ascii	"_temp_2957\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_3023:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3024:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3025:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3026:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3027:
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
_Label_3475:
	push	r0
	sub	r1,1,r1
	bne	_Label_3475
	mov	2530,r13		! source line 2530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0SE",r10
!   _temp_3028 = &fileManagerLock
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
	mov	2547,r13		! source line 2547
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3034		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3034
!   _temp_3033 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3035
_Label_3034:
!   _temp_3033 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3035:
!   if _temp_3033 then goto _Label_3032 else goto _Label_3029
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3029
	jmp	_Label_3032
_Label_3032:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3038 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3037 = *_temp_3038  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3037 == 0 then goto _Label_3039		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3039
!   _temp_3036 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3040
_Label_3039:
!   _temp_3036 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3040:
!   if _temp_3036 then goto _Label_3031 else goto _Label_3029
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3029
	jmp	_Label_3031
_Label_3031:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3043 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3042 = *_temp_3043  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3042) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3044 = _temp_3042 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3041 = *_temp_3044  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3041 >= 0 then goto _Label_3030		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3030
!	jmp	_Label_3029
_Label_3029:
! THEN...
	mov	2548,r13		! source line 2548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3045 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3045  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2548,r13		! source line 2548
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3030:
! ASSIGNMENT STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3046 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3046  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0WH",r10
_Label_3047:
!   if numBytes <= 0 then goto _Label_3049		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3049
!	jmp	_Label_3048
_Label_3048:
	mov	2551,r13		! source line 2551
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2560,r13		! source line 2560
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
	mov	2561,r13		! source line 2561
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
	mov	2565,r13		! source line 2565
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3053 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3052 = *_temp_3053  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3052 == sector then goto _Label_3051		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3051
!	jmp	_Label_3050
_Label_3050:
! THEN...
	mov	2567,r13		! source line 2567
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3054) then goto _runtimeErrorNullPointer
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
_Label_3051:
! ASSIGNMENT STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3056 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3055 = *_temp_3056  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3055 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0AS",r10
!   _temp_3057 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3057  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2570,r13		! source line 2570
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2571,r13		! source line 2571
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3061 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3060 = *_temp_3061  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3060 != sector then goto _Label_3059		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3059
!	jmp	_Label_3058
_Label_3058:
	jmp	_Label_3062
_Label_3059:
! ELSE...
	mov	2573,r13		! source line 2573
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3065
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3065
	jmp	_Label_3064
_Label_3065:
!   if bytesToMove != 8192 then goto _Label_3064		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3064
!	jmp	_Label_3063
_Label_3063:
	jmp	_Label_3066
_Label_3064:
! ELSE...
	mov	2577,r13		! source line 2577
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3069 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3068 = *_temp_3069  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3067 = sector + _temp_3068		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3071 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3070 = *_temp_3071  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3072 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3067  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3070  sizeInBytes=4
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
_Label_3066:
! END IF...
_Label_3062:
! ASSIGNMENT STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3073 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3073 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2582,r13		! source line 2582
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3074 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3074 = 1  (sizeInBytes=1)
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
	mov	2586,r13		! source line 2586
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3047
_Label_3049:
! SEND STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0SE",r10
!   _temp_3075 = &fileManagerLock
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
	mov	2598,r13		! source line 2598
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
	.word	_Label_3076
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3077
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3078
	.word	12
	.word	4
	.word	_Label_3079
	.word	16
	.word	4
	.word	_Label_3080
	.word	20
	.word	4
	.word	_Label_3081
	.word	24
	.word	4
	.word	_Label_3082
	.word	-16
	.word	4
	.word	_Label_3083
	.word	-20
	.word	4
	.word	_Label_3084
	.word	-24
	.word	4
	.word	_Label_3085
	.word	-28
	.word	4
	.word	_Label_3086
	.word	-32
	.word	4
	.word	_Label_3087
	.word	-36
	.word	4
	.word	_Label_3088
	.word	-40
	.word	4
	.word	_Label_3089
	.word	-44
	.word	4
	.word	_Label_3090
	.word	-48
	.word	4
	.word	_Label_3091
	.word	-52
	.word	4
	.word	_Label_3092
	.word	-56
	.word	4
	.word	_Label_3093
	.word	-60
	.word	4
	.word	_Label_3094
	.word	-64
	.word	4
	.word	_Label_3095
	.word	-68
	.word	4
	.word	_Label_3096
	.word	-72
	.word	4
	.word	_Label_3097
	.word	-76
	.word	4
	.word	_Label_3098
	.word	-80
	.word	4
	.word	_Label_3099
	.word	-84
	.word	4
	.word	_Label_3100
	.word	-88
	.word	4
	.word	_Label_3101
	.word	-92
	.word	4
	.word	_Label_3102
	.word	-96
	.word	4
	.word	_Label_3103
	.word	-100
	.word	4
	.word	_Label_3104
	.word	-104
	.word	4
	.word	_Label_3105
	.word	-108
	.word	4
	.word	_Label_3106
	.word	-112
	.word	4
	.word	_Label_3107
	.word	-9
	.word	1
	.word	_Label_3108
	.word	-10
	.word	1
	.word	_Label_3109
	.word	-116
	.word	4
	.word	_Label_3110
	.word	-120
	.word	4
	.word	_Label_3111
	.word	-124
	.word	4
	.word	_Label_3112
	.word	-128
	.word	4
	.word	_Label_3113
	.word	-132
	.word	4
	.word	_Label_3114
	.word	-136
	.word	4
	.word	0
_Label_3076:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3077:
	.ascii	"Pself\0"
	.align
_Label_3078:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3079:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3080:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3081:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3085:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3086:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3087:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3088:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3089:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3090:
	.byte	'?'
	.ascii	"_temp_3067\0"
	.align
_Label_3091:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3052\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3107:
	.byte	'C'
	.ascii	"_temp_3036\0"
	.align
_Label_3108:
	.byte	'C'
	.ascii	"_temp_3033\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3110:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3111:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3112:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3113:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3114:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3115
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3115:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3116
	.word	_sourceFileName
	.word	358		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3116:
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
_Label_3476:
	push	r0
	sub	r1,1,r1
	bne	_Label_3476
	mov	2634,r13		! source line 2634
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2635,r13		! source line 2635
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
	mov	2636,r13		! source line 2636
	mov	"\0\0SE",r10
!   _temp_3117 = &_P_Kernel_frameManager
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
	mov	2637,r13		! source line 2637
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2639,r13		! source line 2639
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
	.word	_Label_3118
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3119
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3120
	.word	-12
	.word	4
	.word	0
_Label_3118:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3119:
	.ascii	"Pself\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3117\0"
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
_Label_3477:
	push	r0
	sub	r1,1,r1
	bne	_Label_3477
	mov	2644,r13		! source line 2644
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3121 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3121  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2645,r13		! source line 2645
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2646,r13		! source line 2646
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3122 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3122  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2647,r13		! source line 2647
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2648,r13		! source line 2648
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3123 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3123  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2649,r13		! source line 2649
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2650,r13		! source line 2650
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3124 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3124  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2651,r13		! source line 2651
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2652,r13		! source line 2652
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3125 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3125  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2653,r13		! source line 2653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2654,r13		! source line 2654
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3126 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3126  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2655,r13		! source line 2655
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2656,r13		! source line 2656
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2657,r13		! source line 2657
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2657,r13		! source line 2657
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
	.word	_Label_3127
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3128
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3129
	.word	-12
	.word	4
	.word	_Label_3130
	.word	-16
	.word	4
	.word	_Label_3131
	.word	-20
	.word	4
	.word	_Label_3132
	.word	-24
	.word	4
	.word	_Label_3133
	.word	-28
	.word	4
	.word	_Label_3134
	.word	-32
	.word	4
	.word	0
_Label_3127:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3128:
	.ascii	"Pself\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3135
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3135:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3136
	.word	_sourceFileName
	.word	375		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3136:
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
_Label_3478:
	push	r0
	sub	r1,1,r1
	bne	_Label_3478
	mov	2668,r13		! source line 2668
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3137 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3137  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2669,r13		! source line 2669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2670,r13		! source line 2670
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3138 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3138  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2671,r13		! source line 2671
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3140		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3140
!	jmp	_Label_3139
_Label_3139:
! THEN...
	mov	2673,r13		! source line 2673
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2673,r13		! source line 2673
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
	jmp	_Label_3141
_Label_3140:
! ELSE...
	mov	2675,r13		! source line 2675
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3142 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3142  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2675,r13		! source line 2675
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3141:
! RETURN STATEMENT...
	mov	2672,r13		! source line 2672
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
	.word	_Label_3143
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3144
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3145
	.word	-12
	.word	4
	.word	_Label_3146
	.word	-16
	.word	4
	.word	_Label_3147
	.word	-20
	.word	4
	.word	0
_Label_3143:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3144:
	.ascii	"Pself\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3137\0"
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
_Label_3479:
	push	r0
	sub	r1,1,r1
	bne	_Label_3479
	mov	2681,r13		! source line 2681
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2691,r13		! source line 2691
	mov	"\0\0SE",r10
!   _temp_3148 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3149 = _temp_3148 + 4
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
	mov	2692,r13		! source line 2692
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2693,r13		! source line 2693
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
	mov	2694,r13		! source line 2694
	mov	"\0\0SE",r10
!   _temp_3150 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3151 = _temp_3150 + 4
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
	mov	2695,r13		! source line 2695
	mov	"\0\0RE",r10
	mov	2695,r13		! source line 2695
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3154 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3153  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3152  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3152  (sizeInBytes=1)
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
	.word	_Label_3155
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3156
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3157
	.word	12
	.word	4
	.word	_Label_3158
	.word	16
	.word	4
	.word	_Label_3159
	.word	-16
	.word	4
	.word	_Label_3160
	.word	-20
	.word	4
	.word	_Label_3161
	.word	-9
	.word	1
	.word	_Label_3162
	.word	-24
	.word	4
	.word	_Label_3163
	.word	-28
	.word	4
	.word	_Label_3164
	.word	-32
	.word	4
	.word	_Label_3165
	.word	-36
	.word	4
	.word	_Label_3166
	.word	-40
	.word	4
	.word	0
_Label_3155:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3156:
	.ascii	"Pself\0"
	.align
_Label_3157:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3158:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3161:
	.byte	'C'
	.ascii	"_temp_3152\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3151\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3149\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3148\0"
	.align
_Label_3166:
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
_Label_3480:
	push	r0
	sub	r1,1,r1
	bne	_Label_3480
	mov	2700,r13		! source line 2700
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2705,r13		! source line 2705
	mov	"\0\0IF",r10
	mov	2705,r13		! source line 2705
	mov	"\0\0SE",r10
!   _temp_3170 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3171) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3170  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3169  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3169 then goto _Label_3168 else goto _Label_3167
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3167
	jmp	_Label_3168
_Label_3167:
! THEN...
	mov	2706,r13		! source line 2706
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3172 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3172  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2706,r13		! source line 2706
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3168:
! RETURN STATEMENT...
	mov	2708,r13		! source line 2708
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
	.word	_Label_3173
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3174
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3175
	.word	-16
	.word	4
	.word	_Label_3176
	.word	-20
	.word	4
	.word	_Label_3177
	.word	-24
	.word	4
	.word	_Label_3178
	.word	-9
	.word	1
	.word	_Label_3179
	.word	-28
	.word	4
	.word	0
_Label_3173:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3174:
	.ascii	"Pself\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3170\0"
	.align
_Label_3178:
	.byte	'C'
	.ascii	"_temp_3169\0"
	.align
_Label_3179:
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
_Label_3481:
	push	r0
	sub	r1,1,r1
	bne	_Label_3481
	mov	2713,r13		! source line 2713
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3183 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3182 = *_temp_3183  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3182) then goto _Label_3181
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3181
!	jmp	_Label_3180
_Label_3180:
! THEN...
	mov	2740,r13		! source line 2740
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3184 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3184  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2740,r13		! source line 2740
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3181:
! IF STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0IF",r10
	mov	2744,r13		! source line 2744
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3188) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3187  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3187 == 1112300152 then goto _Label_3186		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3186
!	jmp	_Label_3185
_Label_3185:
! THEN...
	mov	2745,r13		! source line 2745
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3189 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3189  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2745,r13		! source line 2745
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2746,r13		! source line 2746
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3186:
! ASSIGNMENT STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0AS",r10
	mov	2750,r13		! source line 2750
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3190) then goto _runtimeErrorNullPointer
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
	mov	2751,r13		! source line 2751
	mov	"\0\0AS",r10
	mov	2751,r13		! source line 2751
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3191) then goto _runtimeErrorNullPointer
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
	mov	2752,r13		! source line 2752
	mov	"\0\0AS",r10
	mov	2752,r13		! source line 2752
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3192) then goto _runtimeErrorNullPointer
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
	mov	2753,r13		! source line 2753
	mov	"\0\0AS",r10
	mov	2753,r13		! source line 2753
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3193) then goto _runtimeErrorNullPointer
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
	mov	2754,r13		! source line 2754
	mov	"\0\0AS",r10
	mov	2754,r13		! source line 2754
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3194) then goto _runtimeErrorNullPointer
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
	mov	2755,r13		! source line 2755
	mov	"\0\0AS",r10
	mov	2755,r13		! source line 2755
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3195) then goto _runtimeErrorNullPointer
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
	mov	2758,r13		! source line 2758
	mov	"\0\0IF",r10
!   _temp_3198 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3198) then goto _Label_3197
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3197
!	jmp	_Label_3196
_Label_3196:
! THEN...
	mov	2759,r13		! source line 2759
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3199 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3199  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2759,r13		! source line 2759
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2760,r13		! source line 2760
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3197:
! ASSIGNMENT STATEMENT...
	mov	2762,r13		! source line 2762
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
	mov	2766,r13		! source line 2766
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3201
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3201
!	jmp	_Label_3200
_Label_3200:
! THEN...
	mov	2767,r13		! source line 2767
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3202 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3202  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2767,r13		! source line 2767
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3201:
! IF STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0IF",r10
!   _temp_3205 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3205) then goto _Label_3204
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3204
!	jmp	_Label_3203
_Label_3203:
! THEN...
	mov	2773,r13		! source line 2773
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3206 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3206  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2773,r13		! source line 2773
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3204:
! IF STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0IF",r10
!   _temp_3209 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3209 then goto _Label_3208		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3208
!	jmp	_Label_3207
_Label_3207:
! THEN...
	mov	2777,r13		! source line 2777
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3210 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3210  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2777,r13		! source line 2777
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3208:
! ASSIGNMENT STATEMENT...
	mov	2780,r13		! source line 2780
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
	mov	2783,r13		! source line 2783
	mov	"\0\0IF",r10
!   _temp_3213 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3213) then goto _Label_3212
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3212
!	jmp	_Label_3211
_Label_3211:
! THEN...
	mov	2784,r13		! source line 2784
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3214 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3214  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2784,r13		! source line 2784
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3212:
! IF STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0IF",r10
!   _temp_3217 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3217 then goto _Label_3216		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3216
!	jmp	_Label_3215
_Label_3215:
! THEN...
	mov	2788,r13		! source line 2788
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3218 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3218  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2788,r13		! source line 2788
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2789,r13		! source line 2789
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3216:
! ASSIGNMENT STATEMENT...
	mov	2791,r13		! source line 2791
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
	mov	2794,r13		! source line 2794
	mov	"\0\0AS",r10
!   _temp_3221 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3220 = _temp_3221 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3219 = _temp_3220 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3219 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3223		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3223
!	jmp	_Label_3222
_Label_3222:
! THEN...
	mov	2810,r13		! source line 2810
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3224 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3224  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2810,r13		! source line 2810
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3225 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3225  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2811,r13		! source line 2811
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3226 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3226  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2812,r13		! source line 2812
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2813,r13		! source line 2813
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3223:
! SEND STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0SE",r10
!   _temp_3227 = &_P_Kernel_frameManager
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
	mov	2821,r13		! source line 2821
	mov	"\0\0IF",r10
	mov	2821,r13		! source line 2821
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3231) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3230  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3230 == 707406378 then goto _Label_3229		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3229
!	jmp	_Label_3228
_Label_3228:
! THEN...
	mov	2822,r13		! source line 2822
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3232 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3232  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2822,r13		! source line 2822
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0SE",r10
!   _temp_3233 = &_P_Kernel_frameManager
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
	mov	2824,r13		! source line 2824
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3229:
! ASSIGNMENT STATEMENT...
	mov	2828,r13		! source line 2828
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
	mov	2829,r13		! source line 2829
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3238 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3239 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3238  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3234:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3239 then goto _Label_3237		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3237
_Label_3235:
	mov	2829,r13		! source line 2829
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0AS",r10
	mov	2830,r13		! source line 2830
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
	mov	2833,r13		! source line 2833
	mov	"\0\0IF",r10
	mov	2833,r13		! source line 2833
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3243) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3242  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3242 then goto _Label_3241 else goto _Label_3240
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3240
	jmp	_Label_3241
_Label_3240:
! THEN...
	mov	2834,r13		! source line 2834
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3244 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3244  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2834,r13		! source line 2834
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0SE",r10
!   _temp_3245 = &_P_Kernel_frameManager
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
	mov	2836,r13		! source line 2836
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3241:
! SEND STATEMENT...
	mov	2838,r13		! source line 2838
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
	mov	2839,r13		! source line 2839
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3236:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3234
! END FOR
_Label_3237:
! IF STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0IF",r10
	mov	2843,r13		! source line 2843
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3249) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3248  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3248 == 707406378 then goto _Label_3247		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3247
!	jmp	_Label_3246
_Label_3246:
! THEN...
	mov	2844,r13		! source line 2844
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3250 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3250  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2844,r13		! source line 2844
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2845,r13		! source line 2845
	mov	"\0\0SE",r10
!   _temp_3251 = &_P_Kernel_frameManager
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
	mov	2846,r13		! source line 2846
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3247:
! FOR STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3256 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3257 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3256  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3252:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3257 then goto _Label_3255		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3255
_Label_3253:
	mov	2850,r13		! source line 2850
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0AS",r10
	mov	2851,r13		! source line 2851
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
	mov	2854,r13		! source line 2854
	mov	"\0\0IF",r10
	mov	2854,r13		! source line 2854
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3261) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3260  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3260 then goto _Label_3259 else goto _Label_3258
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3258
	jmp	_Label_3259
_Label_3258:
! THEN...
	mov	2855,r13		! source line 2855
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3262 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3262  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2855,r13		! source line 2855
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2856,r13		! source line 2856
	mov	"\0\0SE",r10
!   _temp_3263 = &_P_Kernel_frameManager
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
	mov	2857,r13		! source line 2857
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3259:
! ASSIGNMENT STATEMENT...
	mov	2859,r13		! source line 2859
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3254:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3252
! END FOR
_Label_3255:
! IF STATEMENT...
	mov	2863,r13		! source line 2863
	mov	"\0\0IF",r10
	mov	2863,r13		! source line 2863
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3267) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3266  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3266 == 707406378 then goto _Label_3265		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3265
!	jmp	_Label_3264
_Label_3264:
! THEN...
	mov	2864,r13		! source line 2864
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3268 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3268  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2864,r13		! source line 2864
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0SE",r10
!   _temp_3269 = &_P_Kernel_frameManager
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
	mov	2866,r13		! source line 2866
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3265:
! ASSIGNMENT STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0AS",r10
	mov	2870,r13		! source line 2870
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
	mov	2874,r13		! source line 2874
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2877,r13		! source line 2877
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
	.word	_Label_3270
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3271
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3272
	.word	12
	.word	4
	.word	_Label_3273
	.word	-16
	.word	4
	.word	_Label_3274
	.word	-20
	.word	4
	.word	_Label_3275
	.word	-24
	.word	4
	.word	_Label_3276
	.word	-28
	.word	4
	.word	_Label_3277
	.word	-32
	.word	4
	.word	_Label_3278
	.word	-36
	.word	4
	.word	_Label_3279
	.word	-40
	.word	4
	.word	_Label_3280
	.word	-9
	.word	1
	.word	_Label_3281
	.word	-44
	.word	4
	.word	_Label_3282
	.word	-48
	.word	4
	.word	_Label_3283
	.word	-52
	.word	4
	.word	_Label_3284
	.word	-56
	.word	4
	.word	_Label_3285
	.word	-60
	.word	4
	.word	_Label_3286
	.word	-64
	.word	4
	.word	_Label_3287
	.word	-68
	.word	4
	.word	_Label_3288
	.word	-72
	.word	4
	.word	_Label_3289
	.word	-76
	.word	4
	.word	_Label_3290
	.word	-10
	.word	1
	.word	_Label_3291
	.word	-80
	.word	4
	.word	_Label_3292
	.word	-84
	.word	4
	.word	_Label_3293
	.word	-88
	.word	4
	.word	_Label_3294
	.word	-92
	.word	4
	.word	_Label_3295
	.word	-96
	.word	4
	.word	_Label_3296
	.word	-100
	.word	4
	.word	_Label_3297
	.word	-104
	.word	4
	.word	_Label_3298
	.word	-108
	.word	4
	.word	_Label_3299
	.word	-112
	.word	4
	.word	_Label_3300
	.word	-116
	.word	4
	.word	_Label_3301
	.word	-120
	.word	4
	.word	_Label_3302
	.word	-124
	.word	4
	.word	_Label_3303
	.word	-128
	.word	4
	.word	_Label_3304
	.word	-132
	.word	4
	.word	_Label_3305
	.word	-136
	.word	4
	.word	_Label_3306
	.word	-140
	.word	4
	.word	_Label_3307
	.word	-144
	.word	4
	.word	_Label_3308
	.word	-148
	.word	4
	.word	_Label_3309
	.word	-152
	.word	4
	.word	_Label_3310
	.word	-156
	.word	4
	.word	_Label_3311
	.word	-160
	.word	4
	.word	_Label_3312
	.word	-164
	.word	4
	.word	_Label_3313
	.word	-168
	.word	4
	.word	_Label_3314
	.word	-172
	.word	4
	.word	_Label_3315
	.word	-176
	.word	4
	.word	_Label_3316
	.word	-180
	.word	4
	.word	_Label_3317
	.word	-184
	.word	4
	.word	_Label_3318
	.word	-188
	.word	4
	.word	_Label_3319
	.word	-192
	.word	4
	.word	_Label_3320
	.word	-196
	.word	4
	.word	_Label_3321
	.word	-200
	.word	4
	.word	_Label_3322
	.word	-204
	.word	4
	.word	_Label_3323
	.word	-208
	.word	4
	.word	_Label_3324
	.word	-212
	.word	4
	.word	_Label_3325
	.word	-216
	.word	4
	.word	_Label_3326
	.word	-220
	.word	4
	.word	_Label_3327
	.word	-224
	.word	4
	.word	_Label_3328
	.word	-228
	.word	4
	.word	_Label_3329
	.word	-232
	.word	4
	.word	_Label_3330
	.word	-236
	.word	4
	.word	_Label_3331
	.word	-240
	.word	4
	.word	_Label_3332
	.word	-244
	.word	4
	.word	_Label_3333
	.word	-248
	.word	4
	.word	_Label_3334
	.word	-252
	.word	4
	.word	_Label_3335
	.word	-256
	.word	4
	.word	_Label_3336
	.word	-260
	.word	4
	.word	_Label_3337
	.word	-264
	.word	4
	.word	_Label_3338
	.word	-268
	.word	4
	.word	0
_Label_3270:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3271:
	.ascii	"Pself\0"
	.align
_Label_3272:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3269\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3268\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3262\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3280:
	.byte	'C'
	.ascii	"_temp_3260\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3256\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3284:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3249\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3287:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3290:
	.byte	'C'
	.ascii	"_temp_3242\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3292:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3293:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3294:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3295:
	.byte	'?'
	.ascii	"_temp_3231\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3298:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3299:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3300:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3301:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3302:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3303:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3198\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3192\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3327:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3328:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3329:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3330:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3331:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3332:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3333:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3334:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3335:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3336:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3337:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3338:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align

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
! The following class and its methods are from this package
	.export	_P_Kernel_SerialDriver
	.export	_Method_P_Kernel_SerialDriver_1
	.export	_Method_P_Kernel_SerialDriver_2
	.export	_Method_P_Kernel_SerialDriver_3
	.export	_Method_P_Kernel_SerialDriver_4
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
	.export	_P_Kernel_serialDriver
	.export	_P_Kernel_fileManager
	.export	_P_Kernel_serialHasBeenInitialized
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
_P_Kernel_serialDriver:
	.skip	4308
_P_Kernel_fileManager:
	.skip	800
_P_Kernel_serialHasBeenInitialized:
	.skip	1
	.align
! String constants
_StringConst_189:
	.word	16			! length
	.ascii	"\' was ignored. \n"
	.align
_StringConst_188:
	.word	43			! length
	.ascii	"\n Serial input buffer overrun - character \'"
	.align
_StringConst_187:
	.word	21			! length
	.ascii	"serial-handler-thread"
	.align
_StringConst_186:
	.word	30			! length
	.ascii	"Initializing Serial Driver...\n"
	.align
_StringConst_185:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_184:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_183:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_182:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_181:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_180:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_179:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_178:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_177:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_176:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_175:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_174:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_173:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_172:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_171:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_170:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_169:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_168:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_167:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_166:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_165:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_164:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_163:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_162:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_161:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_160:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_159:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_158:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_157:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_156:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_155:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_154:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_153:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_152:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_151:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_150:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_149:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_148:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_147:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_146:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_145:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_144:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_143:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_142:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_141:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_140:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_139:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_138:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_137:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_136:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_135:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_134:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_133:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_132:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_131:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_130:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_129:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_126:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_123:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_120:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_119:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_118:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_117:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_116:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_115:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_114:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_113:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_112:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_111:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_110:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_109:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_108:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_107:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_106:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_105:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_104:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_103:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
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
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_99:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_98:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_97:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_96:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_95:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_94:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_93:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_92:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_91:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_90:
	.word	22			! length
	.ascii	"    File Descriptors:\n"
	.align
_StringConst_89:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_88:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_87:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_86:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_85:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_84:
	.word	14			! length
	.ascii	"ThreadNameHere"
	.align
_StringConst_83:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_82:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_81:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_80:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_79:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_78:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_77:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_76:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_74:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_73:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_72:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_71:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_70:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_69:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_68:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_67:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_66:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_65:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_64:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_63:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_62:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_61:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_60:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_59:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_58:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_57:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_56:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_55:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_54:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_53:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_52:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_51:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_50:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_49:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_48:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_47:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_46:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_45:
	.word	20			! length
	.ascii	"Becoming User Thread"
	.align
_StringConst_44:
	.word	12			! length
	.ascii	"TestProgram5"
	.align
_StringConst_43:
	.word	11			! length
	.ascii	"UserProgram"
	.align
_StringConst_42:
	.word	26			! length
	.ascii	"Loading initial program..."
	.align
_StringConst_41:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_40:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_39:
	.word	8			! length
	.ascii	"terminal"
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
	set	0x9daa48cd,r4		! myHashVal = -1649784627
	cmp	r3,r4
	be	_Label_199
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
_Label_199:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_200
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_200
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_200
_Label_200:
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
_Label_4404:
	push	r0
	sub	r1,1,r1
	bne	_Label_4404
	mov	8,r13		! source line 8
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_201 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_201  sizeInBytes=4
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
_Label_4405:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4405
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0SE",r10
!   _temp_205 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_206 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_205  sizeInBytes=4
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
!   _temp_207 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_208 = _temp_207 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_208 = 3  (sizeInBytes=4)
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
_Label_4406:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4406
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_210 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_211 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_210  sizeInBytes=4
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
!   _temp_212 = _function_198_IdleFunction
	set	_function_198_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_213 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_212  sizeInBytes=4
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
	.word	_Label_214
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_215
	.word	-12
	.word	4
	.word	_Label_216
	.word	-16
	.word	4
	.word	_Label_217
	.word	-20
	.word	4
	.word	_Label_218
	.word	-24
	.word	4
	.word	_Label_219
	.word	-28
	.word	4
	.word	_Label_220
	.word	-32
	.word	4
	.word	_Label_221
	.word	-36
	.word	4
	.word	_Label_222
	.word	-40
	.word	4
	.word	_Label_223
	.word	-44
	.word	4
	.word	_Label_224
	.word	-48
	.word	4
	.word	_Label_225
	.word	-52
	.word	4
	.word	_Label_226
	.word	-56
	.word	4
	.word	_Label_227
	.word	-60
	.word	4
	.word	0
_Label_214:
	.ascii	"InitializeScheduler\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_198_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_198_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_4407:
	push	r0
	sub	r1,1,r1
	bne	_Label_4407
	mov	33,r13		! source line 33
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0WH",r10
_Label_228:
!	jmp	_Label_229
_Label_229:
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
!   _temp_233 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_231 else goto _Label_232
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_232
	jmp	_Label_231
_Label_231:
! THEN...
	mov	46,r13		! source line 46
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_234
_Label_232:
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
_Label_234:
! END WHILE...
	jmp	_Label_228
_Label_230:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_198_IdleFunction:
	.word	_sourceFileName
	.word	_Label_235
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_236
	.word	8
	.word	4
	.word	_Label_237
	.word	-12
	.word	4
	.word	_Label_238
	.word	-16
	.word	4
	.word	0
_Label_235:
	.ascii	"IdleFunction\0"
	.align
_Label_236:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_238:
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
_Label_4408:
	push	r0
	sub	r1,1,r1
	bne	_Label_4408
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
!   _temp_241 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_241 ) then goto _Label_240		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_240
!	jmp	_Label_239
_Label_239:
! THEN...
	mov	72,r13		! source line 72
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_243 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_243 [0 ] into _temp_244
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
!   _temp_242 = _temp_244		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_242  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_240:
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
!   _temp_245 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_245 = 3  (sizeInBytes=4)
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
_Label_246:
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_250 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_249  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_249 then goto _Label_248 else goto _Label_247
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_247
	jmp	_Label_248
_Label_247:
	mov	85,r13		! source line 85
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0AS",r10
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_251 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_252 = &_P_Kernel_threadManager
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
	jmp	_Label_246
_Label_248:
! IF STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_255 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_255 ) then goto _Label_254		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_254
!	jmp	_Label_253
_Label_253:
! THEN...
	mov	91,r13		! source line 91
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_257 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_257 [0 ] into _temp_258
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
!   _temp_256 = _temp_258		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_256  sizeInBytes=4
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
!   _temp_260 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_259 = *_temp_260  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_259) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_261 = _temp_259 + 32
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
_Label_254:
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
	.word	_Label_262
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_263
	.word	8
	.word	4
	.word	_Label_264
	.word	-16
	.word	4
	.word	_Label_265
	.word	-20
	.word	4
	.word	_Label_266
	.word	-24
	.word	4
	.word	_Label_267
	.word	-28
	.word	4
	.word	_Label_268
	.word	-32
	.word	4
	.word	_Label_269
	.word	-36
	.word	4
	.word	_Label_270
	.word	-40
	.word	4
	.word	_Label_271
	.word	-44
	.word	4
	.word	_Label_272
	.word	-48
	.word	4
	.word	_Label_273
	.word	-52
	.word	4
	.word	_Label_274
	.word	-9
	.word	1
	.word	_Label_275
	.word	-56
	.word	4
	.word	_Label_276
	.word	-60
	.word	4
	.word	_Label_277
	.word	-64
	.word	4
	.word	_Label_278
	.word	-68
	.word	4
	.word	_Label_279
	.word	-72
	.word	4
	.word	_Label_280
	.word	-76
	.word	4
	.word	_Label_281
	.word	-80
	.word	4
	.word	0
_Label_262:
	.ascii	"Run\0"
	.align
_Label_263:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_274:
	.byte	'C'
	.ascii	"_temp_249\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_280:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_281:
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
_Label_4409:
	push	r0
	sub	r1,1,r1
	bne	_Label_4409
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
!   _temp_282 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_283 = _function_197_ThreadPrintShort
	set	_function_197_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_284 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_283  sizeInBytes=4
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
	.word	_Label_285
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_286
	.word	-12
	.word	4
	.word	_Label_287
	.word	-16
	.word	4
	.word	_Label_288
	.word	-20
	.word	4
	.word	_Label_289
	.word	-24
	.word	4
	.word	0
_Label_285:
	.ascii	"PrintReadyList\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_289:
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
_Label_4410:
	push	r0
	sub	r1,1,r1
	bne	_Label_4410
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
!   _temp_290 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_290  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_292 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_291 = *_temp_292  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_291  sizeInBytes=4
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
!   _temp_293 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_293  sizeInBytes=4
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
	.word	_Label_294
	.word	0		! total size of parameters
	.word	28		! frame size = 28
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
	.word	_Label_299
	.word	-28
	.word	4
	.word	_Label_300
	.word	-32
	.word	4
	.word	0
_Label_294:
	.ascii	"ThreadStartMain\0"
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
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_299:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_300:
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
_Label_4411:
	push	r0
	sub	r1,1,r1
	bne	_Label_4411
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
!   _temp_301 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_302 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_302  sizeInBytes=4
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
	.word	_Label_303
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_304
	.word	-12
	.word	4
	.word	_Label_305
	.word	-16
	.word	4
	.word	_Label_306
	.word	-20
	.word	4
	.word	0
_Label_303:
	.ascii	"ThreadFinish\0"
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
_Label_4412:
	push	r0
	sub	r1,1,r1
	bne	_Label_4412
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
!   _temp_307 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_307  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_309		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_309
!	jmp	_Label_308
_Label_308:
! THEN...
	mov	168,r13		! source line 168
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_310 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
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
!   _temp_312 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_311 = *_temp_312  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_309:
! CALL STATEMENT...
!   _temp_313 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
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
!   _temp_314 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_314  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_315 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
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
	.word	_Label_316
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_317
	.word	8
	.word	4
	.word	_Label_318
	.word	-12
	.word	4
	.word	_Label_319
	.word	-16
	.word	4
	.word	_Label_320
	.word	-20
	.word	4
	.word	_Label_321
	.word	-24
	.word	4
	.word	_Label_322
	.word	-28
	.word	4
	.word	_Label_323
	.word	-32
	.word	4
	.word	_Label_324
	.word	-36
	.word	4
	.word	_Label_325
	.word	-40
	.word	4
	.word	0
_Label_316:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_317:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_325:
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
_Label_4413:
	push	r0
	sub	r1,1,r1
	bne	_Label_4413
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
!   if newStatus != 1 then goto _Label_327		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_327
!	jmp	_Label_326
_Label_326:
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
	jmp	_Label_328
_Label_327:
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
_Label_328:
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
	.word	_Label_329
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_330
	.word	8
	.word	4
	.word	_Label_331
	.word	-12
	.word	4
	.word	0
_Label_329:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_330:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_331:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_197_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_197_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_4414:
	push	r0
	sub	r1,1,r1
	bne	_Label_4414
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
!   if t == 0 then goto _Label_335		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_335
!   _temp_334 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_336
_Label_335:
!   _temp_334 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_336:
!   if _temp_334 then goto _Label_333 else goto _Label_332
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_332
	jmp	_Label_333
_Label_332:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_337 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
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
_Label_333:
! CALL STATEMENT...
!   _temp_338 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
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
!   _temp_340 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_339 = *_temp_340  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_341 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
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
!   _temp_350 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_349 = *_temp_350  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_344
	cmp	r1,2
	be	_Label_345
	cmp	r1,3
	be	_Label_346
	cmp	r1,4
	be	_Label_347
	cmp	r1,5
	be	_Label_348
	jmp	_Label_342
! CASE 1...
_Label_344:
! CALL STATEMENT...
!   _temp_351 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_343
! CASE 2...
_Label_345:
! CALL STATEMENT...
!   _temp_352 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_343
! CASE 3...
_Label_346:
! CALL STATEMENT...
!   _temp_353 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_343
! CASE 4...
_Label_347:
! CALL STATEMENT...
!   _temp_354 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_343
! CASE 5...
_Label_348:
! CALL STATEMENT...
!   _temp_355 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_343
! DEFAULT CASE...
_Label_342:
! CALL STATEMENT...
!   _temp_356 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
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
_Label_343:
! CALL STATEMENT...
!   _temp_357 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_358 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_359 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
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
_RoutineDescriptor__function_197_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_360
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_361
	.word	8
	.word	4
	.word	_Label_362
	.word	-16
	.word	4
	.word	_Label_363
	.word	-20
	.word	4
	.word	_Label_364
	.word	-24
	.word	4
	.word	_Label_365
	.word	-28
	.word	4
	.word	_Label_366
	.word	-32
	.word	4
	.word	_Label_367
	.word	-36
	.word	4
	.word	_Label_368
	.word	-40
	.word	4
	.word	_Label_369
	.word	-44
	.word	4
	.word	_Label_370
	.word	-48
	.word	4
	.word	_Label_371
	.word	-52
	.word	4
	.word	_Label_372
	.word	-56
	.word	4
	.word	_Label_373
	.word	-60
	.word	4
	.word	_Label_374
	.word	-64
	.word	4
	.word	_Label_375
	.word	-68
	.word	4
	.word	_Label_376
	.word	-72
	.word	4
	.word	_Label_377
	.word	-76
	.word	4
	.word	_Label_378
	.word	-9
	.word	1
	.word	_Label_379
	.word	-80
	.word	4
	.word	0
_Label_360:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_361:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_378:
	.byte	'C'
	.ascii	"_temp_334\0"
	.align
_Label_379:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_196_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_196_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_4415:
	push	r0
	sub	r1,1,r1
	bne	_Label_4415
	mov	1029,r13		! source line 1029
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_380 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
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
_RoutineDescriptor__function_196_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_381
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_382
	.word	8
	.word	4
	.word	_Label_383
	.word	-12
	.word	4
	.word	0
_Label_381:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_382:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_380\0"
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
_Label_4416:
	push	r0
	sub	r1,1,r1
	bne	_Label_4416
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
!   _temp_385 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_384 = *_temp_385  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_384) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_386 = _temp_384 + 28
	load	[r14+-140],r1
	add	r1,28,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_386 = exitStatus  (sizeInBytes=4)
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
!   _temp_387 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_387 = 0  (sizeInBytes=1)
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
!   _temp_390 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: _temp_389 = *_temp_390  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_389) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_391 = _temp_389 + 32
	load	[r14+-120],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   _temp_388 = _temp_391		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_392 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_388  sizeInBytes=4
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
!   _temp_394 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_393 = *_temp_394  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   _temp_395 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_393  sizeInBytes=4
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
!   _temp_400 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_401 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_400  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-148]
_Label_396:
!   Perform the FOR-LOOP termination test
!   if i > _temp_401 then goto _Label_399		
	load	[r14+-148],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_399
_Label_397:
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
!   _temp_406 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_405 = *_temp_406  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_405) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_407 = _temp_405 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_407 [i ] into _temp_408
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
!   Data Move: _temp_404 = *_temp_408  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_404) then goto _Label_403
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_403
!	jmp	_Label_402
_Label_402:
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
!   _temp_411 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_410 = *_temp_411  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_410) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_412 = _temp_410 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_412 [i ] into _temp_413
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
!   Data Move: _temp_409 = *_temp_413  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_414 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_409  sizeInBytes=4
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
!   _temp_416 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_415 = *_temp_416  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_415) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_417 = _temp_415 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_417 [i ] into _temp_418
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
!   Data Move: *_temp_418 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! END IF...
_Label_403:
!   Increment the FOR-LOOP index variable and jump back
_Label_398:
!   i = i + 1
	load	[r14+-148],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
	jmp	_Label_396
! END FOR
_Label_399:
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
!   _temp_420 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_419 = *_temp_420  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_419) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_421 = _temp_419 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_421 = 0  (sizeInBytes=4)
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
!   _temp_422 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_422 = 0  (sizeInBytes=4)
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
	.word	_Label_423
	.word	4		! total size of parameters
	.word	148		! frame size = 148
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
	.word	_Label_431
	.word	-36
	.word	4
	.word	_Label_432
	.word	-40
	.word	4
	.word	_Label_433
	.word	-44
	.word	4
	.word	_Label_434
	.word	-48
	.word	4
	.word	_Label_435
	.word	-52
	.word	4
	.word	_Label_436
	.word	-56
	.word	4
	.word	_Label_437
	.word	-60
	.word	4
	.word	_Label_438
	.word	-64
	.word	4
	.word	_Label_439
	.word	-68
	.word	4
	.word	_Label_440
	.word	-72
	.word	4
	.word	_Label_441
	.word	-76
	.word	4
	.word	_Label_442
	.word	-80
	.word	4
	.word	_Label_443
	.word	-84
	.word	4
	.word	_Label_444
	.word	-88
	.word	4
	.word	_Label_445
	.word	-92
	.word	4
	.word	_Label_446
	.word	-96
	.word	4
	.word	_Label_447
	.word	-100
	.word	4
	.word	_Label_448
	.word	-104
	.word	4
	.word	_Label_449
	.word	-108
	.word	4
	.word	_Label_450
	.word	-112
	.word	4
	.word	_Label_451
	.word	-116
	.word	4
	.word	_Label_452
	.word	-120
	.word	4
	.word	_Label_453
	.word	-124
	.word	4
	.word	_Label_454
	.word	-128
	.word	4
	.word	_Label_455
	.word	-132
	.word	4
	.word	_Label_456
	.word	-136
	.word	4
	.word	_Label_457
	.word	-140
	.word	4
	.word	_Label_458
	.word	-144
	.word	4
	.word	_Label_459
	.word	-148
	.word	4
	.word	0
_Label_423:
	.ascii	"ProcessFinish\0"
	.align
_Label_424:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_458:
	.byte	'I'
	.ascii	"status\0"
	.align
_Label_459:
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
_Label_4417:
	push	r0
	sub	r1,1,r1
	bne	_Label_4417
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
	.word	_Label_460
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_460:
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
_Label_4418:
	push	r0
	sub	r1,1,r1
	bne	_Label_4418
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
!   _temp_464 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_465 = _temp_464 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_463 = *_temp_465  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_463 == 0 then goto _Label_462		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_462
!	jmp	_Label_461
_Label_461:
! THEN...
	mov	1583,r13		! source line 1583
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0SE",r10
!   _temp_467 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_468 = _temp_467 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_466 = *_temp_468  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_466) then goto _runtimeErrorNullPointer
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
_Label_462:
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
	.word	_Label_469
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_470
	.word	-12
	.word	4
	.word	_Label_471
	.word	-16
	.word	4
	.word	_Label_472
	.word	-20
	.word	4
	.word	_Label_473
	.word	-24
	.word	4
	.word	_Label_474
	.word	-28
	.word	4
	.word	_Label_475
	.word	-32
	.word	4
	.word	0
_Label_469:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_463\0"
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
	mov	3,r1
_Label_4419:
	push	r0
	sub	r1,1,r1
	bne	_Label_4419
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
! IF STATEMENT...
	mov	1602,r13		! source line 1602
	mov	"\0\0IF",r10
!   if _P_Kernel_serialHasBeenInitialized then goto _Label_476 else goto _Label_477
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_477
	jmp	_Label_476
_Label_476:
! THEN...
	mov	1603,r13		! source line 1603
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0SE",r10
!   _temp_478 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-16]
!   _temp_479 = _temp_478 + 124
	load	[r14+-16],r1
	add	r1,124,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_477:
! RETURN STATEMENT...
	mov	1602,r13		! source line 1602
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_480
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_481
	.word	-12
	.word	4
	.word	_Label_482
	.word	-16
	.word	4
	.word	0
_Label_480:
	.ascii	"SerialInterruptHandler\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_478\0"
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
_Label_4420:
	push	r0
	sub	r1,1,r1
	bne	_Label_4420
	mov	1609,r13		! source line 1609
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1615,r13		! source line 1615
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_483 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_483  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1616,r13		! source line 1616
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1616,r13		! source line 1616
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
	.word	_Label_484
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_485
	.word	-12
	.word	4
	.word	0
_Label_484:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_483\0"
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
_Label_4421:
	push	r0
	sub	r1,1,r1
	bne	_Label_4421
	mov	1621,r13		! source line 1621
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1627,r13		! source line 1627
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_486 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_486  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1628,r13		! source line 1628
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1628,r13		! source line 1628
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
	.word	_Label_487
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_488
	.word	-12
	.word	4
	.word	0
_Label_487:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_486\0"
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
_Label_4422:
	push	r0
	sub	r1,1,r1
	bne	_Label_4422
	mov	1633,r13		! source line 1633
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1639,r13		! source line 1639
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_489 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_489  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1640,r13		! source line 1640
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1640,r13		! source line 1640
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
	.word	_Label_490
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_491
	.word	-12
	.word	4
	.word	0
_Label_490:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_489\0"
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
_Label_4423:
	push	r0
	sub	r1,1,r1
	bne	_Label_4423
	mov	1645,r13		! source line 1645
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1651,r13		! source line 1651
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_492 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_492  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1652,r13		! source line 1652
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1652,r13		! source line 1652
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
	.word	_Label_493
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_494
	.word	-12
	.word	4
	.word	0
_Label_493:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_492\0"
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
_Label_4424:
	push	r0
	sub	r1,1,r1
	bne	_Label_4424
	mov	1657,r13		! source line 1657
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1663,r13		! source line 1663
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_495 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_495  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1664,r13		! source line 1664
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1664,r13		! source line 1664
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
	.word	_Label_496
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_497
	.word	-12
	.word	4
	.word	0
_Label_496:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_495\0"
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
_Label_4425:
	push	r0
	sub	r1,1,r1
	bne	_Label_4425
	mov	1669,r13		! source line 1669
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1675,r13		! source line 1675
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_498 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_498  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1676,r13		! source line 1676
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1676,r13		! source line 1676
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
	.word	_Label_499
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_500
	.word	-12
	.word	4
	.word	0
_Label_499:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_498\0"
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
_Label_4426:
	push	r0
	sub	r1,1,r1
	bne	_Label_4426
	mov	1681,r13		! source line 1681
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1687,r13		! source line 1687
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_501 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1688,r13		! source line 1688
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1688,r13		! source line 1688
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
	.word	_Label_502
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_503
	.word	-12
	.word	4
	.word	0
_Label_502:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_195_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_195_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_4427:
	push	r0
	sub	r1,1,r1
	bne	_Label_4427
	mov	1693,r13		! source line 1693
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_504 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_504  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1698,r13		! source line 1698
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1699,r13		! source line 1699
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_505 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1700,r13		! source line 1700
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1703,r13		! source line 1703
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_509 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_508 = *_temp_509  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_508 == 0 then goto _Label_507		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_507
!	jmp	_Label_506
_Label_506:
! THEN...
	mov	1704,r13		! source line 1704
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_511 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_510 = *_temp_511  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_510) then goto _runtimeErrorNullPointer
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
	jmp	_Label_512
_Label_507:
! ELSE...
	mov	1706,r13		! source line 1706
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_513 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_513  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1706,r13		! source line 1706
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_512:
! SEND STATEMENT...
	mov	1708,r13		! source line 1708
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
	mov	1714,r13		! source line 1714
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_195_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_514
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_515
	.word	8
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
	.word	0
_Label_514:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_515:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_504\0"
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
_Label_4428:
	push	r0
	sub	r1,1,r1
	bne	_Label_4428
	mov	1719,r13		! source line 1719
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1726,r13		! source line 1726
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1740,r13		! source line 1740
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_4429
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_523
_Label_4429:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_523
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_523
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_537,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_537:
	jmp	_Label_529	! 1:	
	jmp	_Label_536	! 2:	
	jmp	_Label_526	! 3:	
	jmp	_Label_525	! 4:	
	jmp	_Label_528	! 5:	
	jmp	_Label_527	! 6:	
	jmp	_Label_530	! 7:	
	jmp	_Label_531	! 8:	
	jmp	_Label_532	! 9:	
	jmp	_Label_533	! 10:	
	jmp	_Label_534	! 11:	
	jmp	_Label_535	! 12:	
! CASE 4...
_Label_525:
! RETURN STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0RE",r10
!   Call the function
	mov	1742,r13		! source line 1742
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_538  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_538  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_526:
! CALL STATEMENT...
!   Call the function
	mov	1744,r13		! source line 1744
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1745,r13		! source line 1745
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_527:
! RETURN STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1747,r13		! source line 1747
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_539  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_539  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_528:
! RETURN STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1749,r13		! source line 1749
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_540  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_540  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_529:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1751,r13		! source line 1751
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_530:
! RETURN STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1754,r13		! source line 1754
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_541  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_541  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_531:
! RETURN STATEMENT...
	mov	1756,r13		! source line 1756
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1756,r13		! source line 1756
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_542  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_542  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_532:
! RETURN STATEMENT...
	mov	1758,r13		! source line 1758
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
	mov	1758,r13		! source line 1758
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_543  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_543  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_533:
! RETURN STATEMENT...
	mov	1760,r13		! source line 1760
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
	mov	1760,r13		! source line 1760
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_544  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_544  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_534:
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_545  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_545  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_535:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1764,r13		! source line 1764
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_536:
! CALL STATEMENT...
!   Call the function
	mov	1767,r13		! source line 1767
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1768,r13		! source line 1768
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_523:
! CALL STATEMENT...
!   _temp_546 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_546  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1770,r13		! source line 1770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1771,r13		! source line 1771
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1772,r13		! source line 1772
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_547 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_547  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1773,r13		! source line 1773
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_524:
! RETURN STATEMENT...
	mov	1775,r13		! source line 1775
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
	.word	_Label_548
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_549
	.word	8
	.word	4
	.word	_Label_550
	.word	12
	.word	4
	.word	_Label_551
	.word	16
	.word	4
	.word	_Label_552
	.word	20
	.word	4
	.word	_Label_553
	.word	24
	.word	4
	.word	_Label_554
	.word	-12
	.word	4
	.word	_Label_555
	.word	-16
	.word	4
	.word	_Label_556
	.word	-20
	.word	4
	.word	_Label_557
	.word	-24
	.word	4
	.word	_Label_558
	.word	-28
	.word	4
	.word	_Label_559
	.word	-32
	.word	4
	.word	_Label_560
	.word	-36
	.word	4
	.word	_Label_561
	.word	-40
	.word	4
	.word	_Label_562
	.word	-44
	.word	4
	.word	_Label_563
	.word	-48
	.word	4
	.word	0
_Label_548:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_549:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_550:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_551:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_552:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_553:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_538\0"
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
_Label_4430:
	push	r0
	sub	r1,1,r1
	bne	_Label_4430
	mov	1780,r13		! source line 1780
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1782,r13		! source line 1782
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1782,r13		! source line 1782
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
	.word	_Label_564
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_565
	.word	8
	.word	4
	.word	0
_Label_564:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_565:
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
_Label_4431:
	push	r0
	sub	r1,1,r1
	bne	_Label_4431
	mov	1787,r13		! source line 1787
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_566 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_566  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1789,r13		! source line 1789
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1790,r13		! source line 1790
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
	.word	_Label_567
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_568
	.word	-12
	.word	4
	.word	0
_Label_567:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_566\0"
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
_Label_4432:
	push	r0
	sub	r1,1,r1
	bne	_Label_4432
	mov	1795,r13		! source line 1795
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1797,r13		! source line 1797
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
	mov	1797,r13		! source line 1797
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
	.word	_Label_569
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_569:
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
_Label_4433:
	push	r0
	sub	r1,1,r1
	bne	_Label_4433
	mov	1803,r13		! source line 1803
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0AS",r10
	mov	1812,r13		! source line 1812
	mov	"\0\0SE",r10
!   _temp_570 = &_P_Kernel_threadManager
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
	mov	1813,r13		! source line 1813
	mov	"\0\0AS",r10
	mov	1813,r13		! source line 1813
	mov	"\0\0SE",r10
!   _temp_571 = &_P_Kernel_processManager
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
	mov	1814,r13		! source line 1814
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_572 = newPCB + 24
	load	[r14+-324],r1
	add	r1,24,r1
	store	r1,[r14+-308]
!   Data Move: *_temp_572 = newThread  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r14+-308],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_573 = newPCB + 16
	load	[r14+-324],r1
	add	r1,16,r1
	store	r1,[r14+-304]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_576 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-292]
!   Data Move: _temp_575 = *_temp_576  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_575) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_577 = _temp_575 + 12
	load	[r14+-296],r1
	add	r1,12,r1
	store	r1,[r14+-288]
!   Data Move: _temp_574 = *_temp_577  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   Data Move: *_temp_573 = _temp_574  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r14+-304],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_578 = newThread + 76
	load	[r14+-320],r1
	add	r1,76,r1
	store	r1,[r14+-284]
!   Data Move: *_temp_578 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-284],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_579 = newThread + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-280]
!   Data Move: *_temp_579 = newPCB  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r14+-280],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_581 = newThread + 4096
	load	[r14+-320],r1
	add	r1,4096,r1
	store	r1,[r14+-272]
!   Move address of _temp_581 [0 ] into _temp_582
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
!   _temp_580 = _temp_582		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=_temp_580  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+0]
!   Call the function
	mov	1819,r13		! source line 1819
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1820,r13		! source line 1820
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1820,r13		! source line 1820
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! FOR STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_587 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
!   Calculate and save the FOR-LOOP ending value
!   _temp_588 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-260]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_587  (sizeInBytes=4)
	load	[r14+-264],r1
	store	r1,[r14+-336]
_Label_583:
!   Perform the FOR-LOOP termination test
!   if i > _temp_588 then goto _Label_586		
	load	[r14+-336],r1
	load	[r14+-260],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_586
_Label_584:
	mov	1823,r13		! source line 1823
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_593 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_592 = *_temp_593  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_592) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_594 = _temp_592 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_594 [i ] into _temp_595
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
!   Data Move: _temp_591 = *_temp_595  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_591) then goto _Label_590
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_590
!	jmp	_Label_589
_Label_589:
! THEN...
	mov	1825,r13		! source line 1825
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_598 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-228]
!   Data Move: _temp_597 = *_temp_598  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_597) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_599 = _temp_597 + 124
	load	[r14+-232],r1
	add	r1,124,r1
	store	r1,[r14+-224]
!   Move address of _temp_599 [i ] into _temp_600
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
!   Data Move: _temp_596 = *_temp_600  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_596) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_601 = _temp_596 + 24
	load	[r14+-236],r1
	add	r1,24,r1
	store	r1,[r14+-216]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_606 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_605 = *_temp_606  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_605) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_607 = _temp_605 + 124
	load	[r14+-200],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   Move address of _temp_607 [i ] into _temp_608
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
!   Data Move: _temp_604 = *_temp_608  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_604) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = _temp_604 + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-184]
!   Data Move: _temp_603 = *_temp_609  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_602 = _temp_603 + 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   Data Move: *_temp_601 = _temp_602  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r14+-216],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1826,r13		! source line 1826
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_611 = newThread + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_610 = *_temp_611  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_610) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_612 = _temp_610 + 124
	load	[r14+-180],r1
	add	r1,124,r1
	store	r1,[r14+-172]
!   Move address of _temp_612 [i ] into _temp_613
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
!   _temp_616 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_615 = *_temp_616  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_615) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = _temp_615 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_617 [i ] into _temp_618
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
!   Data Move: _temp_614 = *_temp_618  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   Data Move: *_temp_613 = _temp_614  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r14+-168],r2
	store	r1,[r2]
! END IF...
_Label_590:
!   Increment the FOR-LOOP index variable and jump back
_Label_585:
!   i = i + 1
	load	[r14+-336],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-336]
	jmp	_Label_583
! END FOR
_Label_586:
! ASSIGNMENT STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_619 = newThread + 68
	load	[r14+-320],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_621 = newThread + 88
	load	[r14+-320],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_621 [999 ] into _temp_622
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
!   _temp_620 = _temp_622		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_619 = _temp_620  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1833,r13		! source line 1833
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_624 = newPCB + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_623 = _temp_624		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_626 = *_temp_627  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_626) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = _temp_626 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_629 = _temp_628 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_625 = *_temp_629  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_630 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_623  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_625  sizeInBytes=4
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
	mov	1834,r13		! source line 1834
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_635 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_639 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_638 = *_temp_639  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_638) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_640 = _temp_638 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_641 = _temp_640 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_637 = *_temp_641  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_636 = _temp_637 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_635  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-336]
_Label_631:
!   Perform the FOR-LOOP termination test
!   if i > _temp_636 then goto _Label_634		
	load	[r14+-336],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_634
_Label_632:
	mov	1834,r13		! source line 1834
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_643 = newPCB + 32
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
!   Retrieve Result: targetName=_temp_642  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1835,r13		! source line 1835
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_646 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_645 = *_temp_646  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_645) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_647 = _temp_645 + 32
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
!   Retrieve Result: targetName=_temp_644  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_642  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_644  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1835,r13		! source line 1835
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0IF",r10
	mov	1836,r13		! source line 1836
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_652 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_651 = *_temp_652  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_651) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_653 = _temp_651 + 32
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
!   Retrieve Result: targetName=_temp_650  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_654 = _temp_650 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_654 then goto _Label_649 else goto _Label_648
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_648
	jmp	_Label_649
_Label_648:
! THEN...
	mov	1837,r13		! source line 1837
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1837,r13		! source line 1837
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_655 = newPCB + 32
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
	jmp	_Label_656
_Label_649:
! ELSE...
	mov	1839,r13		! source line 1839
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_657 = newPCB + 32
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
_Label_656:
!   Increment the FOR-LOOP index variable and jump back
_Label_633:
!   i = i + 1
	load	[r14+-336],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-336]
	jmp	_Label_631
! END FOR
_Label_634:
! ASSIGNMENT STATEMENT...
	mov	1843,r13		! source line 1843
	mov	"\0\0AS",r10
!   Call the function
	mov	1843,r13		! source line 1843
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
! SEND STATEMENT...
	mov	1844,r13		! source line 1844
	mov	"\0\0SE",r10
!   _temp_658 = _function_194_ResumeChildAfterFork
	set	_function_194_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_658  sizeInBytes=4
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
	mov	1846,r13		! source line 1846
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_660 = newPCB + 12
	load	[r14+-324],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_659 = *_temp_660  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_659  (sizeInBytes=4)
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
	.word	_Label_661
	.word	0		! total size of parameters
	.word	340		! frame size = 340
	.word	_Label_662
	.word	-16
	.word	4
	.word	_Label_663
	.word	-20
	.word	4
	.word	_Label_664
	.word	-24
	.word	4
	.word	_Label_665
	.word	-28
	.word	4
	.word	_Label_666
	.word	-32
	.word	4
	.word	_Label_667
	.word	-9
	.word	1
	.word	_Label_668
	.word	-36
	.word	4
	.word	_Label_669
	.word	-40
	.word	4
	.word	_Label_670
	.word	-44
	.word	4
	.word	_Label_671
	.word	-10
	.word	1
	.word	_Label_672
	.word	-48
	.word	4
	.word	_Label_673
	.word	-52
	.word	4
	.word	_Label_674
	.word	-56
	.word	4
	.word	_Label_675
	.word	-60
	.word	4
	.word	_Label_676
	.word	-64
	.word	4
	.word	_Label_677
	.word	-68
	.word	4
	.word	_Label_678
	.word	-72
	.word	4
	.word	_Label_679
	.word	-76
	.word	4
	.word	_Label_680
	.word	-80
	.word	4
	.word	_Label_681
	.word	-84
	.word	4
	.word	_Label_682
	.word	-88
	.word	4
	.word	_Label_683
	.word	-92
	.word	4
	.word	_Label_684
	.word	-96
	.word	4
	.word	_Label_685
	.word	-100
	.word	4
	.word	_Label_686
	.word	-104
	.word	4
	.word	_Label_687
	.word	-108
	.word	4
	.word	_Label_688
	.word	-112
	.word	4
	.word	_Label_689
	.word	-116
	.word	4
	.word	_Label_690
	.word	-120
	.word	4
	.word	_Label_691
	.word	-124
	.word	4
	.word	_Label_692
	.word	-128
	.word	4
	.word	_Label_693
	.word	-132
	.word	4
	.word	_Label_694
	.word	-136
	.word	4
	.word	_Label_695
	.word	-140
	.word	4
	.word	_Label_696
	.word	-144
	.word	4
	.word	_Label_697
	.word	-148
	.word	4
	.word	_Label_698
	.word	-152
	.word	4
	.word	_Label_699
	.word	-156
	.word	4
	.word	_Label_700
	.word	-160
	.word	4
	.word	_Label_701
	.word	-164
	.word	4
	.word	_Label_702
	.word	-168
	.word	4
	.word	_Label_703
	.word	-172
	.word	4
	.word	_Label_704
	.word	-176
	.word	4
	.word	_Label_705
	.word	-180
	.word	4
	.word	_Label_706
	.word	-184
	.word	4
	.word	_Label_707
	.word	-188
	.word	4
	.word	_Label_708
	.word	-192
	.word	4
	.word	_Label_709
	.word	-196
	.word	4
	.word	_Label_710
	.word	-200
	.word	4
	.word	_Label_711
	.word	-204
	.word	4
	.word	_Label_712
	.word	-208
	.word	4
	.word	_Label_713
	.word	-212
	.word	4
	.word	_Label_714
	.word	-216
	.word	4
	.word	_Label_715
	.word	-220
	.word	4
	.word	_Label_716
	.word	-224
	.word	4
	.word	_Label_717
	.word	-228
	.word	4
	.word	_Label_718
	.word	-232
	.word	4
	.word	_Label_719
	.word	-236
	.word	4
	.word	_Label_720
	.word	-240
	.word	4
	.word	_Label_721
	.word	-244
	.word	4
	.word	_Label_722
	.word	-248
	.word	4
	.word	_Label_723
	.word	-252
	.word	4
	.word	_Label_724
	.word	-256
	.word	4
	.word	_Label_725
	.word	-260
	.word	4
	.word	_Label_726
	.word	-264
	.word	4
	.word	_Label_727
	.word	-268
	.word	4
	.word	_Label_728
	.word	-272
	.word	4
	.word	_Label_729
	.word	-276
	.word	4
	.word	_Label_730
	.word	-280
	.word	4
	.word	_Label_731
	.word	-284
	.word	4
	.word	_Label_732
	.word	-288
	.word	4
	.word	_Label_733
	.word	-292
	.word	4
	.word	_Label_734
	.word	-296
	.word	4
	.word	_Label_735
	.word	-300
	.word	4
	.word	_Label_736
	.word	-304
	.word	4
	.word	_Label_737
	.word	-308
	.word	4
	.word	_Label_738
	.word	-312
	.word	4
	.word	_Label_739
	.word	-316
	.word	4
	.word	_Label_740
	.word	-320
	.word	4
	.word	_Label_741
	.word	-324
	.word	4
	.word	_Label_742
	.word	-328
	.word	4
	.word	_Label_743
	.word	-332
	.word	4
	.word	_Label_744
	.word	-336
	.word	4
	.word	0
_Label_661:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_667:
	.byte	'C'
	.ascii	"_temp_654\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_671:
	.byte	'C'
	.ascii	"_temp_650\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_740:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_741:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_742:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_743:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_744:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_194_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_194_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_4434:
	push	r0
	sub	r1,1,r1
	bne	_Label_4434
	mov	1851,r13		! source line 1851
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1858,r13		! source line 1858
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1858,r13		! source line 1858
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_746 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_745 = *_temp_746  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_745) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_747 = _temp_745 + 32
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
!   _temp_749 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_749 [0 ] into _temp_750
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
!   _temp_748 = _temp_750		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1860,r13		! source line 1860
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_751 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_751 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_752 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_752 [14 ] into _temp_753
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
!   Data Move: userStackTop = *_temp_753  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_754 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_754 [999 ] into _temp_755
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
!   systemStackTop = _temp_755		(4 bytes)
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
	mov	1864,r13		! source line 1864
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1864,r13		! source line 1864
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_194_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_756
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_757
	.word	8
	.word	4
	.word	_Label_758
	.word	-12
	.word	4
	.word	_Label_759
	.word	-16
	.word	4
	.word	_Label_760
	.word	-20
	.word	4
	.word	_Label_761
	.word	-24
	.word	4
	.word	_Label_762
	.word	-28
	.word	4
	.word	_Label_763
	.word	-32
	.word	4
	.word	_Label_764
	.word	-36
	.word	4
	.word	_Label_765
	.word	-40
	.word	4
	.word	_Label_766
	.word	-44
	.word	4
	.word	_Label_767
	.word	-48
	.word	4
	.word	_Label_768
	.word	-52
	.word	4
	.word	_Label_769
	.word	-56
	.word	4
	.word	_Label_770
	.word	-60
	.word	4
	.word	_Label_771
	.word	-64
	.word	4
	.word	0
_Label_756:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_757:
	.byte	'I'
	.ascii	"PC\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_769:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_770:
	.byte	'I'
	.ascii	"userStackTop\0"
	.align
_Label_771:
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
_Label_4435:
	push	r0
	sub	r1,1,r1
	bne	_Label_4435
	mov	1870,r13		! source line 1870
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_776 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_777 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_776  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_772:
!   Perform the FOR-LOOP termination test
!   if i > _temp_777 then goto _Label_775		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_775
_Label_773:
	mov	1876,r13		! source line 1876
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0IF",r10
!   _temp_783 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_784 = _temp_783 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_784 [i ] into _temp_785
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
!   _temp_786 = _temp_785 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_782 = *_temp_786  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_782 != processID then goto _Label_779		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_779
!	jmp	_Label_781
_Label_781:
!   _temp_788 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_789 = _temp_788 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_789 [i ] into _temp_790
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
!   _temp_791 = _temp_790 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_787 = *_temp_791  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_794 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_793 = *_temp_794  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_793) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_795 = _temp_793 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_792 = *_temp_795  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_787 != _temp_792 then goto _Label_779		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_779
!	jmp	_Label_780
_Label_780:
!   _temp_797 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_798 = _temp_797 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_798 [i ] into _temp_799
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
!   _temp_800 = _temp_799 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_796 = *_temp_800  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_796 == 3 then goto _Label_779		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_779
!	jmp	_Label_778
_Label_778:
! THEN...
	mov	1878,r13		! source line 1878
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0AS",r10
	mov	1878,r13		! source line 1878
	mov	"\0\0SE",r10
!   _temp_802 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_803 = _temp_802 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_803 [i ] into _temp_804
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
!   _temp_801 = _temp_804		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_805 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_801  sizeInBytes=4
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
	mov	1879,r13		! source line 1879
	mov	"\0\0RE",r10
!   ReturnResult: childExitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_779:
!   Increment the FOR-LOOP index variable and jump back
_Label_774:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_772
! END FOR
_Label_775:
! RETURN STATEMENT...
	mov	1883,r13		! source line 1883
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
	.word	_Label_806
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_807
	.word	8
	.word	4
	.word	_Label_808
	.word	-12
	.word	4
	.word	_Label_809
	.word	-16
	.word	4
	.word	_Label_810
	.word	-20
	.word	4
	.word	_Label_811
	.word	-24
	.word	4
	.word	_Label_812
	.word	-28
	.word	4
	.word	_Label_813
	.word	-32
	.word	4
	.word	_Label_814
	.word	-36
	.word	4
	.word	_Label_815
	.word	-40
	.word	4
	.word	_Label_816
	.word	-44
	.word	4
	.word	_Label_817
	.word	-48
	.word	4
	.word	_Label_818
	.word	-52
	.word	4
	.word	_Label_819
	.word	-56
	.word	4
	.word	_Label_820
	.word	-60
	.word	4
	.word	_Label_821
	.word	-64
	.word	4
	.word	_Label_822
	.word	-68
	.word	4
	.word	_Label_823
	.word	-72
	.word	4
	.word	_Label_824
	.word	-76
	.word	4
	.word	_Label_825
	.word	-80
	.word	4
	.word	_Label_826
	.word	-84
	.word	4
	.word	_Label_827
	.word	-88
	.word	4
	.word	_Label_828
	.word	-92
	.word	4
	.word	_Label_829
	.word	-96
	.word	4
	.word	_Label_830
	.word	-100
	.word	4
	.word	_Label_831
	.word	-104
	.word	4
	.word	_Label_832
	.word	-108
	.word	4
	.word	_Label_833
	.word	-112
	.word	4
	.word	_Label_834
	.word	-116
	.word	4
	.word	_Label_835
	.word	-120
	.word	4
	.word	0
_Label_806:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_807:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_834:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_835:
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
_Label_4436:
	push	r0
	sub	r1,1,r1
	bne	_Label_4436
	mov	1889,r13		! source line 1889
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1902,r13		! source line 1902
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=InterruptStauts  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1903,r13		! source line 1903
	mov	"\0\0AS",r10
	mov	1903,r13		! source line 1903
	mov	"\0\0SE",r10
!   _temp_836 = &strBuffer
	add	r14,-228,r1
	store	r1,[r14+-112]
!   _temp_837 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_839 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_838 = *_temp_839  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_838) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_840 = _temp_838 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_836  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_837  sizeInBytes=4
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
	mov	1905,r13		! source line 1905
	mov	"\0\0IF",r10
!   if ret >= 0 then goto _Label_842		(int)
	load	[r14+-252],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_842
!	jmp	_Label_841
_Label_841:
! THEN...
	mov	1906,r13		! source line 1906
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_842:
! ASSIGNMENT STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_4437:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4437
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! SEND STATEMENT...
	mov	1910,r13		! source line 1910
	mov	"\0\0SE",r10
!   _temp_844 = &newAddrSpace
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
	mov	1912,r13		! source line 1912
	mov	"\0\0AS",r10
	mov	1912,r13		! source line 1912
	mov	"\0\0SE",r10
!   _temp_845 = &strBuffer
	add	r14,-228,r1
	store	r1,[r14+-84]
!   _temp_846 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_845  sizeInBytes=4
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
	mov	1913,r13		! source line 1913
	mov	"\0\0IF",r10
!   if intIsZero (newOpenFile) then goto _Label_847
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_847
	jmp	_Label_848
_Label_847:
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
_Label_848:
! ASSIGNMENT STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0AS",r10
	mov	1917,r13		! source line 1917
	mov	"\0\0SE",r10
!   _temp_849 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (newOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_849  sizeInBytes=4
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
	mov	1918,r13		! source line 1918
	mov	"\0\0IF",r10
!   if PC >= 0 then goto _Label_851		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_851
!	jmp	_Label_850
_Label_850:
! THEN...
	mov	1919,r13		! source line 1919
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_851:
! SEND STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_854 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_853 = *_temp_854  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_853) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_855 = _temp_853 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_852 = _temp_855		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_856 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_852  sizeInBytes=4
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
	mov	1923,r13		! source line 1923
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_858 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_857 = *_temp_858  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_857) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_859 = _temp_857 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_859 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_4438:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4438
! SEND STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0SE",r10
!   _temp_860 = &_P_Kernel_fileManager
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
	mov	1925,r13		! source line 1925
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_861 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_861 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0AS",r10
!   _temp_863 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-28]
!   _temp_864 = _temp_863 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_862 = *_temp_864  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   initUStack = _temp_862 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_865 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_865 [999 ] into _temp_866
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
!   initSStack = _temp_866		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-236]
! SEND STATEMENT...
	mov	1930,r13		! source line 1930
	mov	"\0\0SE",r10
!   _temp_867 = &newAddrSpace
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
	mov	1931,r13		! source line 1931
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1932,r13		! source line 1932
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
	.word	_Label_868
	.word	4		! total size of parameters
	.word	260		! frame size = 260
	.word	_Label_869
	.word	8
	.word	4
	.word	_Label_870
	.word	-12
	.word	4
	.word	_Label_871
	.word	-16
	.word	4
	.word	_Label_872
	.word	-20
	.word	4
	.word	_Label_873
	.word	-24
	.word	4
	.word	_Label_874
	.word	-28
	.word	4
	.word	_Label_875
	.word	-32
	.word	4
	.word	_Label_876
	.word	-36
	.word	4
	.word	_Label_877
	.word	-40
	.word	4
	.word	_Label_878
	.word	-44
	.word	4
	.word	_Label_879
	.word	-48
	.word	4
	.word	_Label_880
	.word	-52
	.word	4
	.word	_Label_881
	.word	-56
	.word	4
	.word	_Label_882
	.word	-60
	.word	4
	.word	_Label_883
	.word	-64
	.word	4
	.word	_Label_884
	.word	-68
	.word	4
	.word	_Label_885
	.word	-72
	.word	4
	.word	_Label_886
	.word	-76
	.word	4
	.word	_Label_887
	.word	-80
	.word	4
	.word	_Label_888
	.word	-84
	.word	4
	.word	_Label_889
	.word	-88
	.word	4
	.word	_Label_890
	.word	-92
	.word	4
	.word	_Label_891
	.word	-96
	.word	4
	.word	_Label_892
	.word	-100
	.word	4
	.word	_Label_893
	.word	-104
	.word	4
	.word	_Label_894
	.word	-108
	.word	4
	.word	_Label_895
	.word	-112
	.word	4
	.word	_Label_896
	.word	-204
	.word	92
	.word	_Label_897
	.word	-228
	.word	24
	.word	_Label_898
	.word	-232
	.word	4
	.word	_Label_899
	.word	-236
	.word	4
	.word	_Label_900
	.word	-240
	.word	4
	.word	_Label_901
	.word	-244
	.word	4
	.word	_Label_902
	.word	-248
	.word	4
	.word	_Label_903
	.word	-252
	.word	4
	.word	0
_Label_868:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_869:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_867\0"
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
_Label_876:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_896:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_897:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_898:
	.byte	'I'
	.ascii	"initUStack\0"
	.align
_Label_899:
	.byte	'I'
	.ascii	"initSStack\0"
	.align
_Label_900:
	.byte	'I'
	.ascii	"PC\0"
	.align
_Label_901:
	.byte	'P'
	.ascii	"newOpenFile\0"
	.align
_Label_902:
	.byte	'I'
	.ascii	"InterruptStauts\0"
	.align
_Label_903:
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
_Label_4439:
	push	r0
	sub	r1,1,r1
	bne	_Label_4439
	mov	1937,r13		! source line 1937
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0AS",r10
	mov	1943,r13		! source line 1943
	mov	"\0\0SE",r10
!   _temp_904 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_905 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_907 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_906 = *_temp_907  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_906) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_908 = _temp_906 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_904  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_905  sizeInBytes=4
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
!   _temp_909 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_909  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1944,r13		! source line 1944
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1945,r13		! source line 1945
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_910 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_910  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1946,r13		! source line 1946
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_911 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_911  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1947,r13		! source line 1947
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1948,r13		! source line 1948
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_912 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_912  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1949,r13		! source line 1949
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_913 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_913  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1950,r13		! source line 1950
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1951,r13		! source line 1951
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1952,r13		! source line 1952
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
	.word	_Label_914
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_915
	.word	8
	.word	4
	.word	_Label_916
	.word	-12
	.word	4
	.word	_Label_917
	.word	-16
	.word	4
	.word	_Label_918
	.word	-20
	.word	4
	.word	_Label_919
	.word	-24
	.word	4
	.word	_Label_920
	.word	-28
	.word	4
	.word	_Label_921
	.word	-32
	.word	4
	.word	_Label_922
	.word	-36
	.word	4
	.word	_Label_923
	.word	-40
	.word	4
	.word	_Label_924
	.word	-44
	.word	4
	.word	_Label_925
	.word	-48
	.word	4
	.word	_Label_926
	.word	-52
	.word	4
	.word	_Label_927
	.word	-76
	.word	24
	.word	0
_Label_914:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_915:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_926:
	.byte	'I'
	.ascii	"ret\0"
	.align
_Label_927:
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
	mov	36,r1
_Label_4440:
	push	r0
	sub	r1,1,r1
	bne	_Label_4440
	mov	1957,r13		! source line 1957
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0AS",r10
	mov	1966,r13		! source line 1966
	mov	"\0\0SE",r10
!   _temp_928 = &strBuffer
	add	r14,-124,r1
	store	r1,[r14+-96]
!   _temp_929 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-92]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_931 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_930 = *_temp_931  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_930) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_932 = _temp_930 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_928  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_929  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! ASSIGNMENT STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0AS",r10
!   fileDescriptorEmptySlot = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-132]
! FOR STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_937 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_938 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_937  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-136]
_Label_933:
!   Perform the FOR-LOOP termination test
!   if i > _temp_938 then goto _Label_936		
	load	[r14+-136],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_936
_Label_934:
	mov	1969,r13		! source line 1969
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_943 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_942 = *_temp_943  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_942) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_944 = _temp_942 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_944 [i ] into _temp_945
!     make sure index expr is >= 0
	load	[r14+-136],r2
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
!   Data Move: _temp_941 = *_temp_945  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_941) then goto _Label_939
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_939
	jmp	_Label_940
_Label_939:
! THEN...
	mov	1971,r13		! source line 1971
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0AS",r10
!   fileDescriptorEmptySlot = i		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-132]
! BREAK STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0BR",r10
	jmp	_Label_936
! END IF...
_Label_940:
!   Increment the FOR-LOOP index variable and jump back
_Label_935:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_933
! END FOR
_Label_936:
! IF STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0IF",r10
!   if fileDescriptorEmptySlot != -1 then goto _Label_947		(int)
	load	[r14+-132],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_947
!	jmp	_Label_946
_Label_946:
! THEN...
	mov	1977,r13		! source line 1977
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_947:
! IF STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0IF",r10
!   _temp_950 = &strBuffer
	add	r14,-124,r1
	store	r1,[r14+-48]
!   _temp_951 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_950  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_951  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	1981,r13		! source line 1981
	mov	"\0\0CA",r10
	call	_P_System_StrEqual
!   if result==true then goto _Label_948 else goto _Label_949
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_949
	jmp	_Label_948
_Label_948:
! THEN...
	mov	1982,r13		! source line 1982
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0AS",r10
!   _temp_952 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   _temp_953 = _temp_952 + 772
	load	[r14+-40],r1
	add	r1,772,r1
	store	r1,[r14+-36]
!   openFile = _temp_953		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-128]
	jmp	_Label_954
_Label_949:
! ELSE...
	mov	1984,r13		! source line 1984
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0AS",r10
	mov	1984,r13		! source line 1984
	mov	"\0\0SE",r10
!   _temp_955 = &strBuffer
	add	r14,-124,r1
	store	r1,[r14+-32]
!   _temp_956 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_955  sizeInBytes=4
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
	store	r1,[r14+-128]
! END IF...
_Label_954:
! IF STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_957
	load	[r14+-128],r1
	cmp	r1,r0
	be	_Label_957
	jmp	_Label_958
_Label_957:
! THEN...
	mov	1988,r13		! source line 1988
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_958:
! ASSIGNMENT STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_960 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_959 = *_temp_960  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_959) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_961 = _temp_959 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_961 [fileDescriptorEmptySlot ] into _temp_962
!     make sure index expr is >= 0
	load	[r14+-132],r2
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
!   Data Move: *_temp_962 = openFile  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0RE",r10
!   ReturnResult: fileDescriptorEmptySlot  (sizeInBytes=4)
	load	[r14+-132],r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_963
	.word	4		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_964
	.word	8
	.word	4
	.word	_Label_965
	.word	-12
	.word	4
	.word	_Label_966
	.word	-16
	.word	4
	.word	_Label_967
	.word	-20
	.word	4
	.word	_Label_968
	.word	-24
	.word	4
	.word	_Label_969
	.word	-28
	.word	4
	.word	_Label_970
	.word	-32
	.word	4
	.word	_Label_971
	.word	-36
	.word	4
	.word	_Label_972
	.word	-40
	.word	4
	.word	_Label_973
	.word	-44
	.word	4
	.word	_Label_974
	.word	-48
	.word	4
	.word	_Label_975
	.word	-52
	.word	4
	.word	_Label_976
	.word	-56
	.word	4
	.word	_Label_977
	.word	-60
	.word	4
	.word	_Label_978
	.word	-64
	.word	4
	.word	_Label_979
	.word	-68
	.word	4
	.word	_Label_980
	.word	-72
	.word	4
	.word	_Label_981
	.word	-76
	.word	4
	.word	_Label_982
	.word	-80
	.word	4
	.word	_Label_983
	.word	-84
	.word	4
	.word	_Label_984
	.word	-88
	.word	4
	.word	_Label_985
	.word	-92
	.word	4
	.word	_Label_986
	.word	-96
	.word	4
	.word	_Label_987
	.word	-100
	.word	4
	.word	_Label_988
	.word	-124
	.word	24
	.word	_Label_989
	.word	-128
	.word	4
	.word	_Label_990
	.word	-132
	.word	4
	.word	_Label_991
	.word	-136
	.word	4
	.word	0
_Label_963:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_964:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_987:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_988:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_989:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_990:
	.byte	'I'
	.ascii	"fileDescriptorEmptySlot\0"
	.align
_Label_991:
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
	mov	109,r1
_Label_4441:
	push	r0
	sub	r1,1,r1
	bne	_Label_4441
	mov	1998,r13		! source line 1998
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_996		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_996
	jmp	_Label_992
_Label_996:
!   if fileDesc <= 9 then goto _Label_995		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_995
	jmp	_Label_992
_Label_995:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_999 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-376]
!   Data Move: _temp_998 = *_temp_999  (sizeInBytes=4)
	load	[r14+-376],r1
	load	[r1],r1
	store	r1,[r14+-380]
!   if intIsZero (_temp_998) then goto _runtimeErrorNullPointer
	load	[r14+-380],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1000 = _temp_998 + 124
	load	[r14+-380],r1
	add	r1,124,r1
	store	r1,[r14+-372]
!   Move address of _temp_1000 [fileDesc ] into _temp_1001
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-372],r1
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
	store	r2,[r14+-368]
!   Data Move: _temp_997 = *_temp_1001  (sizeInBytes=4)
	load	[r14+-368],r1
	load	[r1],r1
	store	r1,[r14+-384]
!   if intIsZero (_temp_997) then goto _Label_992
	load	[r14+-384],r1
	cmp	r1,r0
	be	_Label_992
!	jmp	_Label_994
_Label_994:
!   if sizeInBytes >= 0 then goto _Label_993		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_993
!	jmp	_Label_992
_Label_992:
! THEN...
	mov	2015,r13		! source line 2015
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2015,r13		! source line 2015
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_993:
! IF STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1007 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-352]
!   Data Move: _temp_1006 = *_temp_1007  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r1],r1
	store	r1,[r14+-356]
!   if intIsZero (_temp_1006) then goto _runtimeErrorNullPointer
	load	[r14+-356],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1008 = _temp_1006 + 124
	load	[r14+-356],r1
	add	r1,124,r1
	store	r1,[r14+-348]
!   Move address of _temp_1008 [fileDesc ] into _temp_1009
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-348],r1
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
	store	r2,[r14+-344]
!   Data Move: _temp_1005 = *_temp_1009  (sizeInBytes=4)
	load	[r14+-344],r1
	load	[r1],r1
	store	r1,[r14+-360]
!   if intIsZero (_temp_1005) then goto _runtimeErrorNullPointer
	load	[r14+-360],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1010 = _temp_1005 + 12
	load	[r14+-360],r1
	add	r1,12,r1
	store	r1,[r14+-340]
!   Data Move: _temp_1004 = *_temp_1010  (sizeInBytes=4)
	load	[r14+-340],r1
	load	[r1],r1
	store	r1,[r14+-364]
!   if _temp_1004 != 2 then goto _Label_1003		(int)
	load	[r14+-364],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1003
!	jmp	_Label_1002
_Label_1002:
! THEN...
	mov	2020,r13		! source line 2020
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-400]
! FOR STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1015 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-336]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1016 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-332]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1015  (sizeInBytes=4)
	load	[r14+-336],r1
	store	r1,[r14+-424]
_Label_1011:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1016 then goto _Label_1014		
	load	[r14+-424],r1
	load	[r14+-332],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1014
_Label_1012:
	mov	2021,r13		! source line 2021
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0AS",r10
!   _temp_1017 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-328]
!   virtPage = _temp_1017 div 8192		(int)
	load	[r14+-328],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-388]
! IF STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1022		(int)
	load	[r14+-392],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1022
	jmp	_Label_1018
_Label_1022:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1026 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-312]
!   Data Move: _temp_1025 = *_temp_1026  (sizeInBytes=4)
	load	[r14+-312],r1
	load	[r1],r1
	store	r1,[r14+-316]
!   if intIsZero (_temp_1025) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1027 = _temp_1025 + 32
	load	[r14+-316],r1
	add	r1,32,r1
	store	r1,[r14+-308]
!   _temp_1028 = _temp_1027 + 4
	load	[r14+-308],r1
	add	r1,4,r1
	store	r1,[r14+-304]
!   Data Move: _temp_1024 = *_temp_1028  (sizeInBytes=4)
	load	[r14+-304],r1
	load	[r1],r1
	store	r1,[r14+-320]
!   _temp_1023 = _temp_1024 - 1		(int)
	load	[r14+-320],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-324]
!   if virtPage <= _temp_1023 then goto _Label_1021		(int)
	load	[r14+-392],r1
	load	[r14+-324],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1021
	jmp	_Label_1018
_Label_1021:
	mov	2026,r13		! source line 2026
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1031 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-296]
!   Data Move: _temp_1030 = *_temp_1031  (sizeInBytes=4)
	load	[r14+-296],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   if intIsZero (_temp_1030) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1032 = _temp_1030 + 32
	load	[r14+-300],r1
	add	r1,32,r1
	store	r1,[r14+-292]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-292],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1029  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-23]
!   _temp_1033 = _temp_1029 XOR 0		(bool)
	loadb	[r14+-23],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-22]
!   if _temp_1033 then goto _Label_1020 else goto _Label_1018
	loadb	[r14+-22],r1
	cmp	r1,0
	be	_Label_1018
	jmp	_Label_1020
_Label_1020:
	mov	2026,r13		! source line 2026
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1036 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-284]
!   Data Move: _temp_1035 = *_temp_1036  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_1035) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1037 = _temp_1035 + 32
	load	[r14+-288],r1
	add	r1,32,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1034  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-21]
!   _temp_1038 = _temp_1034 XOR 0		(bool)
	loadb	[r14+-21],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-20]
!   if _temp_1038 then goto _Label_1019 else goto _Label_1018
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_1018
	jmp	_Label_1019
_Label_1018:
! THEN...
	mov	2027,r13		! source line 2027
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2027,r13		! source line 2027
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-400],r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1019:
! ASSIGNMENT STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-388],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0AS",r10
	mov	2031,r13		! source line 2031
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1041 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-268]
!   Data Move: _temp_1040 = *_temp_1041  (sizeInBytes=4)
	load	[r14+-268],r1
	load	[r1],r1
	store	r1,[r14+-272]
!   if intIsZero (_temp_1040) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1042 = _temp_1040 + 32
	load	[r14+-272],r1
	add	r1,32,r1
	store	r1,[r14+-264]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-264],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1039  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-276]
!   destAddr = _temp_1039 + offset		(int)
	load	[r14+-276],r1
	load	[r14+-396],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-420]
! ASSIGNMENT STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0AS",r10
	mov	2032,r13		! source line 2032
	mov	"\0\0SE",r10
!   _temp_1043 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-260]
!   Send message GetChar
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=ch  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-25]
! IF STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0IF",r10
!   _temp_1046 = ch XOR 13		(bool)
	loadb	[r14+-25],r1
	mov	13,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-19]
!   if _temp_1046 then goto _Label_1045 else goto _Label_1044
	loadb	[r14+-19],r1
	cmp	r1,0
	be	_Label_1044
	jmp	_Label_1045
_Label_1044:
! THEN...
	mov	2034,r13		! source line 2034
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0AS",r10
!   ch = 10		(1 byte)
	mov	10,r1
	storeb	r1,[r14+-25]
! END IF...
_Label_1045:
! IF STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0IF",r10
!   _temp_1049 = charToInt (ch)
	loadb	[r14+-25],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-256]
!   if _temp_1049 != 4 then goto _Label_1048		(int)
	load	[r14+-256],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1048
!	jmp	_Label_1047
_Label_1047:
! THEN...
	mov	2037,r13		! source line 2037
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0BR",r10
	jmp	_Label_1014
! END IF...
_Label_1048:
! ASSIGNMENT STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *destAddr = ch  (sizeInBytes=1)
	loadb	[r14+-25],r1
	load	[r14+-420],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-400],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! IF STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1052 = *destAddr  (sizeInBytes=1)
	load	[r14+-420],r1
	loadb	[r1],r1
	storeb	r1,[r14+-18]
!   _temp_1053 = _temp_1052 XOR 10		(bool)
	loadb	[r14+-18],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1053 then goto _Label_1051 else goto _Label_1050
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1050
	jmp	_Label_1051
_Label_1050:
! THEN...
	mov	2042,r13		! source line 2042
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0BR",r10
	jmp	_Label_1014
! END IF...
_Label_1051:
! ASSIGNMENT STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0AS",r10
!   buffer = buffer + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_1013:
!   i = i + 1
	load	[r14+-424],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-424]
	jmp	_Label_1011
! END FOR
_Label_1014:
! RETURN STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-400],r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1054
_Label_1003:
! ELSE...
	mov	2050,r13		! source line 2050
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-388],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-388],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1056 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_1055 = *_temp_1056  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_1055) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1057 = _temp_1055 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_1057 [fileDesc ] into _temp_1058
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: openFile = *_temp_1058  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1059 = openFile + 16
	load	[r14+-404],r1
	add	r1,16,r1
	store	r1,[r14+-236]
!   Data Move: nextPosInFile = *_temp_1059  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-408]
! ASSIGNMENT STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1061 = openFile + 20
	load	[r14+-404],r1
	add	r1,20,r1
	store	r1,[r14+-228]
!   Data Move: _temp_1060 = *_temp_1061  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_1060) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1062 = _temp_1060 + 24
	load	[r14+-232],r1
	add	r1,24,r1
	store	r1,[r14+-224]
!   Data Move: sizeOfFile = *_temp_1062  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-412]
! WHILE STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0WH",r10
_Label_1063:
!	jmp	_Label_1064
_Label_1064:
	mov	2057,r13		! source line 2057
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-396],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-416]
! IF STATEMENT...
	mov	2059,r13		! source line 2059
	mov	"\0\0IF",r10
!   _temp_1068 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-408],r1
	load	[r14+-416],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-220]
!   if _temp_1068 <= sizeOfFile then goto _Label_1067		(int)
	load	[r14+-220],r1
	load	[r14+-412],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1067
!	jmp	_Label_1066
_Label_1066:
! THEN...
	mov	2060,r13		! source line 2060
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-412],r1
	load	[r14+-408],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-416]
! END IF...
_Label_1067:
! IF STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0IF",r10
!   _temp_1071 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-400],r1
	load	[r14+-416],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
!   if _temp_1071 <= sizeInBytes then goto _Label_1070		(int)
	load	[r14+-216],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1070
!	jmp	_Label_1069
_Label_1069:
! THEN...
	mov	2063,r13		! source line 2063
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-400],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-416]
! END IF...
_Label_1070:
! IF STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1073		(int)
	load	[r14+-416],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1073
!	jmp	_Label_1072
_Label_1072:
! THEN...
	mov	2067,r13		! source line 2067
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0BR",r10
	jmp	_Label_1065
! END IF...
_Label_1073:
! IF STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1078		(int)
	load	[r14+-392],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1078
	jmp	_Label_1074
_Label_1078:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1082 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-200]
!   Data Move: _temp_1081 = *_temp_1082  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_1081) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1083 = _temp_1081 + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-196]
!   _temp_1084 = _temp_1083 + 4
	load	[r14+-196],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1080 = *_temp_1084  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_1079 = _temp_1080 - 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   if virtPage <= _temp_1079 then goto _Label_1077		(int)
	load	[r14+-392],r1
	load	[r14+-212],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1077
	jmp	_Label_1074
_Label_1077:
	mov	2070,r13		! source line 2070
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1087 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_1086 = *_temp_1087  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1086) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1088 = _temp_1086 + 32
	load	[r14+-188],r1
	add	r1,32,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1085  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1089 = _temp_1085 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1089 then goto _Label_1076 else goto _Label_1074
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1074
	jmp	_Label_1076
_Label_1076:
	mov	2070,r13		! source line 2070
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1092 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1091 = *_temp_1092  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1091) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1093 = _temp_1091 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1090  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1094 = _temp_1090 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1094 then goto _Label_1075 else goto _Label_1074
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1074
	jmp	_Label_1075
_Label_1074:
! THEN...
	mov	2071,r13		! source line 2071
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1075:
! ASSIGNMENT STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-408],r1
	load	[r14+-416],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-408]
! ASSIGNMENT STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-400],r1
	load	[r14+-416],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-392],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-396]
! IF STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1096		(int)
	load	[r14+-400],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1096
!	jmp	_Label_1095
_Label_1095:
! THEN...
	mov	2080,r13		! source line 2080
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0BR",r10
	jmp	_Label_1065
! END IF...
_Label_1096:
! END WHILE...
	jmp	_Label_1063
_Label_1065:
! ASSIGNMENT STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-388],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-388],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1098 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1097 = *_temp_1098  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1097) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1099 = _temp_1097 + 124
	load	[r14+-164],r1
	add	r1,124,r1
	store	r1,[r14+-156]
!   Move address of _temp_1099 [fileDesc ] into _temp_1100
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-156],r1
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
	store	r2,[r14+-152]
!   Data Move: openFile = *_temp_1100  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1101 = openFile + 16
	load	[r14+-404],r1
	add	r1,16,r1
	store	r1,[r14+-148]
!   Data Move: nextPosInFile = *_temp_1101  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-408]
! ASSIGNMENT STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1103 = openFile + 20
	load	[r14+-404],r1
	add	r1,20,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1102 = *_temp_1103  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1102) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1104 = _temp_1102 + 24
	load	[r14+-144],r1
	add	r1,24,r1
	store	r1,[r14+-136]
!   Data Move: sizeOfFile = *_temp_1104  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-412]
! WHILE STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0WH",r10
_Label_1105:
!	jmp	_Label_1106
_Label_1106:
	mov	2093,r13		! source line 2093
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-396],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-416]
! IF STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0IF",r10
!   _temp_1110 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-408],r1
	load	[r14+-416],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
!   if _temp_1110 <= sizeOfFile then goto _Label_1109		(int)
	load	[r14+-132],r1
	load	[r14+-412],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1109
!	jmp	_Label_1108
_Label_1108:
! THEN...
	mov	2096,r13		! source line 2096
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-412],r1
	load	[r14+-408],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-416]
! END IF...
_Label_1109:
! IF STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0IF",r10
!   _temp_1113 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-400],r1
	load	[r14+-416],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   if _temp_1113 <= sizeInBytes then goto _Label_1112		(int)
	load	[r14+-128],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1112
!	jmp	_Label_1111
_Label_1111:
! THEN...
	mov	2099,r13		! source line 2099
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-400],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-416]
! END IF...
_Label_1112:
! IF STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1115		(int)
	load	[r14+-416],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1115
!	jmp	_Label_1114
_Label_1114:
! THEN...
	mov	2103,r13		! source line 2103
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2103,r13		! source line 2103
	mov	"\0\0BR",r10
	jmp	_Label_1107
! END IF...
_Label_1115:
! IF STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1120		(int)
	load	[r14+-392],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1120
	jmp	_Label_1116
_Label_1120:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1124 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1123 = *_temp_1124  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1123) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1125 = _temp_1123 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_1126 = _temp_1125 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1122 = *_temp_1126  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_1121 = _temp_1122 - 1		(int)
	load	[r14+-120],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   if virtPage <= _temp_1121 then goto _Label_1119		(int)
	load	[r14+-392],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1119
	jmp	_Label_1116
_Label_1119:
	mov	2106,r13		! source line 2106
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1129 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1128 = *_temp_1129  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1128) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1130 = _temp_1128 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1127  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1131 = _temp_1127 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1131 then goto _Label_1118 else goto _Label_1116
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1116
	jmp	_Label_1118
_Label_1118:
	mov	2106,r13		! source line 2106
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1134 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1133 = *_temp_1134  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1133) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1135 = _temp_1133 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1132  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1136 = _temp_1132 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1136 then goto _Label_1117 else goto _Label_1116
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1116
	jmp	_Label_1117
_Label_1116:
! THEN...
	mov	2107,r13		! source line 2107
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1117:
! SEND STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1138 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1137 = *_temp_1138  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1137) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1139 = _temp_1137 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1141 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1140 = *_temp_1141  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1140) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1142 = _temp_1140 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0AS",r10
	mov	2112,r13		! source line 2112
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1145 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1144 = *_temp_1145  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1144) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1146 = _temp_1144 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1143  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
!   destAddr = _temp_1143 + offset		(int)
	load	[r14+-52],r1
	load	[r14+-396],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-420]
! ASSIGNMENT STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0AS",r10
	mov	2113,r13		! source line 2113
	mov	"\0\0SE",r10
!   _temp_1147 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-404],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-420],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-408],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunkSize  sizeInBytes=4
	load	[r14+-416],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=junk  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-408],r1
	load	[r14+-416],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-408]
! ASSIGNMENT STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-400],r1
	load	[r14+-416],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-392],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-396]
! IF STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1149		(int)
	load	[r14+-400],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1149
!	jmp	_Label_1148
_Label_1148:
! THEN...
	mov	2121,r13		! source line 2121
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0BR",r10
	jmp	_Label_1107
! END IF...
_Label_1149:
! END WHILE...
	jmp	_Label_1105
_Label_1107:
! ASSIGNMENT STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1150 = openFile + 16
	load	[r14+-404],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1150 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-408],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-400],r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1054:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1151
	.word	12		! total size of parameters
	.word	436		! frame size = 436
	.word	_Label_1152
	.word	8
	.word	4
	.word	_Label_1153
	.word	12
	.word	4
	.word	_Label_1154
	.word	16
	.word	4
	.word	_Label_1155
	.word	-32
	.word	4
	.word	_Label_1156
	.word	-36
	.word	4
	.word	_Label_1157
	.word	-40
	.word	4
	.word	_Label_1158
	.word	-44
	.word	4
	.word	_Label_1159
	.word	-48
	.word	4
	.word	_Label_1160
	.word	-52
	.word	4
	.word	_Label_1161
	.word	-56
	.word	4
	.word	_Label_1162
	.word	-60
	.word	4
	.word	_Label_1163
	.word	-64
	.word	4
	.word	_Label_1164
	.word	-68
	.word	4
	.word	_Label_1165
	.word	-72
	.word	4
	.word	_Label_1166
	.word	-76
	.word	4
	.word	_Label_1167
	.word	-9
	.word	1
	.word	_Label_1168
	.word	-80
	.word	4
	.word	_Label_1169
	.word	-84
	.word	4
	.word	_Label_1170
	.word	-88
	.word	4
	.word	_Label_1171
	.word	-10
	.word	1
	.word	_Label_1172
	.word	-11
	.word	1
	.word	_Label_1173
	.word	-92
	.word	4
	.word	_Label_1174
	.word	-96
	.word	4
	.word	_Label_1175
	.word	-100
	.word	4
	.word	_Label_1176
	.word	-12
	.word	1
	.word	_Label_1177
	.word	-104
	.word	4
	.word	_Label_1178
	.word	-108
	.word	4
	.word	_Label_1179
	.word	-112
	.word	4
	.word	_Label_1180
	.word	-116
	.word	4
	.word	_Label_1181
	.word	-120
	.word	4
	.word	_Label_1182
	.word	-124
	.word	4
	.word	_Label_1183
	.word	-128
	.word	4
	.word	_Label_1184
	.word	-132
	.word	4
	.word	_Label_1185
	.word	-136
	.word	4
	.word	_Label_1186
	.word	-140
	.word	4
	.word	_Label_1187
	.word	-144
	.word	4
	.word	_Label_1188
	.word	-148
	.word	4
	.word	_Label_1189
	.word	-152
	.word	4
	.word	_Label_1190
	.word	-156
	.word	4
	.word	_Label_1191
	.word	-160
	.word	4
	.word	_Label_1192
	.word	-164
	.word	4
	.word	_Label_1193
	.word	-13
	.word	1
	.word	_Label_1194
	.word	-168
	.word	4
	.word	_Label_1195
	.word	-172
	.word	4
	.word	_Label_1196
	.word	-176
	.word	4
	.word	_Label_1197
	.word	-14
	.word	1
	.word	_Label_1198
	.word	-15
	.word	1
	.word	_Label_1199
	.word	-180
	.word	4
	.word	_Label_1200
	.word	-184
	.word	4
	.word	_Label_1201
	.word	-188
	.word	4
	.word	_Label_1202
	.word	-16
	.word	1
	.word	_Label_1203
	.word	-192
	.word	4
	.word	_Label_1204
	.word	-196
	.word	4
	.word	_Label_1205
	.word	-200
	.word	4
	.word	_Label_1206
	.word	-204
	.word	4
	.word	_Label_1207
	.word	-208
	.word	4
	.word	_Label_1208
	.word	-212
	.word	4
	.word	_Label_1209
	.word	-216
	.word	4
	.word	_Label_1210
	.word	-220
	.word	4
	.word	_Label_1211
	.word	-224
	.word	4
	.word	_Label_1212
	.word	-228
	.word	4
	.word	_Label_1213
	.word	-232
	.word	4
	.word	_Label_1214
	.word	-236
	.word	4
	.word	_Label_1215
	.word	-240
	.word	4
	.word	_Label_1216
	.word	-244
	.word	4
	.word	_Label_1217
	.word	-248
	.word	4
	.word	_Label_1218
	.word	-252
	.word	4
	.word	_Label_1219
	.word	-17
	.word	1
	.word	_Label_1220
	.word	-18
	.word	1
	.word	_Label_1221
	.word	-256
	.word	4
	.word	_Label_1222
	.word	-19
	.word	1
	.word	_Label_1223
	.word	-260
	.word	4
	.word	_Label_1224
	.word	-264
	.word	4
	.word	_Label_1225
	.word	-268
	.word	4
	.word	_Label_1226
	.word	-272
	.word	4
	.word	_Label_1227
	.word	-276
	.word	4
	.word	_Label_1228
	.word	-20
	.word	1
	.word	_Label_1229
	.word	-280
	.word	4
	.word	_Label_1230
	.word	-284
	.word	4
	.word	_Label_1231
	.word	-288
	.word	4
	.word	_Label_1232
	.word	-21
	.word	1
	.word	_Label_1233
	.word	-22
	.word	1
	.word	_Label_1234
	.word	-292
	.word	4
	.word	_Label_1235
	.word	-296
	.word	4
	.word	_Label_1236
	.word	-300
	.word	4
	.word	_Label_1237
	.word	-23
	.word	1
	.word	_Label_1238
	.word	-304
	.word	4
	.word	_Label_1239
	.word	-308
	.word	4
	.word	_Label_1240
	.word	-312
	.word	4
	.word	_Label_1241
	.word	-316
	.word	4
	.word	_Label_1242
	.word	-320
	.word	4
	.word	_Label_1243
	.word	-324
	.word	4
	.word	_Label_1244
	.word	-328
	.word	4
	.word	_Label_1245
	.word	-332
	.word	4
	.word	_Label_1246
	.word	-336
	.word	4
	.word	_Label_1247
	.word	-340
	.word	4
	.word	_Label_1248
	.word	-344
	.word	4
	.word	_Label_1249
	.word	-348
	.word	4
	.word	_Label_1250
	.word	-352
	.word	4
	.word	_Label_1251
	.word	-356
	.word	4
	.word	_Label_1252
	.word	-360
	.word	4
	.word	_Label_1253
	.word	-364
	.word	4
	.word	_Label_1254
	.word	-368
	.word	4
	.word	_Label_1255
	.word	-372
	.word	4
	.word	_Label_1256
	.word	-376
	.word	4
	.word	_Label_1257
	.word	-380
	.word	4
	.word	_Label_1258
	.word	-384
	.word	4
	.word	_Label_1259
	.word	-388
	.word	4
	.word	_Label_1260
	.word	-392
	.word	4
	.word	_Label_1261
	.word	-396
	.word	4
	.word	_Label_1262
	.word	-400
	.word	4
	.word	_Label_1263
	.word	-404
	.word	4
	.word	_Label_1264
	.word	-408
	.word	4
	.word	_Label_1265
	.word	-412
	.word	4
	.word	_Label_1266
	.word	-416
	.word	4
	.word	_Label_1267
	.word	-420
	.word	4
	.word	_Label_1268
	.word	-24
	.word	1
	.word	_Label_1269
	.word	-424
	.word	4
	.word	_Label_1270
	.word	-25
	.word	1
	.word	0
_Label_1151:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1152:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1153:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1154:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1167:
	.byte	'C'
	.ascii	"_temp_1136\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1171:
	.byte	'C'
	.ascii	"_temp_1132\0"
	.align
_Label_1172:
	.byte	'C'
	.ascii	"_temp_1131\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1176:
	.byte	'C'
	.ascii	"_temp_1127\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1193:
	.byte	'C'
	.ascii	"_temp_1094\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1197:
	.byte	'C'
	.ascii	"_temp_1090\0"
	.align
_Label_1198:
	.byte	'C'
	.ascii	"_temp_1089\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1202:
	.byte	'C'
	.ascii	"_temp_1085\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1219:
	.byte	'C'
	.ascii	"_temp_1053\0"
	.align
_Label_1220:
	.byte	'C'
	.ascii	"_temp_1052\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1222:
	.byte	'C'
	.ascii	"_temp_1046\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1228:
	.byte	'C'
	.ascii	"_temp_1038\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1232:
	.byte	'C'
	.ascii	"_temp_1034\0"
	.align
_Label_1233:
	.byte	'C'
	.ascii	"_temp_1033\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1237:
	.byte	'C'
	.ascii	"_temp_1029\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1259:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1260:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1261:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1262:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1263:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1264:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1265:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1266:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1267:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1268:
	.byte	'B'
	.ascii	"junk\0"
	.align
_Label_1269:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1270:
	.byte	'C'
	.ascii	"ch\0"
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
	mov	122,r1
_Label_4442:
	push	r0
	sub	r1,1,r1
	bne	_Label_4442
	mov	2132,r13		! source line 2132
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1275		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1275
	jmp	_Label_1271
_Label_1275:
!   if fileDesc <= 9 then goto _Label_1274		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1274
	jmp	_Label_1271
_Label_1274:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1278 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-424]
!   Data Move: _temp_1277 = *_temp_1278  (sizeInBytes=4)
	load	[r14+-424],r1
	load	[r1],r1
	store	r1,[r14+-428]
!   if intIsZero (_temp_1277) then goto _runtimeErrorNullPointer
	load	[r14+-428],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1279 = _temp_1277 + 124
	load	[r14+-428],r1
	add	r1,124,r1
	store	r1,[r14+-420]
!   Move address of _temp_1279 [fileDesc ] into _temp_1280
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   Data Move: _temp_1276 = *_temp_1280  (sizeInBytes=4)
	load	[r14+-416],r1
	load	[r1],r1
	store	r1,[r14+-432]
!   if intIsZero (_temp_1276) then goto _Label_1271
	load	[r14+-432],r1
	cmp	r1,r0
	be	_Label_1271
!	jmp	_Label_1273
_Label_1273:
!   if sizeInBytes >= 0 then goto _Label_1272		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1272
!	jmp	_Label_1271
_Label_1271:
! THEN...
	mov	2150,r13		! source line 2150
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1272:
! IF STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1286 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-400]
!   Data Move: _temp_1285 = *_temp_1286  (sizeInBytes=4)
	load	[r14+-400],r1
	load	[r1],r1
	store	r1,[r14+-404]
!   if intIsZero (_temp_1285) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1287 = _temp_1285 + 124
	load	[r14+-404],r1
	add	r1,124,r1
	store	r1,[r14+-396]
!   Move address of _temp_1287 [fileDesc ] into _temp_1288
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-396],r1
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
	store	r2,[r14+-392]
!   Data Move: _temp_1284 = *_temp_1288  (sizeInBytes=4)
	load	[r14+-392],r1
	load	[r1],r1
	store	r1,[r14+-408]
!   if intIsZero (_temp_1284) then goto _runtimeErrorNullPointer
	load	[r14+-408],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1289 = _temp_1284 + 12
	load	[r14+-408],r1
	add	r1,12,r1
	store	r1,[r14+-388]
!   Data Move: _temp_1283 = *_temp_1289  (sizeInBytes=4)
	load	[r14+-388],r1
	load	[r1],r1
	store	r1,[r14+-412]
!   if _temp_1283 != 2 then goto _Label_1282		(int)
	load	[r14+-412],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1282
!	jmp	_Label_1281
_Label_1281:
! THEN...
	mov	2155,r13		! source line 2155
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0AS",r10
!   temp = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-476]
! FOR STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1294 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-384]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1295 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1294  (sizeInBytes=4)
	load	[r14+-384],r1
	store	r1,[r14+-472]
_Label_1290:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1295 then goto _Label_1293		
	load	[r14+-472],r1
	load	[r14+-380],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1293
_Label_1291:
	mov	2156,r13		! source line 2156
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0AS",r10
!   _temp_1296 = temp		(4 bytes)
	load	[r14+-476],r1
	store	r1,[r14+-376]
!   virtPage = _temp_1296 div 8192		(int)
	load	[r14+-376],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0AS",r10
!   virtAddr = temp		(4 bytes)
	load	[r14+-476],r1
	store	r1,[r14+-436]
! IF STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1301		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1301
	jmp	_Label_1297
_Label_1301:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1305 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-360]
!   Data Move: _temp_1304 = *_temp_1305  (sizeInBytes=4)
	load	[r14+-360],r1
	load	[r1],r1
	store	r1,[r14+-364]
!   if intIsZero (_temp_1304) then goto _runtimeErrorNullPointer
	load	[r14+-364],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1306 = _temp_1304 + 32
	load	[r14+-364],r1
	add	r1,32,r1
	store	r1,[r14+-356]
!   _temp_1307 = _temp_1306 + 4
	load	[r14+-356],r1
	add	r1,4,r1
	store	r1,[r14+-352]
!   Data Move: _temp_1303 = *_temp_1307  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r1],r1
	store	r1,[r14+-368]
!   _temp_1302 = _temp_1303 - 1		(int)
	load	[r14+-368],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
!   if virtPage <= _temp_1302 then goto _Label_1300		(int)
	load	[r14+-440],r1
	load	[r14+-372],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1300
	jmp	_Label_1297
_Label_1300:
	mov	2161,r13		! source line 2161
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1310 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-344]
!   Data Move: _temp_1309 = *_temp_1310  (sizeInBytes=4)
	load	[r14+-344],r1
	load	[r1],r1
	store	r1,[r14+-348]
!   if intIsZero (_temp_1309) then goto _runtimeErrorNullPointer
	load	[r14+-348],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1311 = _temp_1309 + 32
	load	[r14+-348],r1
	add	r1,32,r1
	store	r1,[r14+-340]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-340],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1308  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-25]
!   _temp_1312 = _temp_1308 XOR 0		(bool)
	loadb	[r14+-25],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-24]
!   if _temp_1312 then goto _Label_1299 else goto _Label_1297
	loadb	[r14+-24],r1
	cmp	r1,0
	be	_Label_1297
	jmp	_Label_1299
_Label_1299:
	mov	2161,r13		! source line 2161
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1315 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-332]
!   Data Move: _temp_1314 = *_temp_1315  (sizeInBytes=4)
	load	[r14+-332],r1
	load	[r1],r1
	store	r1,[r14+-336]
!   if intIsZero (_temp_1314) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1316 = _temp_1314 + 32
	load	[r14+-336],r1
	add	r1,32,r1
	store	r1,[r14+-328]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-328],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1313  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-23]
!   _temp_1317 = _temp_1313 XOR 0		(bool)
	loadb	[r14+-23],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-22]
!   if _temp_1317 then goto _Label_1298 else goto _Label_1297
	loadb	[r14+-22],r1
	cmp	r1,0
	be	_Label_1297
	jmp	_Label_1298
_Label_1297:
! THEN...
	mov	2162,r13		! source line 2162
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1298:
! ASSIGNMENT STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0AS",r10
!   temp = temp + 1		(int)
	load	[r14+-476],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-476]
!   Increment the FOR-LOOP index variable and jump back
_Label_1292:
!   i = i + 1
	load	[r14+-472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
	jmp	_Label_1290
! END FOR
_Label_1293:
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! FOR STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1322 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-324]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1323 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-320]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1322  (sizeInBytes=4)
	load	[r14+-324],r1
	store	r1,[r14+-472]
_Label_1318:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1323 then goto _Label_1321		
	load	[r14+-472],r1
	load	[r14+-320],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1321
_Label_1319:
	mov	2168,r13		! source line 2168
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0AS",r10
!   _temp_1324 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-316]
!   virtPage = _temp_1324 div 8192		(int)
	load	[r14+-316],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-436]
! IF STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1329		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1329
	jmp	_Label_1325
_Label_1329:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1333 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-300]
!   Data Move: _temp_1332 = *_temp_1333  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   if intIsZero (_temp_1332) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1334 = _temp_1332 + 32
	load	[r14+-304],r1
	add	r1,32,r1
	store	r1,[r14+-296]
!   _temp_1335 = _temp_1334 + 4
	load	[r14+-296],r1
	add	r1,4,r1
	store	r1,[r14+-292]
!   Data Move: _temp_1331 = *_temp_1335  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-308]
!   _temp_1330 = _temp_1331 - 1		(int)
	load	[r14+-308],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-312]
!   if virtPage <= _temp_1330 then goto _Label_1328		(int)
	load	[r14+-440],r1
	load	[r14+-312],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1328
	jmp	_Label_1325
_Label_1328:
	mov	2171,r13		! source line 2171
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1338 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-284]
!   Data Move: _temp_1337 = *_temp_1338  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_1337) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1339 = _temp_1337 + 32
	load	[r14+-288],r1
	add	r1,32,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1336  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-21]
!   _temp_1340 = _temp_1336 XOR 0		(bool)
	loadb	[r14+-21],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-20]
!   if _temp_1340 then goto _Label_1327 else goto _Label_1325
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_1325
	jmp	_Label_1327
_Label_1327:
	mov	2171,r13		! source line 2171
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1343 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-272]
!   Data Move: _temp_1342 = *_temp_1343  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r1],r1
	store	r1,[r14+-276]
!   if intIsZero (_temp_1342) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1344 = _temp_1342 + 32
	load	[r14+-276],r1
	add	r1,32,r1
	store	r1,[r14+-268]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-268],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1341  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-19]
!   _temp_1345 = _temp_1341 XOR 0		(bool)
	loadb	[r14+-19],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-18]
!   if _temp_1345 then goto _Label_1326 else goto _Label_1325
	loadb	[r14+-18],r1
	cmp	r1,0
	be	_Label_1325
	jmp	_Label_1326
_Label_1325:
! THEN...
	mov	2172,r13		! source line 2172
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1326:
! ASSIGNMENT STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-436],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0AS",r10
	mov	2175,r13		! source line 2175
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1348 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: _temp_1347 = *_temp_1348  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_1347) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1349 = _temp_1347 + 32
	load	[r14+-260],r1
	add	r1,32,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-252],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1346  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-264]
!   destAddr = _temp_1346 + offset		(int)
	load	[r14+-264],r1
	load	[r14+-444],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-468],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: ch = *destAddr  (sizeInBytes=1)
	load	[r14+-468],r1
	loadb	[r1],r1
	storeb	r1,[r14+-27]
! IF STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0IF",r10
!   _temp_1352 = ch XOR 10		(bool)
	loadb	[r14+-27],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1352 then goto _Label_1351 else goto _Label_1350
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1350
	jmp	_Label_1351
_Label_1350:
! THEN...
	mov	2178,r13		! source line 2178
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0SE",r10
!   _temp_1353 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-248]
!   Prepare Argument: offset=12  value=13  sizeInBytes=1
	mov	13,r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-248],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1351:
! SEND STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0SE",r10
!   _temp_1354 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-244]
!   Prepare Argument: offset=12  value=ch  sizeInBytes=1
	loadb	[r14+-27],r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-244],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-448],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0AS",r10
!   buffer = buffer + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_1320:
!   i = i + 1
	load	[r14+-472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
	jmp	_Label_1318
! END FOR
_Label_1321:
! RETURN STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-448],r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1355
_Label_1282:
! ELSE...
	mov	2188,r13		! source line 2188
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-436]
! ASSIGNMENT STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-436],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-436],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1357 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-236]
!   Data Move: _temp_1356 = *_temp_1357  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if intIsZero (_temp_1356) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1358 = _temp_1356 + 124
	load	[r14+-240],r1
	add	r1,124,r1
	store	r1,[r14+-232]
!   Move address of _temp_1358 [fileDesc ] into _temp_1359
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-232],r1
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
	store	r2,[r14+-228]
!   Data Move: openFile = *_temp_1359  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-452],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1360 = openFile + 16
	load	[r14+-452],r1
	add	r1,16,r1
	store	r1,[r14+-224]
!   Data Move: nextPosInFile = *_temp_1360  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-452],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1362 = openFile + 20
	load	[r14+-452],r1
	add	r1,20,r1
	store	r1,[r14+-216]
!   Data Move: _temp_1361 = *_temp_1362  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_1361) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1363 = _temp_1361 + 24
	load	[r14+-220],r1
	add	r1,24,r1
	store	r1,[r14+-212]
!   Data Move: sizeOfFile = *_temp_1363  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-460]
! WHILE STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0WH",r10
_Label_1364:
!	jmp	_Label_1365
_Label_1365:
	mov	2195,r13		! source line 2195
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-444],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! IF STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0IF",r10
!   _temp_1369 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-456],r1
	load	[r14+-464],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if _temp_1369 <= sizeOfFile then goto _Label_1368		(int)
	load	[r14+-208],r1
	load	[r14+-460],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1368
!	jmp	_Label_1367
_Label_1367:
! THEN...
	mov	2198,r13		! source line 2198
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-460],r1
	load	[r14+-456],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! END IF...
_Label_1368:
! IF STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0IF",r10
!   _temp_1372 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-448],r1
	load	[r14+-464],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if _temp_1372 <= sizeInBytes then goto _Label_1371		(int)
	load	[r14+-204],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1371
!	jmp	_Label_1370
_Label_1370:
! THEN...
	mov	2201,r13		! source line 2201
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-448],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! END IF...
_Label_1371:
! IF STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1374		(int)
	load	[r14+-464],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1374
!	jmp	_Label_1373
_Label_1373:
! THEN...
	mov	2205,r13		! source line 2205
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0BR",r10
	jmp	_Label_1366
! END IF...
_Label_1374:
! IF STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1379		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1379
	jmp	_Label_1375
_Label_1379:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1383 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1382 = *_temp_1383  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1382) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1384 = _temp_1382 + 32
	load	[r14+-192],r1
	add	r1,32,r1
	store	r1,[r14+-184]
!   _temp_1385 = _temp_1384 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1381 = *_temp_1385  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   _temp_1380 = _temp_1381 - 1		(int)
	load	[r14+-196],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
!   if virtPage <= _temp_1380 then goto _Label_1378		(int)
	load	[r14+-440],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1378
	jmp	_Label_1375
_Label_1378:
	mov	2208,r13		! source line 2208
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1388 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1387 = *_temp_1388  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1387) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1389 = _temp_1387 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1386  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1390 = _temp_1386 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1390 then goto _Label_1377 else goto _Label_1375
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1375
	jmp	_Label_1377
_Label_1377:
	mov	2208,r13		! source line 2208
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1393 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1392 = *_temp_1393  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1392) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1394 = _temp_1392 + 32
	load	[r14+-164],r1
	add	r1,32,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1391  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1395 = _temp_1391 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1395 then goto _Label_1376 else goto _Label_1375
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1375
	jmp	_Label_1376
_Label_1375:
! THEN...
	mov	2209,r13		! source line 2209
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1376:
! ASSIGNMENT STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-456],r1
	load	[r14+-464],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-448],r1
	load	[r14+-464],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-440],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-444]
! IF STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1397		(int)
	load	[r14+-448],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1397
!	jmp	_Label_1396
_Label_1396:
! THEN...
	mov	2218,r13		! source line 2218
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0BR",r10
	jmp	_Label_1366
! END IF...
_Label_1397:
! END WHILE...
	jmp	_Label_1364
_Label_1366:
! ASSIGNMENT STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-436]
! ASSIGNMENT STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-436],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-436],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2226,r13		! source line 2226
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1399 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1398 = *_temp_1399  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1398) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1400 = _temp_1398 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1400 [fileDesc ] into _temp_1401
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: openFile = *_temp_1401  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-452],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1402 = openFile + 16
	load	[r14+-452],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: nextPosInFile = *_temp_1402  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-452],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1404 = openFile + 20
	load	[r14+-452],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1403 = *_temp_1404  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1403) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1405 = _temp_1403 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: sizeOfFile = *_temp_1405  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-460]
! WHILE STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0WH",r10
_Label_1406:
!	jmp	_Label_1407
_Label_1407:
	mov	2230,r13		! source line 2230
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-444],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! IF STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0IF",r10
!   _temp_1411 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-456],r1
	load	[r14+-464],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1411 <= sizeOfFile then goto _Label_1410		(int)
	load	[r14+-120],r1
	load	[r14+-460],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1410
!	jmp	_Label_1409
_Label_1409:
! THEN...
	mov	2233,r13		! source line 2233
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-460],r1
	load	[r14+-456],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! END IF...
_Label_1410:
! IF STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0IF",r10
!   _temp_1414 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-448],r1
	load	[r14+-464],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1414 <= sizeInBytes then goto _Label_1413		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1413
!	jmp	_Label_1412
_Label_1412:
! THEN...
	mov	2236,r13		! source line 2236
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-448],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! END IF...
_Label_1413:
! IF STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1416		(int)
	load	[r14+-464],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1416
!	jmp	_Label_1415
_Label_1415:
! THEN...
	mov	2240,r13		! source line 2240
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0BR",r10
	jmp	_Label_1408
! END IF...
_Label_1416:
! IF STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1421		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1421
	jmp	_Label_1417
_Label_1421:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1425 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1424 = *_temp_1425  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1424) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1426 = _temp_1424 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   _temp_1427 = _temp_1426 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1423 = *_temp_1427  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   _temp_1422 = _temp_1423 - 1		(int)
	load	[r14+-108],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if virtPage <= _temp_1422 then goto _Label_1420		(int)
	load	[r14+-440],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1420
	jmp	_Label_1417
_Label_1420:
	mov	2243,r13		! source line 2243
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1430 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1429 = *_temp_1430  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1429) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1431 = _temp_1429 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1428  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1432 = _temp_1428 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1432 then goto _Label_1419 else goto _Label_1417
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1417
	jmp	_Label_1419
_Label_1419:
	mov	2243,r13		! source line 2243
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1435 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1434 = *_temp_1435  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1434) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1436 = _temp_1434 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1433  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1437 = _temp_1433 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1437 then goto _Label_1418 else goto _Label_1417
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1417
	jmp	_Label_1418
_Label_1417:
! THEN...
	mov	2244,r13		! source line 2244
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1418:
! SEND STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1439 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1438 = *_temp_1439  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1438) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1440 = _temp_1438 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0AS",r10
	mov	2248,r13		! source line 2248
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1443 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1442 = *_temp_1443  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1442) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1444 = _temp_1442 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1441  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
!   destAddr = _temp_1441 + offset		(int)
	load	[r14+-52],r1
	load	[r14+-444],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0AS",r10
	mov	2249,r13		! source line 2249
	mov	"\0\0SE",r10
!   _temp_1445 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-452],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-468],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunkSize  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=junk  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-26]
! ASSIGNMENT STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-456],r1
	load	[r14+-464],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-448],r1
	load	[r14+-464],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-440],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-444]
! IF STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1447		(int)
	load	[r14+-448],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1447
!	jmp	_Label_1446
_Label_1446:
! THEN...
	mov	2257,r13		! source line 2257
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0BR",r10
	jmp	_Label_1408
! END IF...
_Label_1447:
! END WHILE...
	jmp	_Label_1406
_Label_1408:
! ASSIGNMENT STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-452],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1448 = openFile + 16
	load	[r14+-452],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1448 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-456],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-448],r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1355:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1449
	.word	12		! total size of parameters
	.word	488		! frame size = 488
	.word	_Label_1450
	.word	8
	.word	4
	.word	_Label_1451
	.word	12
	.word	4
	.word	_Label_1452
	.word	16
	.word	4
	.word	_Label_1453
	.word	-32
	.word	4
	.word	_Label_1454
	.word	-36
	.word	4
	.word	_Label_1455
	.word	-40
	.word	4
	.word	_Label_1456
	.word	-44
	.word	4
	.word	_Label_1457
	.word	-48
	.word	4
	.word	_Label_1458
	.word	-52
	.word	4
	.word	_Label_1459
	.word	-56
	.word	4
	.word	_Label_1460
	.word	-60
	.word	4
	.word	_Label_1461
	.word	-64
	.word	4
	.word	_Label_1462
	.word	-9
	.word	1
	.word	_Label_1463
	.word	-68
	.word	4
	.word	_Label_1464
	.word	-72
	.word	4
	.word	_Label_1465
	.word	-76
	.word	4
	.word	_Label_1466
	.word	-10
	.word	1
	.word	_Label_1467
	.word	-11
	.word	1
	.word	_Label_1468
	.word	-80
	.word	4
	.word	_Label_1469
	.word	-84
	.word	4
	.word	_Label_1470
	.word	-88
	.word	4
	.word	_Label_1471
	.word	-12
	.word	1
	.word	_Label_1472
	.word	-92
	.word	4
	.word	_Label_1473
	.word	-96
	.word	4
	.word	_Label_1474
	.word	-100
	.word	4
	.word	_Label_1475
	.word	-104
	.word	4
	.word	_Label_1476
	.word	-108
	.word	4
	.word	_Label_1477
	.word	-112
	.word	4
	.word	_Label_1478
	.word	-116
	.word	4
	.word	_Label_1479
	.word	-120
	.word	4
	.word	_Label_1480
	.word	-124
	.word	4
	.word	_Label_1481
	.word	-128
	.word	4
	.word	_Label_1482
	.word	-132
	.word	4
	.word	_Label_1483
	.word	-136
	.word	4
	.word	_Label_1484
	.word	-140
	.word	4
	.word	_Label_1485
	.word	-144
	.word	4
	.word	_Label_1486
	.word	-148
	.word	4
	.word	_Label_1487
	.word	-152
	.word	4
	.word	_Label_1488
	.word	-13
	.word	1
	.word	_Label_1489
	.word	-156
	.word	4
	.word	_Label_1490
	.word	-160
	.word	4
	.word	_Label_1491
	.word	-164
	.word	4
	.word	_Label_1492
	.word	-14
	.word	1
	.word	_Label_1493
	.word	-15
	.word	1
	.word	_Label_1494
	.word	-168
	.word	4
	.word	_Label_1495
	.word	-172
	.word	4
	.word	_Label_1496
	.word	-176
	.word	4
	.word	_Label_1497
	.word	-16
	.word	1
	.word	_Label_1498
	.word	-180
	.word	4
	.word	_Label_1499
	.word	-184
	.word	4
	.word	_Label_1500
	.word	-188
	.word	4
	.word	_Label_1501
	.word	-192
	.word	4
	.word	_Label_1502
	.word	-196
	.word	4
	.word	_Label_1503
	.word	-200
	.word	4
	.word	_Label_1504
	.word	-204
	.word	4
	.word	_Label_1505
	.word	-208
	.word	4
	.word	_Label_1506
	.word	-212
	.word	4
	.word	_Label_1507
	.word	-216
	.word	4
	.word	_Label_1508
	.word	-220
	.word	4
	.word	_Label_1509
	.word	-224
	.word	4
	.word	_Label_1510
	.word	-228
	.word	4
	.word	_Label_1511
	.word	-232
	.word	4
	.word	_Label_1512
	.word	-236
	.word	4
	.word	_Label_1513
	.word	-240
	.word	4
	.word	_Label_1514
	.word	-244
	.word	4
	.word	_Label_1515
	.word	-248
	.word	4
	.word	_Label_1516
	.word	-17
	.word	1
	.word	_Label_1517
	.word	-252
	.word	4
	.word	_Label_1518
	.word	-256
	.word	4
	.word	_Label_1519
	.word	-260
	.word	4
	.word	_Label_1520
	.word	-264
	.word	4
	.word	_Label_1521
	.word	-18
	.word	1
	.word	_Label_1522
	.word	-268
	.word	4
	.word	_Label_1523
	.word	-272
	.word	4
	.word	_Label_1524
	.word	-276
	.word	4
	.word	_Label_1525
	.word	-19
	.word	1
	.word	_Label_1526
	.word	-20
	.word	1
	.word	_Label_1527
	.word	-280
	.word	4
	.word	_Label_1528
	.word	-284
	.word	4
	.word	_Label_1529
	.word	-288
	.word	4
	.word	_Label_1530
	.word	-21
	.word	1
	.word	_Label_1531
	.word	-292
	.word	4
	.word	_Label_1532
	.word	-296
	.word	4
	.word	_Label_1533
	.word	-300
	.word	4
	.word	_Label_1534
	.word	-304
	.word	4
	.word	_Label_1535
	.word	-308
	.word	4
	.word	_Label_1536
	.word	-312
	.word	4
	.word	_Label_1537
	.word	-316
	.word	4
	.word	_Label_1538
	.word	-320
	.word	4
	.word	_Label_1539
	.word	-324
	.word	4
	.word	_Label_1540
	.word	-22
	.word	1
	.word	_Label_1541
	.word	-328
	.word	4
	.word	_Label_1542
	.word	-332
	.word	4
	.word	_Label_1543
	.word	-336
	.word	4
	.word	_Label_1544
	.word	-23
	.word	1
	.word	_Label_1545
	.word	-24
	.word	1
	.word	_Label_1546
	.word	-340
	.word	4
	.word	_Label_1547
	.word	-344
	.word	4
	.word	_Label_1548
	.word	-348
	.word	4
	.word	_Label_1549
	.word	-25
	.word	1
	.word	_Label_1550
	.word	-352
	.word	4
	.word	_Label_1551
	.word	-356
	.word	4
	.word	_Label_1552
	.word	-360
	.word	4
	.word	_Label_1553
	.word	-364
	.word	4
	.word	_Label_1554
	.word	-368
	.word	4
	.word	_Label_1555
	.word	-372
	.word	4
	.word	_Label_1556
	.word	-376
	.word	4
	.word	_Label_1557
	.word	-380
	.word	4
	.word	_Label_1558
	.word	-384
	.word	4
	.word	_Label_1559
	.word	-388
	.word	4
	.word	_Label_1560
	.word	-392
	.word	4
	.word	_Label_1561
	.word	-396
	.word	4
	.word	_Label_1562
	.word	-400
	.word	4
	.word	_Label_1563
	.word	-404
	.word	4
	.word	_Label_1564
	.word	-408
	.word	4
	.word	_Label_1565
	.word	-412
	.word	4
	.word	_Label_1566
	.word	-416
	.word	4
	.word	_Label_1567
	.word	-420
	.word	4
	.word	_Label_1568
	.word	-424
	.word	4
	.word	_Label_1569
	.word	-428
	.word	4
	.word	_Label_1570
	.word	-432
	.word	4
	.word	_Label_1571
	.word	-436
	.word	4
	.word	_Label_1572
	.word	-440
	.word	4
	.word	_Label_1573
	.word	-444
	.word	4
	.word	_Label_1574
	.word	-448
	.word	4
	.word	_Label_1575
	.word	-452
	.word	4
	.word	_Label_1576
	.word	-456
	.word	4
	.word	_Label_1577
	.word	-460
	.word	4
	.word	_Label_1578
	.word	-464
	.word	4
	.word	_Label_1579
	.word	-468
	.word	4
	.word	_Label_1580
	.word	-26
	.word	1
	.word	_Label_1581
	.word	-472
	.word	4
	.word	_Label_1582
	.word	-27
	.word	1
	.word	_Label_1583
	.word	-476
	.word	4
	.word	0
_Label_1449:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1450:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1451:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1452:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1462:
	.byte	'C'
	.ascii	"_temp_1437\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1466:
	.byte	'C'
	.ascii	"_temp_1433\0"
	.align
_Label_1467:
	.byte	'C'
	.ascii	"_temp_1432\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1471:
	.byte	'C'
	.ascii	"_temp_1428\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1488:
	.byte	'C'
	.ascii	"_temp_1395\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1492:
	.byte	'C'
	.ascii	"_temp_1391\0"
	.align
_Label_1493:
	.byte	'C'
	.ascii	"_temp_1390\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1497:
	.byte	'C'
	.ascii	"_temp_1386\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1516:
	.byte	'C'
	.ascii	"_temp_1352\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1521:
	.byte	'C'
	.ascii	"_temp_1345\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1525:
	.byte	'C'
	.ascii	"_temp_1341\0"
	.align
_Label_1526:
	.byte	'C'
	.ascii	"_temp_1340\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1530:
	.byte	'C'
	.ascii	"_temp_1336\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1540:
	.byte	'C'
	.ascii	"_temp_1317\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1544:
	.byte	'C'
	.ascii	"_temp_1313\0"
	.align
_Label_1545:
	.byte	'C'
	.ascii	"_temp_1312\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1549:
	.byte	'C'
	.ascii	"_temp_1308\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1571:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1572:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1573:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1574:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1575:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1576:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1577:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1578:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1579:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1580:
	.byte	'B'
	.ascii	"junk\0"
	.align
_Label_1581:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1582:
	.byte	'C'
	.ascii	"ch\0"
	.align
_Label_1583:
	.byte	'P'
	.ascii	"temp\0"
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
	mov	53,r1
_Label_4443:
	push	r0
	sub	r1,1,r1
	bne	_Label_4443
	mov	2270,r13		! source line 2270
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0SE",r10
!   _temp_1584 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-212]
!   _temp_1585 = _temp_1584 + 4
	load	[r14+-212],r1
	add	r1,4,r1
	store	r1,[r14+-208]
!   Send message Lock
	load	[r14+-208],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1588		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1588
	jmp	_Label_1586
_Label_1588:
!   if fileDesc <= 9 then goto _Label_1587		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1587
!	jmp	_Label_1586
_Label_1586:
! THEN...
	mov	2278,r13		! source line 2278
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0SE",r10
!   _temp_1589 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-204]
!   _temp_1590 = _temp_1589 + 4
	load	[r14+-204],r1
	add	r1,4,r1
	store	r1,[r14+-200]
!   Send message Unlock
	load	[r14+-200],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1587:
! ASSIGNMENT STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1592 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1591 = *_temp_1592  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_1591) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1593 = _temp_1591 + 124
	load	[r14+-196],r1
	add	r1,124,r1
	store	r1,[r14+-188]
!   Move address of _temp_1593 [fileDesc ] into _temp_1594
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-188],r1
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
	store	r2,[r14+-184]
!   Data Move: openFile = *_temp_1594  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1599 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1598 = *_temp_1599  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1598) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1600 = _temp_1598 + 124
	load	[r14+-176],r1
	add	r1,124,r1
	store	r1,[r14+-168]
!   Move address of _temp_1600 [fileDesc ] into _temp_1601
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1597 = *_temp_1601  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_1597) then goto _Label_1595
	load	[r14+-180],r1
	cmp	r1,r0
	be	_Label_1595
	jmp	_Label_1596
_Label_1595:
! THEN...
	mov	2284,r13		! source line 2284
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0SE",r10
!   _temp_1602 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-160]
!   _temp_1603 = _temp_1602 + 4
	load	[r14+-160],r1
	add	r1,4,r1
	store	r1,[r14+-156]
!   Send message Unlock
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1596:
! IF STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1605		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1605
!	jmp	_Label_1604
_Label_1604:
! THEN...
	mov	2289,r13		! source line 2289
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1606 = openFile + 16
	load	[r14+-216],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1609 = openFile + 20
	load	[r14+-216],r1
	add	r1,20,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1608 = *_temp_1609  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1608) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1610 = _temp_1608 + 24
	load	[r14+-144],r1
	add	r1,24,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1607 = *_temp_1610  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Data Move: *_temp_1606 = _temp_1607  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-152],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0SE",r10
!   _temp_1611 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-132]
!   _temp_1612 = _temp_1611 + 4
	load	[r14+-132],r1
	add	r1,4,r1
	store	r1,[r14+-128]
!   Send message Unlock
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0RE",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1615 = openFile + 20
	load	[r14+-216],r1
	add	r1,20,r1
	store	r1,[r14+-116]
!   Data Move: _temp_1614 = *_temp_1615  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1614) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1616 = _temp_1614 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1613 = *_temp_1616  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   ReturnResult: _temp_1613  (sizeInBytes=4)
	load	[r14+-124],r1
	store	r1,[r14+8]
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1605:
! IF STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0IF",r10
!   if newCurrentPos >= -1 then goto _Label_1618		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1618
!	jmp	_Label_1617
_Label_1617:
! THEN...
	mov	2295,r13		! source line 2295
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0SE",r10
!   _temp_1619 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-108]
!   _temp_1620 = _temp_1619 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Unlock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1618:
! IF STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1627 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1626 = *_temp_1627  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1626) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1628 = _temp_1626 + 124
	load	[r14+-88],r1
	add	r1,124,r1
	store	r1,[r14+-80]
!   Move address of _temp_1628 [fileDesc ] into _temp_1629
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1625 = *_temp_1629  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1625) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1630 = _temp_1625 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1624 = *_temp_1630  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1624) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1631 = _temp_1624 + 24
	load	[r14+-96],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1623 = *_temp_1631  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if newCurrentPos <= _temp_1623 then goto _Label_1622		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1622
!	jmp	_Label_1621
_Label_1621:
! THEN...
	mov	2300,r13		! source line 2300
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0SE",r10
!   _temp_1632 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-64]
!   _temp_1633 = _temp_1632 + 4
	load	[r14+-64],r1
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
	mov	2301,r13		! source line 2301
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1622:
! IF STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1639 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1638 = *_temp_1639  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1638) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1640 = _temp_1638 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_1640 [fileDesc ] into _temp_1641
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1637 = *_temp_1641  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1637) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1642 = _temp_1637 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1636 = *_temp_1642  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_1636 != 2 then goto _Label_1635		(int)
	load	[r14+-56],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1635
!	jmp	_Label_1634
_Label_1634:
! THEN...
	mov	2306,r13		! source line 2306
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0SE",r10
!   _temp_1643 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_1644 = _temp_1643 + 4
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
	mov	2307,r13		! source line 2307
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1635:
! ASSIGNMENT STATEMENT...
	mov	2310,r13		! source line 2310
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1645 = openFile + 16
	load	[r14+-216],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1645 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0SE",r10
!   _temp_1646 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1647 = _temp_1646 + 4
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
	mov	2312,r13		! source line 2312
	mov	"\0\0RE",r10
!   ReturnResult: newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_1648
	.word	8		! total size of parameters
	.word	212		! frame size = 212
	.word	_Label_1649
	.word	8
	.word	4
	.word	_Label_1650
	.word	12
	.word	4
	.word	_Label_1651
	.word	-12
	.word	4
	.word	_Label_1652
	.word	-16
	.word	4
	.word	_Label_1653
	.word	-20
	.word	4
	.word	_Label_1654
	.word	-24
	.word	4
	.word	_Label_1655
	.word	-28
	.word	4
	.word	_Label_1656
	.word	-32
	.word	4
	.word	_Label_1657
	.word	-36
	.word	4
	.word	_Label_1658
	.word	-40
	.word	4
	.word	_Label_1659
	.word	-44
	.word	4
	.word	_Label_1660
	.word	-48
	.word	4
	.word	_Label_1661
	.word	-52
	.word	4
	.word	_Label_1662
	.word	-56
	.word	4
	.word	_Label_1663
	.word	-60
	.word	4
	.word	_Label_1664
	.word	-64
	.word	4
	.word	_Label_1665
	.word	-68
	.word	4
	.word	_Label_1666
	.word	-72
	.word	4
	.word	_Label_1667
	.word	-76
	.word	4
	.word	_Label_1668
	.word	-80
	.word	4
	.word	_Label_1669
	.word	-84
	.word	4
	.word	_Label_1670
	.word	-88
	.word	4
	.word	_Label_1671
	.word	-92
	.word	4
	.word	_Label_1672
	.word	-96
	.word	4
	.word	_Label_1673
	.word	-100
	.word	4
	.word	_Label_1674
	.word	-104
	.word	4
	.word	_Label_1675
	.word	-108
	.word	4
	.word	_Label_1676
	.word	-112
	.word	4
	.word	_Label_1677
	.word	-116
	.word	4
	.word	_Label_1678
	.word	-120
	.word	4
	.word	_Label_1679
	.word	-124
	.word	4
	.word	_Label_1680
	.word	-128
	.word	4
	.word	_Label_1681
	.word	-132
	.word	4
	.word	_Label_1682
	.word	-136
	.word	4
	.word	_Label_1683
	.word	-140
	.word	4
	.word	_Label_1684
	.word	-144
	.word	4
	.word	_Label_1685
	.word	-148
	.word	4
	.word	_Label_1686
	.word	-152
	.word	4
	.word	_Label_1687
	.word	-156
	.word	4
	.word	_Label_1688
	.word	-160
	.word	4
	.word	_Label_1689
	.word	-164
	.word	4
	.word	_Label_1690
	.word	-168
	.word	4
	.word	_Label_1691
	.word	-172
	.word	4
	.word	_Label_1692
	.word	-176
	.word	4
	.word	_Label_1693
	.word	-180
	.word	4
	.word	_Label_1694
	.word	-184
	.word	4
	.word	_Label_1695
	.word	-188
	.word	4
	.word	_Label_1696
	.word	-192
	.word	4
	.word	_Label_1697
	.word	-196
	.word	4
	.word	_Label_1698
	.word	-200
	.word	4
	.word	_Label_1699
	.word	-204
	.word	4
	.word	_Label_1700
	.word	-208
	.word	4
	.word	_Label_1701
	.word	-212
	.word	4
	.word	_Label_1702
	.word	-216
	.word	4
	.word	0
_Label_1648:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1649:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1650:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1702:
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
	mov	28,r1
_Label_4444:
	push	r0
	sub	r1,1,r1
	bne	_Label_4444
	mov	2318,r13		! source line 2318
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1708 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1707 = *_temp_1708  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1707) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1709 = _temp_1707 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_1709 [fileDesc ] into _temp_1710
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   Data Move: _temp_1706 = *_temp_1710  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1706) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1711 = _temp_1706 + 12
	load	[r14+-108],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1705 = *_temp_1711  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_1705 != 2 then goto _Label_1704		(int)
	load	[r14+-112],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1704
!	jmp	_Label_1703
_Label_1703:
! THEN...
	mov	2323,r13		! source line 2323
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1713 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1712 = *_temp_1713  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1712) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1714 = _temp_1712 + 124
	load	[r14+-84],r1
	add	r1,124,r1
	store	r1,[r14+-76]
!   Move address of _temp_1714 [fileDesc ] into _temp_1715
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Data Move: *_temp_1715 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-72],r2
	store	r1,[r2]
	jmp	_Label_1716
_Label_1704:
! ELSE...
	mov	2326,r13		! source line 2326
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1720		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1720
	jmp	_Label_1717
_Label_1720:
!   if fileDesc <= 9 then goto _Label_1719		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1719
	jmp	_Label_1717
_Label_1719:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1723 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1722 = *_temp_1723  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1722) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1724 = _temp_1722 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1724 [fileDesc ] into _temp_1725
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
!   Data Move: _temp_1721 = *_temp_1725  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1721) then goto _Label_1717
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1717
	jmp	_Label_1718
_Label_1717:
	jmp	_Label_1726
_Label_1718:
! ELSE...
	mov	2328,r13		! source line 2328
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1729 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1728 = *_temp_1729  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1728) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1730 = _temp_1728 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1730 [fileDesc ] into _temp_1731
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
!   Data Move: _temp_1727 = *_temp_1731  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1732 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1727  sizeInBytes=4
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
	mov	2329,r13		! source line 2329
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1734 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1733 = *_temp_1734  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1733) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1735 = _temp_1733 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1735 [fileDesc ] into _temp_1736
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
!   Data Move: *_temp_1736 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1726:
! END IF...
_Label_1716:
! RETURN STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1737
	.word	4		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_1738
	.word	8
	.word	4
	.word	_Label_1739
	.word	-12
	.word	4
	.word	_Label_1740
	.word	-16
	.word	4
	.word	_Label_1741
	.word	-20
	.word	4
	.word	_Label_1742
	.word	-24
	.word	4
	.word	_Label_1743
	.word	-28
	.word	4
	.word	_Label_1744
	.word	-32
	.word	4
	.word	_Label_1745
	.word	-36
	.word	4
	.word	_Label_1746
	.word	-40
	.word	4
	.word	_Label_1747
	.word	-44
	.word	4
	.word	_Label_1748
	.word	-48
	.word	4
	.word	_Label_1749
	.word	-52
	.word	4
	.word	_Label_1750
	.word	-56
	.word	4
	.word	_Label_1751
	.word	-60
	.word	4
	.word	_Label_1752
	.word	-64
	.word	4
	.word	_Label_1753
	.word	-68
	.word	4
	.word	_Label_1754
	.word	-72
	.word	4
	.word	_Label_1755
	.word	-76
	.word	4
	.word	_Label_1756
	.word	-80
	.word	4
	.word	_Label_1757
	.word	-84
	.word	4
	.word	_Label_1758
	.word	-88
	.word	4
	.word	_Label_1759
	.word	-92
	.word	4
	.word	_Label_1760
	.word	-96
	.word	4
	.word	_Label_1761
	.word	-100
	.word	4
	.word	_Label_1762
	.word	-104
	.word	4
	.word	_Label_1763
	.word	-108
	.word	4
	.word	_Label_1764
	.word	-112
	.word	4
	.word	0
_Label_1737:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1738:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_193_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_193_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_4445:
	push	r0
	sub	r1,1,r1
	bne	_Label_4445
	mov	2924,r13		! source line 2924
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2926,r13		! source line 2926
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2927,r13		! source line 2927
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2928,r13		! source line 2928
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1765 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1765  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2929,r13		! source line 2929
	mov	"\0\0AS",r10
!   _temp_1766 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1766) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1768 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1768) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1767 = *_temp_1768  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1766 = _temp_1767  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2930,r13		! source line 2930
	mov	"\0\0AS",r10
!   _temp_1769 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1769) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1771 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1771) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1770 = *_temp_1771  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1769 = _temp_1770  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2931,r13		! source line 2931
	mov	"\0\0AS",r10
!   _temp_1772 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1772) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1774 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1774) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1773 = *_temp_1774  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1772 = _temp_1773  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2931,r13		! source line 2931
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_193_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1775
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1776
	.word	8
	.word	4
	.word	_Label_1777
	.word	12
	.word	4
	.word	_Label_1778
	.word	-16
	.word	4
	.word	_Label_1779
	.word	-9
	.word	1
	.word	_Label_1780
	.word	-20
	.word	4
	.word	_Label_1781
	.word	-24
	.word	4
	.word	_Label_1782
	.word	-10
	.word	1
	.word	_Label_1783
	.word	-28
	.word	4
	.word	_Label_1784
	.word	-32
	.word	4
	.word	_Label_1785
	.word	-11
	.word	1
	.word	_Label_1786
	.word	-36
	.word	4
	.word	_Label_1787
	.word	-12
	.word	1
	.word	_Label_1788
	.word	-40
	.word	4
	.word	_Label_1789
	.word	-44
	.word	4
	.word	0
_Label_1775:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1776:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1777:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1779:
	.byte	'C'
	.ascii	"_temp_1773\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1782:
	.byte	'C'
	.ascii	"_temp_1770\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1785:
	.byte	'C'
	.ascii	"_temp_1767\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1787:
	.byte	'C'
	.ascii	"_temp_1765\0"
	.align
_Label_1788:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1789:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_192_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_192_printFCB,r1
	push	r1
	mov	3,r1
_Label_4446:
	push	r0
	sub	r1,1,r1
	bne	_Label_4446
	mov	2934,r13		! source line 2934
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1791 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1790 = *_temp_1791  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1790  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2935,r13		! source line 2935
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2936,r13		! source line 2936
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2936,r13		! source line 2936
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_192_printFCB:
	.word	_sourceFileName
	.word	_Label_1792
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1793
	.word	8
	.word	4
	.word	_Label_1794
	.word	-12
	.word	4
	.word	_Label_1795
	.word	-16
	.word	4
	.word	0
_Label_1792:
	.ascii	"printFCB\0"
	.align
_Label_1793:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_191_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_191_printOpen,r1
	push	r1
	mov	4,r1
_Label_4447:
	push	r0
	sub	r1,1,r1
	bne	_Label_4447
	mov	2939,r13		! source line 2939
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1796 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1796  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2940,r13		! source line 2940
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1797 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1797  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2941,r13		! source line 2941
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1798 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1798  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2942,r13		! source line 2942
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2943,r13		! source line 2943
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
	mov	2943,r13		! source line 2943
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_191_printOpen:
	.word	_sourceFileName
	.word	_Label_1799
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1800
	.word	8
	.word	4
	.word	_Label_1801
	.word	-12
	.word	4
	.word	_Label_1802
	.word	-16
	.word	4
	.word	_Label_1803
	.word	-20
	.word	4
	.word	0
_Label_1799:
	.ascii	"printOpen\0"
	.align
_Label_1800:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
! 
! ===============  FUNCTION SerialHandlerFunction  ===============
! 
_function_190_SerialHandlerFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_190_SerialHandlerFunction,r1
	push	r1
	mov	2,r1
_Label_4448:
	push	r0
	sub	r1,1,r1
	bne	_Label_4448
	mov	3205,r13		! source line 3205
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3206,r13		! source line 3206
	mov	"\0\0SE",r10
!   _temp_1804 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-12]
!   Send message SerialHandler
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	3206,r13		! source line 3206
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_190_SerialHandlerFunction:
	.word	_sourceFileName
	.word	_Label_1805
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_1806
	.word	8
	.word	4
	.word	_Label_1807
	.word	-12
	.word	4
	.word	0
_Label_1805:
	.ascii	"SerialHandlerFunction\0"
	.align
_Label_1806:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1804\0"
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
_Label_4449:
	push	r0
	sub	r1,1,r1
	bne	_Label_4449
	mov	3333,r13		! source line 3333
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1808 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1808  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3337,r13		! source line 3337
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	3338,r13		! source line 3338
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	3339,r13		! source line 3339
	mov	"\0\0AS",r10
	mov	3339,r13		! source line 3339
	mov	"\0\0SE",r10
!   _temp_1809 = &_P_Kernel_threadManager
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
	mov	3340,r13		! source line 3340
	mov	"\0\0SE",r10
!   _temp_1810 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1810  sizeInBytes=4
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
	mov	3341,r13		! source line 3341
	mov	"\0\0SE",r10
!   _temp_1811 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1811  sizeInBytes=4
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
	mov	3341,r13		! source line 3341
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
	.word	_Label_1812
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1813
	.word	-12
	.word	4
	.word	_Label_1814
	.word	-16
	.word	4
	.word	_Label_1815
	.word	-20
	.word	4
	.word	_Label_1816
	.word	-24
	.word	4
	.word	_Label_1817
	.word	-28
	.word	4
	.word	0
_Label_1812:
	.ascii	"InitFirstProcess\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1817:
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
_Label_4450:
	push	r0
	sub	r1,1,r1
	bne	_Label_4450
	mov	3347,r13		! source line 3347
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3357,r13		! source line 3357
	mov	"\0\0AS",r10
	mov	3357,r13		! source line 3357
	mov	"\0\0SE",r10
!   _temp_1818 = &_P_Kernel_processManager
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
	mov	3358,r13		! source line 3358
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1819 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_1819 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3359,r13		! source line 3359
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1820 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_1820 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3360,r13		! source line 3360
	mov	"\0\0AS",r10
	mov	3360,r13		! source line 3360
	mov	"\0\0SE",r10
!   _temp_1821 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-60]
!   _temp_1822 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1821  sizeInBytes=4
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
	mov	3361,r13		! source line 3361
	mov	"\0\0AS",r10
	mov	3361,r13		! source line 3361
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1824 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_1823 = _temp_1824		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (newOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1823  sizeInBytes=4
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
	mov	3362,r13		! source line 3362
	mov	"\0\0SE",r10
!   _temp_1825 = &_P_Kernel_fileManager
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
	mov	3363,r13		! source line 3363
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1827 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_1828 = _temp_1827 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1826 = *_temp_1828  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUStack = _temp_1826 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	3364,r13		! source line 3364
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1829 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_1829 [999 ] into _temp_1830
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
!   initSStack = _temp_1830		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	3366,r13		! source line 3366
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	3366,r13		! source line 3366
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! SEND STATEMENT...
	mov	3367,r13		! source line 3367
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1831 = pcb + 32
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
	mov	3368,r13		! source line 3368
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1832 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1832 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_1833 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1833  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3369,r13		! source line 3369
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
	mov	3370,r13		! source line 3370
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	3370,r13		! source line 3370
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
	.word	_Label_1834
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1835
	.word	8
	.word	4
	.word	_Label_1836
	.word	-12
	.word	4
	.word	_Label_1837
	.word	-16
	.word	4
	.word	_Label_1838
	.word	-20
	.word	4
	.word	_Label_1839
	.word	-24
	.word	4
	.word	_Label_1840
	.word	-28
	.word	4
	.word	_Label_1841
	.word	-32
	.word	4
	.word	_Label_1842
	.word	-36
	.word	4
	.word	_Label_1843
	.word	-40
	.word	4
	.word	_Label_1844
	.word	-44
	.word	4
	.word	_Label_1845
	.word	-48
	.word	4
	.word	_Label_1846
	.word	-52
	.word	4
	.word	_Label_1847
	.word	-56
	.word	4
	.word	_Label_1848
	.word	-60
	.word	4
	.word	_Label_1849
	.word	-64
	.word	4
	.word	_Label_1850
	.word	-68
	.word	4
	.word	_Label_1851
	.word	-72
	.word	4
	.word	_Label_1852
	.word	-76
	.word	4
	.word	_Label_1853
	.word	-80
	.word	4
	.word	_Label_1854
	.word	-84
	.word	4
	.word	_Label_1855
	.word	-88
	.word	4
	.word	_Label_1856
	.word	-92
	.word	4
	.word	_Label_1857
	.word	-96
	.word	4
	.word	0
_Label_1834:
	.ascii	"StartUserProcess\0"
	.align
_Label_1835:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1852:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_1853:
	.byte	'P'
	.ascii	"newOpenFile\0"
	.align
_Label_1854:
	.byte	'I'
	.ascii	"PC\0"
	.align
_Label_1855:
	.byte	'I'
	.ascii	"initUStack\0"
	.align
_Label_1856:
	.byte	'I'
	.ascii	"initSStack\0"
	.align
_Label_1857:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1858
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1858:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1859
	.word	_sourceFileName
	.word	127		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1859:
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
_Label_4451:
	push	r0
	sub	r1,1,r1
	bne	_Label_4451
	mov	231,r13		! source line 231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1861		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1861
!	jmp	_Label_1860
_Label_1860:
! THEN...
	mov	233,r13		! source line 233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1862 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1862  sizeInBytes=4
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
_Label_1861:
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
	.word	_Label_1864
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1865
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1866
	.word	12
	.word	4
	.word	_Label_1867
	.word	-12
	.word	4
	.word	_Label_1868
	.word	-16
	.word	4
	.word	0
_Label_1864:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1865:
	.ascii	"Pself\0"
	.align
_Label_1866:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1862\0"
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
_Label_4452:
	push	r0
	sub	r1,1,r1
	bne	_Label_4452
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
!   if count != 2147483647 then goto _Label_1870		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1870
!	jmp	_Label_1869
_Label_1869:
! THEN...
	mov	247,r13		! source line 247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1871 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1871  sizeInBytes=4
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
_Label_1870:
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
!   if count > 0 then goto _Label_1873		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1873
!	jmp	_Label_1872
_Label_1872:
! THEN...
	mov	251,r13		! source line 251
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
!   _temp_1874 = &waitingThreads
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
!   _temp_1875 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1875 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_1876 = &_P_Kernel_readyList
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
_Label_1873:
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
	.word	_Label_1877
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1878
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1879
	.word	-12
	.word	4
	.word	_Label_1880
	.word	-16
	.word	4
	.word	_Label_1881
	.word	-20
	.word	4
	.word	_Label_1882
	.word	-24
	.word	4
	.word	_Label_1883
	.word	-28
	.word	4
	.word	_Label_1884
	.word	-32
	.word	4
	.word	0
_Label_1877:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1878:
	.ascii	"Pself\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1883:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1884:
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
_Label_4453:
	push	r0
	sub	r1,1,r1
	bne	_Label_4453
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
!   if count != -2147483648 then goto _Label_1886		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1886
!	jmp	_Label_1885
_Label_1885:
! THEN...
	mov	265,r13		! source line 265
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1887 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1887  sizeInBytes=4
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
_Label_1886:
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
!   if count >= 0 then goto _Label_1889		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1889
!	jmp	_Label_1888
_Label_1888:
! THEN...
	mov	269,r13		! source line 269
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   _temp_1890 = &waitingThreads
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
_Label_1889:
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
	.word	_Label_1891
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1892
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1893
	.word	-12
	.word	4
	.word	_Label_1894
	.word	-16
	.word	4
	.word	_Label_1895
	.word	-20
	.word	4
	.word	0
_Label_1891:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1892:
	.ascii	"Pself\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1895:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1896
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1896:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1897
	.word	_sourceFileName
	.word	140		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1897:
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
_Label_4454:
	push	r0
	sub	r1,1,r1
	bne	_Label_4454
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
	.word	_Label_1899
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1900
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1901
	.word	-12
	.word	4
	.word	0
_Label_1899:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1900:
	.ascii	"Pself\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1898\0"
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
_Label_4455:
	push	r0
	sub	r1,1,r1
	bne	_Label_4455
	mov	301,r13		! source line 301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1903		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1903
!	jmp	_Label_1902
_Label_1902:
! THEN...
	mov	305,r13		! source line 305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1904 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1904  sizeInBytes=4
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
_Label_1903:
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
!   if heldBy == 0 then goto _Label_1908		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1908
!   _temp_1907 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1909
_Label_1908:
!   _temp_1907 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1909:
!   if _temp_1907 then goto _Label_1906 else goto _Label_1905
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1905
	jmp	_Label_1906
_Label_1905:
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
	jmp	_Label_1910
_Label_1906:
! ELSE...
	mov	311,r13		! source line 311
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   _temp_1911 = &waitingThreads
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
_Label_1910:
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
	.word	_Label_1912
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1913
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1914
	.word	-16
	.word	4
	.word	_Label_1915
	.word	-9
	.word	1
	.word	_Label_1916
	.word	-20
	.word	4
	.word	_Label_1917
	.word	-24
	.word	4
	.word	0
_Label_1912:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1913:
	.ascii	"Pself\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1915:
	.byte	'C'
	.ascii	"_temp_1907\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1917:
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
_Label_4456:
	push	r0
	sub	r1,1,r1
	bne	_Label_4456
	mov	319,r13		! source line 319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1919		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1919
!	jmp	_Label_1918
_Label_1918:
! THEN...
	mov	324,r13		! source line 324
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1920 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1920  sizeInBytes=4
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
_Label_1919:
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
!   _temp_1921 = &waitingThreads
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
!   if t == 0 then goto _Label_1923		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1923
!	jmp	_Label_1922
_Label_1922:
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
!   _temp_1924 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1924 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0SE",r10
!   _temp_1925 = &_P_Kernel_readyList
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
	jmp	_Label_1926
_Label_1923:
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
_Label_1926:
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
	.word	_Label_1927
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1929
	.word	-12
	.word	4
	.word	_Label_1930
	.word	-16
	.word	4
	.word	_Label_1931
	.word	-20
	.word	4
	.word	_Label_1932
	.word	-24
	.word	4
	.word	_Label_1933
	.word	-28
	.word	4
	.word	_Label_1934
	.word	-32
	.word	4
	.word	0
_Label_1927:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1928:
	.ascii	"Pself\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1933:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1934:
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
_Label_4457:
	push	r0
	sub	r1,1,r1
	bne	_Label_4457
	mov	340,r13		! source line 340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1937		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1937
!	jmp	_Label_1936
_Label_1936:
!   _temp_1935 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1938
_Label_1937:
!   _temp_1935 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1938:
!   ReturnResult: _temp_1935  (sizeInBytes=1)
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
	.word	_Label_1939
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1940
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1941
	.word	-9
	.word	1
	.word	0
_Label_1939:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1940:
	.ascii	"Pself\0"
	.align
_Label_1941:
	.byte	'C'
	.ascii	"_temp_1935\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1942
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1942:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1943
	.word	_sourceFileName
	.word	154		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1943:
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
_Label_4458:
	push	r0
	sub	r1,1,r1
	bne	_Label_4458
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
	.word	_Label_1945
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1946
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1947
	.word	-12
	.word	4
	.word	0
_Label_1945:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1946:
	.ascii	"Pself\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1944\0"
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
_Label_4459:
	push	r0
	sub	r1,1,r1
	bne	_Label_4459
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
!   Retrieve Result: targetName=_temp_1950  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1950 then goto _Label_1949 else goto _Label_1948
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1948
	jmp	_Label_1949
_Label_1948:
! THEN...
	mov	391,r13		! source line 391
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1951 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1951  sizeInBytes=4
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
_Label_1949:
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
!   _temp_1952 = &waitingThreads
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
	.word	_Label_1953
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1954
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1955
	.word	12
	.word	4
	.word	_Label_1956
	.word	-16
	.word	4
	.word	_Label_1957
	.word	-20
	.word	4
	.word	_Label_1958
	.word	-9
	.word	1
	.word	_Label_1959
	.word	-24
	.word	4
	.word	0
_Label_1953:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1954:
	.ascii	"Pself\0"
	.align
_Label_1955:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1958:
	.byte	'C'
	.ascii	"_temp_1950\0"
	.align
_Label_1959:
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
_Label_4460:
	push	r0
	sub	r1,1,r1
	bne	_Label_4460
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
!   Retrieve Result: targetName=_temp_1962  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1962 then goto _Label_1961 else goto _Label_1960
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1960
	jmp	_Label_1961
_Label_1960:
! THEN...
	mov	408,r13		! source line 408
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1963 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1963  sizeInBytes=4
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
_Label_1961:
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
!   _temp_1964 = &waitingThreads
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
!   if t == 0 then goto _Label_1966		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1966
!	jmp	_Label_1965
_Label_1965:
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
!   _temp_1967 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1967 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
!   _temp_1968 = &_P_Kernel_readyList
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
_Label_1966:
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
	.word	_Label_1969
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1970
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1971
	.word	12
	.word	4
	.word	_Label_1972
	.word	-16
	.word	4
	.word	_Label_1973
	.word	-20
	.word	4
	.word	_Label_1974
	.word	-24
	.word	4
	.word	_Label_1975
	.word	-28
	.word	4
	.word	_Label_1976
	.word	-9
	.word	1
	.word	_Label_1977
	.word	-32
	.word	4
	.word	_Label_1978
	.word	-36
	.word	4
	.word	0
_Label_1969:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1970:
	.ascii	"Pself\0"
	.align
_Label_1971:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1976:
	.byte	'C'
	.ascii	"_temp_1962\0"
	.align
_Label_1977:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1978:
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
_Label_4461:
	push	r0
	sub	r1,1,r1
	bne	_Label_4461
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
!   Retrieve Result: targetName=_temp_1981  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1981 then goto _Label_1980 else goto _Label_1979
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1979
	jmp	_Label_1980
_Label_1979:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1982 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1982  sizeInBytes=4
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
_Label_1980:
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
_Label_1983:
!	jmp	_Label_1984
_Label_1984:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_1986 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1987
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1987
	jmp	_Label_1988
_Label_1987:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_1985
! END IF...
_Label_1988:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1989 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1989 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_1990 = &_P_Kernel_readyList
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
	jmp	_Label_1983
_Label_1985:
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
	.word	_Label_1991
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1992
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1993
	.word	12
	.word	4
	.word	_Label_1994
	.word	-16
	.word	4
	.word	_Label_1995
	.word	-20
	.word	4
	.word	_Label_1996
	.word	-24
	.word	4
	.word	_Label_1997
	.word	-28
	.word	4
	.word	_Label_1998
	.word	-9
	.word	1
	.word	_Label_1999
	.word	-32
	.word	4
	.word	_Label_2000
	.word	-36
	.word	4
	.word	0
_Label_1991:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1992:
	.ascii	"Pself\0"
	.align
_Label_1993:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1998:
	.byte	'C'
	.ascii	"_temp_1981\0"
	.align
_Label_1999:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2000:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_2001
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
_Label_2001:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2002
	.word	_sourceFileName
	.word	167		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2002:
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
_Label_4462:
	push	r0
	sub	r1,1,r1
	bne	_Label_4462
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
!   _temp_2003 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2003) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_2003 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_2004 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_2004 [0 ] into _temp_2005
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
!   Data Move: *_temp_2005 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_2006 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_2006 [999 ] into _temp_2007
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
!   Data Move: *_temp_2007 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_2008 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_2008 [999 ] into _temp_2009
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
!   stackTop = _temp_2009		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_2010 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_2012 = &_temp_2011
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_2012 = _temp_2012 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_2014:
!   Data Move: *_temp_2012 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_2012 = _temp_2012 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_2013 = _temp_2013 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_2013) then goto _Label_2014
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_2014
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_2015 = &_temp_2011
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4463
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4463:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2010 = *_temp_2015  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4464:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4464
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
!   _temp_2016 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_2018 = &_temp_2017
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_2018 = _temp_2018 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_2020:
!   Data Move: *_temp_2018 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2018 = _temp_2018 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2019 = _temp_2019 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2019) then goto _Label_2020
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2020
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_2021 = &_temp_2017
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4465
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4465:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2016 = *_temp_2021  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4466:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4466
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
	.word	_Label_2022
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_2023
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2024
	.word	12
	.word	4
	.word	_Label_2025
	.word	-12
	.word	4
	.word	_Label_2026
	.word	-16
	.word	4
	.word	_Label_2027
	.word	-20
	.word	4
	.word	_Label_2028
	.word	-84
	.word	64
	.word	_Label_2029
	.word	-88
	.word	4
	.word	_Label_2030
	.word	-92
	.word	4
	.word	_Label_2031
	.word	-96
	.word	4
	.word	_Label_2032
	.word	-100
	.word	4
	.word	_Label_2033
	.word	-156
	.word	56
	.word	_Label_2034
	.word	-160
	.word	4
	.word	_Label_2035
	.word	-164
	.word	4
	.word	_Label_2036
	.word	-168
	.word	4
	.word	_Label_2037
	.word	-172
	.word	4
	.word	_Label_2038
	.word	-176
	.word	4
	.word	_Label_2039
	.word	-180
	.word	4
	.word	_Label_2040
	.word	-184
	.word	4
	.word	_Label_2041
	.word	-188
	.word	4
	.word	0
_Label_2022:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2023:
	.ascii	"Pself\0"
	.align
_Label_2024:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2003\0"
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
_Label_4467:
	push	r0
	sub	r1,1,r1
	bne	_Label_4467
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
!   _temp_2042 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_2042  (sizeInBytes=4)
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
!   _temp_2044 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2043  sizeInBytes=4
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
	.word	_Label_2045
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2046
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2047
	.word	12
	.word	4
	.word	_Label_2048
	.word	16
	.word	4
	.word	_Label_2049
	.word	-12
	.word	4
	.word	_Label_2050
	.word	-16
	.word	4
	.word	_Label_2051
	.word	-20
	.word	4
	.word	_Label_2052
	.word	-24
	.word	4
	.word	_Label_2053
	.word	-28
	.word	4
	.word	0
_Label_2045:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_2046:
	.ascii	"Pself\0"
	.align
_Label_2047:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_2048:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2052:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2053:
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
_Label_4468:
	push	r0
	sub	r1,1,r1
	bne	_Label_4468
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_2056 == _P_Kernel_currentThread then goto _Label_2055		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2055
!	jmp	_Label_2054
_Label_2054:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2057 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2057  sizeInBytes=4
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
_Label_2055:
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
!   _temp_2058 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_2060		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2060
!	jmp	_Label_2059
_Label_2059:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_2062		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_2062
!	jmp	_Label_2061
_Label_2061:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2063 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2063  sizeInBytes=4
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
_Label_2062:
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
!   _temp_2065 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2064  sizeInBytes=4
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
_Label_2060:
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
	.word	_Label_2066
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2067
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2068
	.word	-12
	.word	4
	.word	_Label_2069
	.word	-16
	.word	4
	.word	_Label_2070
	.word	-20
	.word	4
	.word	_Label_2071
	.word	-24
	.word	4
	.word	_Label_2072
	.word	-28
	.word	4
	.word	_Label_2073
	.word	-32
	.word	4
	.word	_Label_2074
	.word	-36
	.word	4
	.word	_Label_2075
	.word	-40
	.word	4
	.word	_Label_2076
	.word	-44
	.word	4
	.word	0
_Label_2066:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_2067:
	.ascii	"Pself\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2074:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_2075:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2076:
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
_Label_4469:
	push	r0
	sub	r1,1,r1
	bne	_Label_4469
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_2078		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2078
!	jmp	_Label_2077
_Label_2077:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2079 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2079  sizeInBytes=4
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
_Label_2078:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_2082 == _P_Kernel_currentThread then goto _Label_2081		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2081
!	jmp	_Label_2080
_Label_2080:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2083 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2083  sizeInBytes=4
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
_Label_2081:
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
!   _temp_2084 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_2085
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_2085
	jmp	_Label_2086
_Label_2085:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2087 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2087  sizeInBytes=4
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
_Label_2086:
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
	.word	_Label_2088
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2089
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2090
	.word	-12
	.word	4
	.word	_Label_2091
	.word	-16
	.word	4
	.word	_Label_2092
	.word	-20
	.word	4
	.word	_Label_2093
	.word	-24
	.word	4
	.word	_Label_2094
	.word	-28
	.word	4
	.word	_Label_2095
	.word	-32
	.word	4
	.word	0
_Label_2088:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_2089:
	.ascii	"Pself\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2095:
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
_Label_4470:
	push	r0
	sub	r1,1,r1
	bne	_Label_4470
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_2099 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_2099 [0 ] into _temp_2100
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
!   Data Move: _temp_2098 = *_temp_2100  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_2098 == 606348324 then goto _Label_2097		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2097
!	jmp	_Label_2096
_Label_2096:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2101 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2101  sizeInBytes=4
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
	jmp	_Label_2102
_Label_2097:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_2106 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_2106 [999 ] into _temp_2107
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
!   Data Move: _temp_2105 = *_temp_2107  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2105 == 606348324 then goto _Label_2104		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2104
!	jmp	_Label_2103
_Label_2103:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2108 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2108  sizeInBytes=4
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
_Label_2104:
! END IF...
_Label_2102:
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
	.word	_Label_2109
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2110
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2111
	.word	-12
	.word	4
	.word	_Label_2112
	.word	-16
	.word	4
	.word	_Label_2113
	.word	-20
	.word	4
	.word	_Label_2114
	.word	-24
	.word	4
	.word	_Label_2115
	.word	-28
	.word	4
	.word	_Label_2116
	.word	-32
	.word	4
	.word	_Label_2117
	.word	-36
	.word	4
	.word	_Label_2118
	.word	-40
	.word	4
	.word	0
_Label_2109:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_2110:
	.ascii	"Pself\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2098\0"
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
_Label_4471:
	push	r0
	sub	r1,1,r1
	bne	_Label_4471
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
!   _temp_2119 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_2119  sizeInBytes=4
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
!   _temp_2120 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_2120  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_2121  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2122 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_2122  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2123 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_2123  sizeInBytes=4
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
!   _temp_2128 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2129 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2128  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_2124:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2129 then goto _Label_2127		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2127
_Label_2125:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2130 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2130  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2131 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2131  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2132 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_2132  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2134 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_2134 [i ] into _temp_2135
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
!   Data Move: _temp_2133 = *_temp_2135  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2133  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2136 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_2136  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2138 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_2138 [i ] into _temp_2139
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
!   Data Move: _temp_2137 = *_temp_2139  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2137  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2140 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2140  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2126:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2124
! END FOR
_Label_2127:
! CALL STATEMENT...
!   _temp_2141 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-116]
!   _temp_2142 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2141  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2142  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_2143 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-108]
!   _temp_2145 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_2145 [0 ] into _temp_2146
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
!   _temp_2144 = _temp_2146		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2143  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2144  sizeInBytes=4
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
	be	_Label_2149
	cmp	r1,2
	be	_Label_2150
	cmp	r1,3
	be	_Label_2151
	cmp	r1,4
	be	_Label_2152
	cmp	r1,5
	be	_Label_2153
	jmp	_Label_2147
! CASE 1...
_Label_2149:
! CALL STATEMENT...
!   _temp_2154 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2154  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_2148
! CASE 2...
_Label_2150:
! CALL STATEMENT...
!   _temp_2155 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2155  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_2148
! CASE 3...
_Label_2151:
! CALL STATEMENT...
!   _temp_2156 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2156  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_2148
! CASE 4...
_Label_2152:
! CALL STATEMENT...
!   _temp_2157 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2157  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_2148
! CASE 5...
_Label_2153:
! CALL STATEMENT...
!   _temp_2158 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2158  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_2148
! DEFAULT CASE...
_Label_2147:
! CALL STATEMENT...
!   _temp_2159 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2159  sizeInBytes=4
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
_Label_2148:
! CALL STATEMENT...
!   _temp_2160 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2160  sizeInBytes=4
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
!   _temp_2161 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2161  sizeInBytes=4
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
!   _temp_2166 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2167 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2166  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_2162:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2167 then goto _Label_2165		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2165
_Label_2163:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2168 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2168  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2169 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2169  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2170 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2170  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2172 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_2172 [i ] into _temp_2173
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
!   Data Move: _temp_2171 = *_temp_2173  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2171  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2174 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2174  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2176 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_2176 [i ] into _temp_2177
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
!   Data Move: _temp_2175 = *_temp_2177  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2175  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2178 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2178  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2164:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2162
! END FOR
_Label_2165:
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
	.word	_Label_2179
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_2180
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2181
	.word	-12
	.word	4
	.word	_Label_2182
	.word	-16
	.word	4
	.word	_Label_2183
	.word	-20
	.word	4
	.word	_Label_2184
	.word	-24
	.word	4
	.word	_Label_2185
	.word	-28
	.word	4
	.word	_Label_2186
	.word	-32
	.word	4
	.word	_Label_2187
	.word	-36
	.word	4
	.word	_Label_2188
	.word	-40
	.word	4
	.word	_Label_2189
	.word	-44
	.word	4
	.word	_Label_2190
	.word	-48
	.word	4
	.word	_Label_2191
	.word	-52
	.word	4
	.word	_Label_2192
	.word	-56
	.word	4
	.word	_Label_2193
	.word	-60
	.word	4
	.word	_Label_2194
	.word	-64
	.word	4
	.word	_Label_2195
	.word	-68
	.word	4
	.word	_Label_2196
	.word	-72
	.word	4
	.word	_Label_2197
	.word	-76
	.word	4
	.word	_Label_2198
	.word	-80
	.word	4
	.word	_Label_2199
	.word	-84
	.word	4
	.word	_Label_2200
	.word	-88
	.word	4
	.word	_Label_2201
	.word	-92
	.word	4
	.word	_Label_2202
	.word	-96
	.word	4
	.word	_Label_2203
	.word	-100
	.word	4
	.word	_Label_2204
	.word	-104
	.word	4
	.word	_Label_2205
	.word	-108
	.word	4
	.word	_Label_2206
	.word	-112
	.word	4
	.word	_Label_2207
	.word	-116
	.word	4
	.word	_Label_2208
	.word	-120
	.word	4
	.word	_Label_2209
	.word	-124
	.word	4
	.word	_Label_2210
	.word	-128
	.word	4
	.word	_Label_2211
	.word	-132
	.word	4
	.word	_Label_2212
	.word	-136
	.word	4
	.word	_Label_2213
	.word	-140
	.word	4
	.word	_Label_2214
	.word	-144
	.word	4
	.word	_Label_2215
	.word	-148
	.word	4
	.word	_Label_2216
	.word	-152
	.word	4
	.word	_Label_2217
	.word	-156
	.word	4
	.word	_Label_2218
	.word	-160
	.word	4
	.word	_Label_2219
	.word	-164
	.word	4
	.word	_Label_2220
	.word	-168
	.word	4
	.word	_Label_2221
	.word	-172
	.word	4
	.word	_Label_2222
	.word	-176
	.word	4
	.word	_Label_2223
	.word	-180
	.word	4
	.word	_Label_2224
	.word	-184
	.word	4
	.word	_Label_2225
	.word	-188
	.word	4
	.word	_Label_2226
	.word	-192
	.word	4
	.word	_Label_2227
	.word	-196
	.word	4
	.word	0
_Label_2179:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2180:
	.ascii	"Pself\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2226:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2227:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_2228
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_2228:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2229
	.word	_sourceFileName
	.word	194		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_2229:
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
_Label_4472:
	push	r0
	sub	r1,1,r1
	bne	_Label_4472
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2230 = _StringConst_83
	set	_StringConst_83,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_2230  sizeInBytes=4
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
!   _temp_2231 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_2233 = &_temp_2232
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_2233 = _temp_2233 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2235 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_4473:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4473
!   _temp_2235 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_2237:
!   Data Move: *_temp_2233 = _temp_2235  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_4474:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4474
!   _temp_2233 = _temp_2233 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_2234 = _temp_2234 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_2234) then goto _Label_2237
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_2237
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_2238 = &_temp_2232
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4475
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4475:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2231 = *_temp_2238  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4476:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4476
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
!   _temp_2244 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2245 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2244  (sizeInBytes=4)
	load	[r14+-72],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_2240:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2245 then goto _Label_2243		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2243
_Label_2241:
	mov	702,r13		! source line 702
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_2246 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-64]
!   _temp_2247 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_2247 [i ] into _temp_2248
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
!   Prepare Argument: offset=12  value=_temp_2246  sizeInBytes=4
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
!   _temp_2249 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_2249 [i ] into _temp_2250
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
!   _temp_2251 = _temp_2250 + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_2251 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0SE",r10
!   _temp_2253 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_2253 [i ] into _temp_2254
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
!   _temp_2252 = _temp_2254		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_2255 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2252  sizeInBytes=4
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
_Label_2242:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_2240
! END FOR
_Label_2243:
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
!   _temp_2257 = &threadManagerLock
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
!   _temp_2259 = &aThreadBecameFree
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
	.word	_Label_2260
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_2261
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2262
	.word	-12
	.word	4
	.word	_Label_2263
	.word	-16
	.word	4
	.word	_Label_2264
	.word	-20
	.word	4
	.word	_Label_2265
	.word	-24
	.word	4
	.word	_Label_2266
	.word	-28
	.word	4
	.word	_Label_2267
	.word	-32
	.word	4
	.word	_Label_2268
	.word	-36
	.word	4
	.word	_Label_2269
	.word	-40
	.word	4
	.word	_Label_2270
	.word	-44
	.word	4
	.word	_Label_2271
	.word	-48
	.word	4
	.word	_Label_2272
	.word	-52
	.word	4
	.word	_Label_2273
	.word	-56
	.word	4
	.word	_Label_2274
	.word	-60
	.word	4
	.word	_Label_2275
	.word	-64
	.word	4
	.word	_Label_2276
	.word	-68
	.word	4
	.word	_Label_2277
	.word	-72
	.word	4
	.word	_Label_2278
	.word	-76
	.word	4
	.word	_Label_2279
	.word	-80
	.word	4
	.word	_Label_2280
	.word	-84
	.word	4
	.word	_Label_2281
	.word	-4248
	.word	4164
	.word	_Label_2282
	.word	-4252
	.word	4
	.word	_Label_2283
	.word	-4256
	.word	4
	.word	_Label_2284
	.word	-45900
	.word	41644
	.word	_Label_2285
	.word	-45904
	.word	4
	.word	_Label_2286
	.word	-45908
	.word	4
	.word	_Label_2287
	.word	-45912
	.word	4
	.word	0
_Label_2260:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2261:
	.ascii	"Pself\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2287:
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
_Label_4477:
	push	r0
	sub	r1,1,r1
	bne	_Label_4477
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
!   _temp_2288 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2288  sizeInBytes=4
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
!   _temp_2293 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2294 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2293  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_2289:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2294 then goto _Label_2292		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2292
_Label_2290:
	mov	727,r13		! source line 727
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2295 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2295  sizeInBytes=4
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
!   _temp_2296 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2296  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2298 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2298 [i ] into _temp_2299
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
!   _temp_2297 = _temp_2299		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2297  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CA",r10
	call	_function_197_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_2291:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2289
! END FOR
_Label_2292:
! CALL STATEMENT...
!   _temp_2300 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2300  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0SE",r10
!   _temp_2301 = _function_196_PrintObjectAddr
	set	_function_196_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2302 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2301  sizeInBytes=4
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
	.word	_Label_2303
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2304
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2305
	.word	-12
	.word	4
	.word	_Label_2306
	.word	-16
	.word	4
	.word	_Label_2307
	.word	-20
	.word	4
	.word	_Label_2308
	.word	-24
	.word	4
	.word	_Label_2309
	.word	-28
	.word	4
	.word	_Label_2310
	.word	-32
	.word	4
	.word	_Label_2311
	.word	-36
	.word	4
	.word	_Label_2312
	.word	-40
	.word	4
	.word	_Label_2313
	.word	-44
	.word	4
	.word	_Label_2314
	.word	-48
	.word	4
	.word	_Label_2315
	.word	-52
	.word	4
	.word	_Label_2316
	.word	-56
	.word	4
	.word	_Label_2317
	.word	-60
	.word	4
	.word	0
_Label_2303:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2304:
	.ascii	"Pself\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2316:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2317:
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
_Label_4478:
	push	r0
	sub	r1,1,r1
	bne	_Label_4478
	mov	741,r13		! source line 741
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_2318 = &threadManagerLock
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
_Label_2319:
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_2322 = &freeList
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
!   if result==true then goto _Label_2320 else goto _Label_2321
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2321
	jmp	_Label_2320
_Label_2320:
	mov	751,r13		! source line 751
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0SE",r10
!   _temp_2323 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2324 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2323  sizeInBytes=4
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
	jmp	_Label_2319
_Label_2321:
! ASSIGNMENT STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0AS",r10
	mov	754,r13		! source line 754
	mov	"\0\0SE",r10
!   _temp_2325 = &freeList
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
!   _temp_2326 = avaiThread + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2326 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0SE",r10
!   _temp_2327 = &threadManagerLock
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
	.word	_Label_2328
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2329
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2330
	.word	-12
	.word	4
	.word	_Label_2331
	.word	-16
	.word	4
	.word	_Label_2332
	.word	-20
	.word	4
	.word	_Label_2333
	.word	-24
	.word	4
	.word	_Label_2334
	.word	-28
	.word	4
	.word	_Label_2335
	.word	-32
	.word	4
	.word	_Label_2336
	.word	-36
	.word	4
	.word	_Label_2337
	.word	-40
	.word	4
	.word	0
_Label_2328:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2329:
	.ascii	"Pself\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2337:
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
_Label_4479:
	push	r0
	sub	r1,1,r1
	bne	_Label_4479
	mov	762,r13		! source line 762
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0SE",r10
!   _temp_2338 = &threadManagerLock
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
!   _temp_2339 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2339 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_2340 = &freeList
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
!   _temp_2341 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2342 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2341  sizeInBytes=4
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
!   _temp_2343 = &threadManagerLock
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
	.word	_Label_2344
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2345
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2346
	.word	12
	.word	4
	.word	_Label_2347
	.word	-12
	.word	4
	.word	_Label_2348
	.word	-16
	.word	4
	.word	_Label_2349
	.word	-20
	.word	4
	.word	_Label_2350
	.word	-24
	.word	4
	.word	_Label_2351
	.word	-28
	.word	4
	.word	_Label_2352
	.word	-32
	.word	4
	.word	0
_Label_2344:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2345:
	.ascii	"Pself\0"
	.align
_Label_2346:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2353
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2353:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2354
	.word	_sourceFileName
	.word	215		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2354:
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
_Label_4480:
	push	r0
	sub	r1,1,r1
	bne	_Label_4480
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
_Label_4481:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4481
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_2356 = &addrSpace
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
!   _temp_2357 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2359 = &_temp_2358
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2359 = _temp_2359 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2361:
!   Data Move: *_temp_2359 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2359 = _temp_2359 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2360 = _temp_2360 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2360) then goto _Label_2361
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2361
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2362 = &_temp_2358
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4482
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4482:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2357 = *_temp_2362  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4483:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4483
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
	.word	_Label_2363
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2364
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2365
	.word	-12
	.word	4
	.word	_Label_2366
	.word	-16
	.word	4
	.word	_Label_2367
	.word	-20
	.word	4
	.word	_Label_2368
	.word	-64
	.word	44
	.word	_Label_2369
	.word	-68
	.word	4
	.word	_Label_2370
	.word	-72
	.word	4
	.word	_Label_2371
	.word	-76
	.word	4
	.word	0
_Label_2363:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2364:
	.ascii	"Pself\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2355\0"
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
_Label_4484:
	push	r0
	sub	r1,1,r1
	bne	_Label_4484
	mov	798,r13		! source line 798
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2372) then goto _runtimeErrorNullPointer
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
!   _temp_2373 = &addrSpace
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
!   _temp_2374 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2374  sizeInBytes=4
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
	call	_function_197_ThreadPrintShort
! CALL STATEMENT...
!   _temp_2375 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2375  sizeInBytes=4
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
!   _temp_2380 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2381 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2380  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-60]
_Label_2376:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2381 then goto _Label_2379		
	load	[r14+-60],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2379
_Label_2377:
	mov	810,r13		! source line 810
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	811,r13		! source line 811
	mov	"\0\0IF",r10
!   _temp_2385 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Move address of _temp_2385 [i ] into _temp_2386
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
!   Data Move: _temp_2384 = *_temp_2386  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2384 == 0 then goto _Label_2383		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2383
!	jmp	_Label_2382
_Label_2382:
! THEN...
	mov	812,r13		! source line 812
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0SE",r10
!   _temp_2388 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_2388 [i ] into _temp_2389
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
!   Data Move: _temp_2387 = *_temp_2389  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2387) then goto _runtimeErrorNullPointer
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
_Label_2383:
!   Increment the FOR-LOOP index variable and jump back
_Label_2378:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2376
! END FOR
_Label_2379:
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
	.word	_Label_2390
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2391
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2392
	.word	-12
	.word	4
	.word	_Label_2393
	.word	-16
	.word	4
	.word	_Label_2394
	.word	-20
	.word	4
	.word	_Label_2395
	.word	-24
	.word	4
	.word	_Label_2396
	.word	-28
	.word	4
	.word	_Label_2397
	.word	-32
	.word	4
	.word	_Label_2398
	.word	-36
	.word	4
	.word	_Label_2399
	.word	-40
	.word	4
	.word	_Label_2400
	.word	-44
	.word	4
	.word	_Label_2401
	.word	-48
	.word	4
	.word	_Label_2402
	.word	-52
	.word	4
	.word	_Label_2403
	.word	-56
	.word	4
	.word	_Label_2404
	.word	-60
	.word	4
	.word	0
_Label_2390:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2391:
	.ascii	"Pself\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2404:
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
_Label_4485:
	push	r0
	sub	r1,1,r1
	bne	_Label_4485
	mov	821,r13		! source line 821
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2405 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2405  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2406  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	826,r13		! source line 826
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2407 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2407  sizeInBytes=4
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
!   _temp_2408 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2408  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	829,r13		! source line 829
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	830,r13		! source line 830
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2410		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2410
!	jmp	_Label_2409
_Label_2409:
! THEN...
	mov	831,r13		! source line 831
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2411 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2411  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2412
_Label_2410:
! ELSE...
	mov	832,r13		! source line 832
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2414		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2414
!	jmp	_Label_2413
_Label_2413:
! THEN...
	mov	833,r13		! source line 833
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2415 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2415  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	833,r13		! source line 833
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2416
_Label_2414:
! ELSE...
	mov	834,r13		! source line 834
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	834,r13		! source line 834
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2418		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2418
!	jmp	_Label_2417
_Label_2417:
! THEN...
	mov	835,r13		! source line 835
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2419 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2419  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2420
_Label_2418:
! ELSE...
	mov	837,r13		! source line 837
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2421 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2421  sizeInBytes=4
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
_Label_2420:
! END IF...
_Label_2416:
! END IF...
_Label_2412:
! CALL STATEMENT...
!   _temp_2422 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2422  sizeInBytes=4
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
!   _temp_2423 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2423  sizeInBytes=4
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
	.word	_Label_2424
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2425
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2426
	.word	-12
	.word	4
	.word	_Label_2427
	.word	-16
	.word	4
	.word	_Label_2428
	.word	-20
	.word	4
	.word	_Label_2429
	.word	-24
	.word	4
	.word	_Label_2430
	.word	-28
	.word	4
	.word	_Label_2431
	.word	-32
	.word	4
	.word	_Label_2432
	.word	-36
	.word	4
	.word	_Label_2433
	.word	-40
	.word	4
	.word	_Label_2434
	.word	-44
	.word	4
	.word	_Label_2435
	.word	-48
	.word	4
	.word	0
_Label_2424:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2425:
	.ascii	"Pself\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2436
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
_Label_2436:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2437
	.word	_sourceFileName
	.word	235		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2437:
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
_Label_4486:
	push	r0
	sub	r1,1,r1
	bne	_Label_4486
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
!   _temp_2439 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1948]
!   NEW ARRAY Constructor...
!   _temp_2441 = &_temp_2440
	add	r14,-1944,r1
	store	r1,[r14+-260]
!   _temp_2441 = _temp_2441 + 4
	load	[r14+-260],r1
	add	r1,4,r1
	store	r1,[r14+-260]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2443 = zeros  (sizeInBytes=168)
	add	r14,-252,r4
	mov	42,r3
_Label_4487:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4487
!   _temp_2443 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-252]
	mov	10,r1
	store	r1,[r14+-256]
_Label_2445:
!   Data Move: *_temp_2441 = _temp_2443  (sizeInBytes=168)
	add	r14,-252,r5
	load	[r14+-260],r4
	mov	42,r3
_Label_4488:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4488
!   _temp_2441 = _temp_2441 + 168
	load	[r14+-260],r1
	add	r1,168,r1
	store	r1,[r14+-260]
!   _temp_2442 = _temp_2442 + -1
	load	[r14+-256],r1
	add	r1,-1,r1
	store	r1,[r14+-256]
!   if intNotZero (_temp_2442) then goto _Label_2445
	load	[r14+-256],r1
	cmp	r1,r0
	bne	_Label_2445
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1944]
!   _temp_2446 = &_temp_2440
	add	r14,-1944,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	load	[r14+-1948],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4489
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4489:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2439 = *_temp_2446  (sizeInBytes=1684)
	load	[r14+-80],r5
	load	[r14+-1948],r4
	mov	421,r3
_Label_4490:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4490
! FOR STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2451 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2452 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2451  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-1956]
_Label_2447:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2452 then goto _Label_2450		
	load	[r14+-1956],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2450
_Label_2448:
	mov	865,r13		! source line 865
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0SE",r10
!   _temp_2453 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_2453 [i ] into _temp_2454
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
!   _temp_2455 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_2455 [i ] into _temp_2456
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
!   _temp_2457 = _temp_2456 + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_2457 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0SE",r10
!   _temp_2459 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2459 [i ] into _temp_2460
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
!   _temp_2458 = _temp_2460		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_2461 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2458  sizeInBytes=4
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
_Label_2449:
!   i = i + 1
	load	[r14+-1956],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1956]
	jmp	_Label_2447
! END FOR
_Label_2450:
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
!   _temp_2463 = &processManagerLock
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
!   _temp_2465 = &aProcessBecameFree
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
!   _temp_2467 = &aProcessDied
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
	.word	_Label_2468
	.word	4		! total size of parameters
	.word	1956		! frame size = 1956
	.word	_Label_2469
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2470
	.word	-12
	.word	4
	.word	_Label_2471
	.word	-16
	.word	4
	.word	_Label_2472
	.word	-20
	.word	4
	.word	_Label_2473
	.word	-24
	.word	4
	.word	_Label_2474
	.word	-28
	.word	4
	.word	_Label_2475
	.word	-32
	.word	4
	.word	_Label_2476
	.word	-36
	.word	4
	.word	_Label_2477
	.word	-40
	.word	4
	.word	_Label_2478
	.word	-44
	.word	4
	.word	_Label_2479
	.word	-48
	.word	4
	.word	_Label_2480
	.word	-52
	.word	4
	.word	_Label_2481
	.word	-56
	.word	4
	.word	_Label_2482
	.word	-60
	.word	4
	.word	_Label_2483
	.word	-64
	.word	4
	.word	_Label_2484
	.word	-68
	.word	4
	.word	_Label_2485
	.word	-72
	.word	4
	.word	_Label_2486
	.word	-76
	.word	4
	.word	_Label_2487
	.word	-80
	.word	4
	.word	_Label_2488
	.word	-84
	.word	4
	.word	_Label_2489
	.word	-252
	.word	168
	.word	_Label_2490
	.word	-256
	.word	4
	.word	_Label_2491
	.word	-260
	.word	4
	.word	_Label_2492
	.word	-1944
	.word	1684
	.word	_Label_2493
	.word	-1948
	.word	4
	.word	_Label_2494
	.word	-1952
	.word	4
	.word	_Label_2495
	.word	-1956
	.word	4
	.word	0
_Label_2468:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2469:
	.ascii	"Pself\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2495:
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
_Label_4491:
	push	r0
	sub	r1,1,r1
	bne	_Label_4491
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
!   _temp_2496 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2496  sizeInBytes=4
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
!   _temp_2501 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2502 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2501  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2497:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2502 then goto _Label_2500		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2500
_Label_2498:
	mov	893,r13		! source line 893
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2503 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2503  sizeInBytes=4
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
!   _temp_2504 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2504  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	896,r13		! source line 896
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_2505 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2505 [i ] into _temp_2506
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
_Label_2499:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2497
! END FOR
_Label_2500:
! CALL STATEMENT...
!   _temp_2507 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2507  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	899,r13		! source line 899
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_2508 = _function_196_PrintObjectAddr
	set	_function_196_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2509 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2508  sizeInBytes=4
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
	.word	_Label_2510
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2511
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2512
	.word	-12
	.word	4
	.word	_Label_2513
	.word	-16
	.word	4
	.word	_Label_2514
	.word	-20
	.word	4
	.word	_Label_2515
	.word	-24
	.word	4
	.word	_Label_2516
	.word	-28
	.word	4
	.word	_Label_2517
	.word	-32
	.word	4
	.word	_Label_2518
	.word	-36
	.word	4
	.word	_Label_2519
	.word	-40
	.word	4
	.word	_Label_2520
	.word	-44
	.word	4
	.word	_Label_2521
	.word	-48
	.word	4
	.word	_Label_2522
	.word	-52
	.word	4
	.word	_Label_2523
	.word	-56
	.word	4
	.word	0
_Label_2510:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2511:
	.ascii	"Pself\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2522:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2523:
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
_Label_4492:
	push	r0
	sub	r1,1,r1
	bne	_Label_4492
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
!   _temp_2524 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2524  sizeInBytes=4
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
!   _temp_2529 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2530 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2529  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2525:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2530 then goto _Label_2528		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2528
_Label_2526:
	mov	916,r13		! source line 916
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2531 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2531  sizeInBytes=4
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
!   _temp_2532 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2532 [i ] into _temp_2533
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
_Label_2527:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2525
! END FOR
_Label_2528:
! CALL STATEMENT...
!   _temp_2534 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2534  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	921,r13		! source line 921
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0SE",r10
!   _temp_2535 = _function_196_PrintObjectAddr
	set	_function_196_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2536 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2535  sizeInBytes=4
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
	.word	_Label_2537
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2538
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2539
	.word	-12
	.word	4
	.word	_Label_2540
	.word	-16
	.word	4
	.word	_Label_2541
	.word	-20
	.word	4
	.word	_Label_2542
	.word	-24
	.word	4
	.word	_Label_2543
	.word	-28
	.word	4
	.word	_Label_2544
	.word	-32
	.word	4
	.word	_Label_2545
	.word	-36
	.word	4
	.word	_Label_2546
	.word	-40
	.word	4
	.word	_Label_2547
	.word	-44
	.word	4
	.word	_Label_2548
	.word	-48
	.word	4
	.word	_Label_2549
	.word	-52
	.word	4
	.word	0
_Label_2537:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2538:
	.ascii	"Pself\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2548:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2549:
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
_Label_4493:
	push	r0
	sub	r1,1,r1
	bne	_Label_4493
	mov	929,r13		! source line 929
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0SE",r10
!   _temp_2550 = &processManagerLock
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
_Label_2551:
	mov	937,r13		! source line 937
	mov	"\0\0SE",r10
!   _temp_2554 = &freeList
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
!   if result==true then goto _Label_2552 else goto _Label_2553
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2553
	jmp	_Label_2552
_Label_2552:
	mov	937,r13		! source line 937
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0SE",r10
!   _temp_2555 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2556 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2555  sizeInBytes=4
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
	jmp	_Label_2551
_Label_2553:
! ASSIGNMENT STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0AS",r10
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_2557 = &freeList
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
!   _temp_2558 = nextProcess + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2558 = nextPid  (sizeInBytes=4)
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
!   _temp_2559 = nextProcess + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2559 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0SE",r10
!   _temp_2560 = &processManagerLock
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
	.word	_Label_2561
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2562
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2563
	.word	-12
	.word	4
	.word	_Label_2564
	.word	-16
	.word	4
	.word	_Label_2565
	.word	-20
	.word	4
	.word	_Label_2566
	.word	-24
	.word	4
	.word	_Label_2567
	.word	-28
	.word	4
	.word	_Label_2568
	.word	-32
	.word	4
	.word	_Label_2569
	.word	-36
	.word	4
	.word	_Label_2570
	.word	-40
	.word	4
	.word	_Label_2571
	.word	-44
	.word	4
	.word	0
_Label_2561:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2562:
	.ascii	"Pself\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2560\0"
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
	.ascii	"_temp_2550\0"
	.align
_Label_2571:
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
_Label_4494:
	push	r0
	sub	r1,1,r1
	bne	_Label_4494
	mov	950,r13		! source line 950
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0SE",r10
!   _temp_2572 = &processManagerLock
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
!   _temp_2573 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2573 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_2574 = &freeList
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
!   _temp_2575 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2576 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2575  sizeInBytes=4
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
!   _temp_2577 = &processManagerLock
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
	.word	_Label_2578
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2579
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2580
	.word	12
	.word	4
	.word	_Label_2581
	.word	-12
	.word	4
	.word	_Label_2582
	.word	-16
	.word	4
	.word	_Label_2583
	.word	-20
	.word	4
	.word	_Label_2584
	.word	-24
	.word	4
	.word	_Label_2585
	.word	-28
	.word	4
	.word	_Label_2586
	.word	-32
	.word	4
	.word	0
_Label_2578:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2579:
	.ascii	"Pself\0"
	.align
_Label_2580:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2572\0"
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
_Label_4495:
	push	r0
	sub	r1,1,r1
	bne	_Label_4495
	mov	964,r13		! source line 964
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0SE",r10
!   _temp_2587 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-244]
!   _temp_2588 = _temp_2587 + 1688
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
!   _temp_2593 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2594 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-232]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2593  (sizeInBytes=4)
	load	[r14+-236],r1
	store	r1,[r14+-248]
_Label_2589:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2594 then goto _Label_2592		
	load	[r14+-248],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2592
_Label_2590:
	mov	973,r13		! source line 973
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0IF",r10
!   _temp_2598 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-224]
!   _temp_2599 = _temp_2598 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Move address of _temp_2599 [i ] into _temp_2600
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
!   _temp_2601 = _temp_2600 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
!   Data Move: _temp_2597 = *_temp_2601  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2603 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_2602 = *_temp_2603  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if _temp_2597 != _temp_2602 then goto _Label_2596		(int)
	load	[r14+-228],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bne	_Label_2596
!	jmp	_Label_2595
_Label_2595:
! THEN...
	mov	975,r13		! source line 975
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
!   _temp_2604 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-200]
!   _temp_2605 = _temp_2604 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Move address of _temp_2605 [i ] into _temp_2606
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
!   parentPCB = _temp_2606		(4 bytes)
	load	[r14+-192],r1
	store	r1,[r14+-252]
! END IF...
_Label_2596:
! IF STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0IF",r10
!   _temp_2611 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_2612 = _temp_2611 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_2612 [i ] into _temp_2613
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
!   _temp_2614 = _temp_2613 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2610 = *_temp_2614  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_2610 != 2 then goto _Label_2608		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2608
!	jmp	_Label_2609
_Label_2609:
!   _temp_2616 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_2617 = _temp_2616 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_2617 [i ] into _temp_2618
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
!   _temp_2619 = _temp_2618 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_2615 = *_temp_2619  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2621 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_2620 = *_temp_2621  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_2615 != _temp_2620 then goto _Label_2608		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_2608
!	jmp	_Label_2607
_Label_2607:
! THEN...
	mov	978,r13		! source line 978
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0AS",r10
!   _temp_2622 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_2623 = _temp_2622 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2623 [i ] into _temp_2624
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
!   _temp_2625 = _temp_2624 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_2625 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_2627 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_2628 = _temp_2627 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_2628 [i ] into _temp_2629
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
!   _temp_2626 = _temp_2629		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_2630 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_2631 = _temp_2630 + 1724
	load	[r14+-108],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2626  sizeInBytes=4
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
!   _temp_2633 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_2634 = _temp_2633 + 1688
	load	[r14+-96],r1
	add	r1,1688,r1
	store	r1,[r14+-92]
!   _temp_2632 = _temp_2634		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_2635 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2636 = _temp_2635 + 1708
	load	[r14+-88],r1
	add	r1,1708,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_2632  sizeInBytes=4
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
_Label_2608:
!   Increment the FOR-LOOP index variable and jump back
_Label_2591:
!   i = i + 1
	load	[r14+-248],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
	jmp	_Label_2589
! END FOR
_Label_2592:
! IF STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0IF",r10
!   if intIsZero (parentPCB) then goto _Label_2638
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_2638
!	jmp	_Label_2639
_Label_2639:
!   if intIsZero (parentPCB) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2641 = parentPCB + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2640 = *_temp_2641  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2640 != 1 then goto _Label_2638		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2638
!	jmp	_Label_2637
_Label_2637:
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
!   _temp_2642 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_2642 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0SE",r10
!   _temp_2644 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2645 = _temp_2644 + 1688
	load	[r14+-64],r1
	add	r1,1688,r1
	store	r1,[r14+-60]
!   _temp_2643 = _temp_2645		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2646 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_2647 = _temp_2646 + 1736
	load	[r14+-56],r1
	add	r1,1736,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2643  sizeInBytes=4
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
	jmp	_Label_2648
_Label_2638:
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
!   _temp_2649 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2649 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0SE",r10
!   _temp_2650 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2651 = _temp_2650 + 1724
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
!   _temp_2653 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2654 = _temp_2653 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2652 = _temp_2654		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2655 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2656 = _temp_2655 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2652  sizeInBytes=4
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
_Label_2648:
! SEND STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0SE",r10
!   _temp_2657 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2658 = _temp_2657 + 1688
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
	.word	_Label_2659
	.word	8		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_2660
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2661
	.word	12
	.word	4
	.word	_Label_2662
	.word	-12
	.word	4
	.word	_Label_2663
	.word	-16
	.word	4
	.word	_Label_2664
	.word	-20
	.word	4
	.word	_Label_2665
	.word	-24
	.word	4
	.word	_Label_2666
	.word	-28
	.word	4
	.word	_Label_2667
	.word	-32
	.word	4
	.word	_Label_2668
	.word	-36
	.word	4
	.word	_Label_2669
	.word	-40
	.word	4
	.word	_Label_2670
	.word	-44
	.word	4
	.word	_Label_2671
	.word	-48
	.word	4
	.word	_Label_2672
	.word	-52
	.word	4
	.word	_Label_2673
	.word	-56
	.word	4
	.word	_Label_2674
	.word	-60
	.word	4
	.word	_Label_2675
	.word	-64
	.word	4
	.word	_Label_2676
	.word	-68
	.word	4
	.word	_Label_2677
	.word	-72
	.word	4
	.word	_Label_2678
	.word	-76
	.word	4
	.word	_Label_2679
	.word	-80
	.word	4
	.word	_Label_2680
	.word	-84
	.word	4
	.word	_Label_2681
	.word	-88
	.word	4
	.word	_Label_2682
	.word	-92
	.word	4
	.word	_Label_2683
	.word	-96
	.word	4
	.word	_Label_2684
	.word	-100
	.word	4
	.word	_Label_2685
	.word	-104
	.word	4
	.word	_Label_2686
	.word	-108
	.word	4
	.word	_Label_2687
	.word	-112
	.word	4
	.word	_Label_2688
	.word	-116
	.word	4
	.word	_Label_2689
	.word	-120
	.word	4
	.word	_Label_2690
	.word	-124
	.word	4
	.word	_Label_2691
	.word	-128
	.word	4
	.word	_Label_2692
	.word	-132
	.word	4
	.word	_Label_2693
	.word	-136
	.word	4
	.word	_Label_2694
	.word	-140
	.word	4
	.word	_Label_2695
	.word	-144
	.word	4
	.word	_Label_2696
	.word	-148
	.word	4
	.word	_Label_2697
	.word	-152
	.word	4
	.word	_Label_2698
	.word	-156
	.word	4
	.word	_Label_2699
	.word	-160
	.word	4
	.word	_Label_2700
	.word	-164
	.word	4
	.word	_Label_2701
	.word	-168
	.word	4
	.word	_Label_2702
	.word	-172
	.word	4
	.word	_Label_2703
	.word	-176
	.word	4
	.word	_Label_2704
	.word	-180
	.word	4
	.word	_Label_2705
	.word	-184
	.word	4
	.word	_Label_2706
	.word	-188
	.word	4
	.word	_Label_2707
	.word	-192
	.word	4
	.word	_Label_2708
	.word	-196
	.word	4
	.word	_Label_2709
	.word	-200
	.word	4
	.word	_Label_2710
	.word	-204
	.word	4
	.word	_Label_2711
	.word	-208
	.word	4
	.word	_Label_2712
	.word	-212
	.word	4
	.word	_Label_2713
	.word	-216
	.word	4
	.word	_Label_2714
	.word	-220
	.word	4
	.word	_Label_2715
	.word	-224
	.word	4
	.word	_Label_2716
	.word	-228
	.word	4
	.word	_Label_2717
	.word	-232
	.word	4
	.word	_Label_2718
	.word	-236
	.word	4
	.word	_Label_2719
	.word	-240
	.word	4
	.word	_Label_2720
	.word	-244
	.word	4
	.word	_Label_2721
	.word	-248
	.word	4
	.word	_Label_2722
	.word	-252
	.word	4
	.word	0
_Label_2659:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2660:
	.ascii	"Pself\0"
	.align
_Label_2661:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2721:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2722:
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
_Label_4496:
	push	r0
	sub	r1,1,r1
	bne	_Label_4496
	mov	999,r13		! source line 999
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0SE",r10
!   _temp_2723 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2724 = _temp_2723 + 1688
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
_Label_2725:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2729 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2728 = *_temp_2729  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2728 == 2 then goto _Label_2727		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2727
!	jmp	_Label_2726
_Label_2726:
	mov	1007,r13		! source line 1007
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0SE",r10
!   _temp_2731 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_2732 = _temp_2731 + 1688
	load	[r14+-68],r1
	add	r1,1688,r1
	store	r1,[r14+-64]
!   _temp_2730 = _temp_2732		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_2733 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_2734 = _temp_2733 + 1736
	load	[r14+-60],r1
	add	r1,1736,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_2730  sizeInBytes=4
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
	jmp	_Label_2725
_Label_2727:
! ASSIGNMENT STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2735 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: procExitStaus = *_temp_2735  (sizeInBytes=4)
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
!   _temp_2736 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2736 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_2737 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2738 = _temp_2737 + 1724
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
!   _temp_2740 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2741 = _temp_2740 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2739 = _temp_2741		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2742 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2743 = _temp_2742 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2739  sizeInBytes=4
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
!   _temp_2744 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2745 = _temp_2744 + 1688
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
	.word	_Label_2746
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_2747
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2748
	.word	12
	.word	4
	.word	_Label_2749
	.word	-12
	.word	4
	.word	_Label_2750
	.word	-16
	.word	4
	.word	_Label_2751
	.word	-20
	.word	4
	.word	_Label_2752
	.word	-24
	.word	4
	.word	_Label_2753
	.word	-28
	.word	4
	.word	_Label_2754
	.word	-32
	.word	4
	.word	_Label_2755
	.word	-36
	.word	4
	.word	_Label_2756
	.word	-40
	.word	4
	.word	_Label_2757
	.word	-44
	.word	4
	.word	_Label_2758
	.word	-48
	.word	4
	.word	_Label_2759
	.word	-52
	.word	4
	.word	_Label_2760
	.word	-56
	.word	4
	.word	_Label_2761
	.word	-60
	.word	4
	.word	_Label_2762
	.word	-64
	.word	4
	.word	_Label_2763
	.word	-68
	.word	4
	.word	_Label_2764
	.word	-72
	.word	4
	.word	_Label_2765
	.word	-76
	.word	4
	.word	_Label_2766
	.word	-80
	.word	4
	.word	_Label_2767
	.word	-84
	.word	4
	.word	_Label_2768
	.word	-88
	.word	4
	.word	_Label_2769
	.word	-92
	.word	4
	.word	0
_Label_2746:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2747:
	.ascii	"Pself\0"
	.align
_Label_2748:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2769:
	.byte	'I'
	.ascii	"procExitStaus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2770
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2770:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2771
	.word	_sourceFileName
	.word	258		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2771:
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
_Label_4497:
	push	r0
	sub	r1,1,r1
	bne	_Label_4497
	mov	1078,r13		! source line 1078
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2772 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2772  sizeInBytes=4
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
!   _temp_2774 = &framesInUse
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
!   _temp_2776 = &frameManagerLock
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
!   _temp_2778 = &newFramesAvailable
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
!   _temp_2783 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2784 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2783  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2779:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2784 then goto _Label_2782		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2782
_Label_2780:
	mov	1097,r13		! source line 1097
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2787 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2787) then goto _Label_2786
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2786
!	jmp	_Label_2785
_Label_2785:
! THEN...
	mov	1101,r13		! source line 1101
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2788 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2788  sizeInBytes=4
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
_Label_2786:
!   Increment the FOR-LOOP index variable and jump back
_Label_2781:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2779
! END FOR
_Label_2782:
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
	.word	_Label_2789
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2790
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2791
	.word	-12
	.word	4
	.word	_Label_2792
	.word	-16
	.word	4
	.word	_Label_2793
	.word	-20
	.word	4
	.word	_Label_2794
	.word	-24
	.word	4
	.word	_Label_2795
	.word	-28
	.word	4
	.word	_Label_2796
	.word	-32
	.word	4
	.word	_Label_2797
	.word	-36
	.word	4
	.word	_Label_2798
	.word	-40
	.word	4
	.word	_Label_2799
	.word	-44
	.word	4
	.word	_Label_2800
	.word	-48
	.word	4
	.word	_Label_2801
	.word	-52
	.word	4
	.word	_Label_2802
	.word	-56
	.word	4
	.word	0
_Label_2789:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2790:
	.ascii	"Pself\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2802:
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
_Label_4498:
	push	r0
	sub	r1,1,r1
	bne	_Label_4498
	mov	1108,r13		! source line 1108
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0SE",r10
!   _temp_2803 = &frameManagerLock
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
!   _temp_2804 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2804  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1113,r13		! source line 1113
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2805 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2805  sizeInBytes=4
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
!   _temp_2806 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2806  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1115,r13		! source line 1115
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1116,r13		! source line 1116
	mov	"\0\0SE",r10
!   _temp_2807 = &framesInUse
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
!   _temp_2808 = &frameManagerLock
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
	.word	_Label_2809
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2810
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2811
	.word	-12
	.word	4
	.word	_Label_2812
	.word	-16
	.word	4
	.word	_Label_2813
	.word	-20
	.word	4
	.word	_Label_2814
	.word	-24
	.word	4
	.word	_Label_2815
	.word	-28
	.word	4
	.word	_Label_2816
	.word	-32
	.word	4
	.word	0
_Label_2809:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2810:
	.ascii	"Pself\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2803\0"
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
_Label_4499:
	push	r0
	sub	r1,1,r1
	bne	_Label_4499
	mov	1122,r13		! source line 1122
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0SE",r10
!   _temp_2817 = &frameManagerLock
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
_Label_2818:
!   if numberFreeFrames >= 1 then goto _Label_2820		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2820
!	jmp	_Label_2819
_Label_2819:
	mov	1133,r13		! source line 1133
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
!   _temp_2821 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2822 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2821  sizeInBytes=4
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
	jmp	_Label_2818
_Label_2820:
! ASSIGNMENT STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0AS",r10
	mov	1138,r13		! source line 1138
	mov	"\0\0SE",r10
!   _temp_2823 = &framesInUse
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
!   _temp_2824 = &frameManagerLock
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
!   _temp_2825 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2825		(int)
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
	.word	_Label_2826
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2827
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2828
	.word	-12
	.word	4
	.word	_Label_2829
	.word	-16
	.word	4
	.word	_Label_2830
	.word	-20
	.word	4
	.word	_Label_2831
	.word	-24
	.word	4
	.word	_Label_2832
	.word	-28
	.word	4
	.word	_Label_2833
	.word	-32
	.word	4
	.word	_Label_2834
	.word	-36
	.word	4
	.word	_Label_2835
	.word	-40
	.word	4
	.word	0
_Label_2826:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2827:
	.ascii	"Pself\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2834:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2835:
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
_Label_4500:
	push	r0
	sub	r1,1,r1
	bne	_Label_4500
	mov	1152,r13		! source line 1152
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_2836 = &frameManagerLock
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
_Label_2837:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2839		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2839
!	jmp	_Label_2838
_Label_2838:
	mov	1159,r13		! source line 1159
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0SE",r10
!   _temp_2840 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2841 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2840  sizeInBytes=4
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
	jmp	_Label_2837
_Label_2839:
! FOR STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2846 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2847 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2846  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_2842:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2847 then goto _Label_2845		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2845
_Label_2843:
	mov	1162,r13		! source line 1162
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0AS",r10
	mov	1163,r13		! source line 1163
	mov	"\0\0SE",r10
!   _temp_2848 = &framesInUse
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
!   _temp_2849 = f * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2849		(int)
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
_Label_2844:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2842
! END FOR
_Label_2845:
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
!   _temp_2850 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2850 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0SE",r10
!   _temp_2851 = &frameManagerLock
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
	.word	_Label_2852
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2853
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2854
	.word	12
	.word	4
	.word	_Label_2855
	.word	16
	.word	4
	.word	_Label_2856
	.word	-12
	.word	4
	.word	_Label_2857
	.word	-16
	.word	4
	.word	_Label_2858
	.word	-20
	.word	4
	.word	_Label_2859
	.word	-24
	.word	4
	.word	_Label_2860
	.word	-28
	.word	4
	.word	_Label_2861
	.word	-32
	.word	4
	.word	_Label_2862
	.word	-36
	.word	4
	.word	_Label_2863
	.word	-40
	.word	4
	.word	_Label_2864
	.word	-44
	.word	4
	.word	_Label_2865
	.word	-48
	.word	4
	.word	_Label_2866
	.word	-52
	.word	4
	.word	_Label_2867
	.word	-56
	.word	4
	.word	0
_Label_2852:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2853:
	.ascii	"Pself\0"
	.align
_Label_2854:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2855:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2865:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2866:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2867:
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
_Label_4501:
	push	r0
	sub	r1,1,r1
	bne	_Label_4501
	mov	1174,r13		! source line 1174
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0SE",r10
!   _temp_2868 = &frameManagerLock
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
!   _temp_2873 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2876 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2875 = *_temp_2876  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2874 = _temp_2875 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2873  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2869:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2874 then goto _Label_2872		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2872
_Label_2870:
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
!   _temp_2877 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_2877 div 8192		(int)
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
!   _temp_2878 = &framesInUse
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
_Label_2871:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2869
! END FOR
_Label_2872:
! ASSIGNMENT STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2880 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2879 = *_temp_2880  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2879		(int)
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
!   _temp_2881 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2882 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2881  sizeInBytes=4
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
!   _temp_2883 = &frameManagerLock
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
	.word	_Label_2884
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2885
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2886
	.word	12
	.word	4
	.word	_Label_2887
	.word	-12
	.word	4
	.word	_Label_2888
	.word	-16
	.word	4
	.word	_Label_2889
	.word	-20
	.word	4
	.word	_Label_2890
	.word	-24
	.word	4
	.word	_Label_2891
	.word	-28
	.word	4
	.word	_Label_2892
	.word	-32
	.word	4
	.word	_Label_2893
	.word	-36
	.word	4
	.word	_Label_2894
	.word	-40
	.word	4
	.word	_Label_2895
	.word	-44
	.word	4
	.word	_Label_2896
	.word	-48
	.word	4
	.word	_Label_2897
	.word	-52
	.word	4
	.word	_Label_2898
	.word	-56
	.word	4
	.word	_Label_2899
	.word	-60
	.word	4
	.word	_Label_2900
	.word	-64
	.word	4
	.word	_Label_2901
	.word	-68
	.word	4
	.word	0
_Label_2884:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2885:
	.ascii	"Pself\0"
	.align
_Label_2886:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2899:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2900:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2901:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2902
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
_Label_2902:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2903
	.word	_sourceFileName
	.word	277		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2903:
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
_Label_4502:
	push	r0
	sub	r1,1,r1
	bne	_Label_4502
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
!   _temp_2904 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2906 = &_temp_2905
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2906 = _temp_2906 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2908:
!   Data Move: *_temp_2906 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2906 = _temp_2906 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2907 = _temp_2907 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2907) then goto _Label_2908
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2908
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2909 = &_temp_2905
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4503
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4503:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2904 = *_temp_2909  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4504:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4504
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
	.word	_Label_2910
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2911
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2912
	.word	-12
	.word	4
	.word	_Label_2913
	.word	-16
	.word	4
	.word	_Label_2914
	.word	-20
	.word	4
	.word	_Label_2915
	.word	-104
	.word	84
	.word	_Label_2916
	.word	-108
	.word	4
	.word	0
_Label_2910:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2911:
	.ascii	"Pself\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2904\0"
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
_Label_4505:
	push	r0
	sub	r1,1,r1
	bne	_Label_4505
	mov	1209,r13		! source line 1209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2917 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2917  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1214,r13		! source line 1214
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2918 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2918  sizeInBytes=4
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
!   _temp_2923 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2924 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2923  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2919:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2924 then goto _Label_2922		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2922
_Label_2920:
	mov	1216,r13		! source line 1216
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2925 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2925  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1217,r13		! source line 1217
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2927 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2927 [i ] into _temp_2928
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
!   _temp_2926 = _temp_2928		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2926  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2929 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2929  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2931 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2931 [i ] into _temp_2932
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
!   Data Move: _temp_2930 = *_temp_2932  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2930  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1220,r13		! source line 1220
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2933 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2933  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1221,r13		! source line 1221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2934 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2934  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2935 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2935  sizeInBytes=4
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
!   if intIsZero (_temp_2937) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2936  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2936  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2938 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2938  sizeInBytes=4
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
!   if intIsZero (_temp_2942) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2941  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2941) then goto _Label_2940
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2940
!	jmp	_Label_2939
_Label_2939:
! THEN...
	mov	1227,r13		! source line 1227
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1227,r13		! source line 1227
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2944) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2943  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2943  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2945
_Label_2940:
! ELSE...
	mov	1229,r13		! source line 1229
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2946 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2946  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2945:
! CALL STATEMENT...
!   _temp_2947 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2947  sizeInBytes=4
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
!   if intIsZero (_temp_2950) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2948 else goto _Label_2949
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2949
	jmp	_Label_2948
_Label_2948:
! THEN...
	mov	1233,r13		! source line 1233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2951 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2951  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2952
_Label_2949:
! ELSE...
	mov	1235,r13		! source line 1235
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2953 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2953  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2952:
! CALL STATEMENT...
!   _temp_2954 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2954  sizeInBytes=4
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
!   if intIsZero (_temp_2957) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2955 else goto _Label_2956
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2956
	jmp	_Label_2955
_Label_2955:
! THEN...
	mov	1239,r13		! source line 1239
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2958 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2958  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2959
_Label_2956:
! ELSE...
	mov	1241,r13		! source line 1241
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2960 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2960  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2959:
! CALL STATEMENT...
!   _temp_2961 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2961  sizeInBytes=4
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
!   if intIsZero (_temp_2964) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2962 else goto _Label_2963
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2963
	jmp	_Label_2962
_Label_2962:
! THEN...
	mov	1245,r13		! source line 1245
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2965 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2965  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2966
_Label_2963:
! ELSE...
	mov	1247,r13		! source line 1247
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2967 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2967  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2966:
! CALL STATEMENT...
!   _temp_2968 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2968  sizeInBytes=4
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
!   if intIsZero (_temp_2971) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2969 else goto _Label_2970
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2970
	jmp	_Label_2969
_Label_2969:
! THEN...
	mov	1251,r13		! source line 1251
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2972 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2972  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2973
_Label_2970:
! ELSE...
	mov	1253,r13		! source line 1253
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2974 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2974  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2973:
! CALL STATEMENT...
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2921:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2919
! END FOR
_Label_2922:
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
	.word	_Label_2975
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2976
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2977
	.word	-12
	.word	4
	.word	_Label_2978
	.word	-16
	.word	4
	.word	_Label_2979
	.word	-20
	.word	4
	.word	_Label_2980
	.word	-24
	.word	4
	.word	_Label_2981
	.word	-28
	.word	4
	.word	_Label_2982
	.word	-32
	.word	4
	.word	_Label_2983
	.word	-36
	.word	4
	.word	_Label_2984
	.word	-40
	.word	4
	.word	_Label_2985
	.word	-44
	.word	4
	.word	_Label_2986
	.word	-48
	.word	4
	.word	_Label_2987
	.word	-52
	.word	4
	.word	_Label_2988
	.word	-56
	.word	4
	.word	_Label_2989
	.word	-60
	.word	4
	.word	_Label_2990
	.word	-64
	.word	4
	.word	_Label_2991
	.word	-68
	.word	4
	.word	_Label_2992
	.word	-72
	.word	4
	.word	_Label_2993
	.word	-76
	.word	4
	.word	_Label_2994
	.word	-80
	.word	4
	.word	_Label_2995
	.word	-84
	.word	4
	.word	_Label_2996
	.word	-88
	.word	4
	.word	_Label_2997
	.word	-92
	.word	4
	.word	_Label_2998
	.word	-96
	.word	4
	.word	_Label_2999
	.word	-100
	.word	4
	.word	_Label_3000
	.word	-104
	.word	4
	.word	_Label_3001
	.word	-108
	.word	4
	.word	_Label_3002
	.word	-112
	.word	4
	.word	_Label_3003
	.word	-116
	.word	4
	.word	_Label_3004
	.word	-120
	.word	4
	.word	_Label_3005
	.word	-124
	.word	4
	.word	_Label_3006
	.word	-128
	.word	4
	.word	_Label_3007
	.word	-132
	.word	4
	.word	_Label_3008
	.word	-136
	.word	4
	.word	_Label_3009
	.word	-140
	.word	4
	.word	_Label_3010
	.word	-144
	.word	4
	.word	_Label_3011
	.word	-148
	.word	4
	.word	_Label_3012
	.word	-152
	.word	4
	.word	_Label_3013
	.word	-156
	.word	4
	.word	_Label_3014
	.word	-160
	.word	4
	.word	_Label_3015
	.word	-164
	.word	4
	.word	_Label_3016
	.word	-168
	.word	4
	.word	0
_Label_2975:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2976:
	.ascii	"Pself\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2971\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2958\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_3016:
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
_Label_4506:
	push	r0
	sub	r1,1,r1
	bne	_Label_4506
	mov	1261,r13		! source line 1261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0RE",r10
!   _temp_3019 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3019 [entry ] into _temp_3020
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
!   Data Move: _temp_3018 = *_temp_3020  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3017 = _temp_3018 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3017  (sizeInBytes=4)
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
	.word	_Label_3021
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3022
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3023
	.word	12
	.word	4
	.word	_Label_3024
	.word	-12
	.word	4
	.word	_Label_3025
	.word	-16
	.word	4
	.word	_Label_3026
	.word	-20
	.word	4
	.word	_Label_3027
	.word	-24
	.word	4
	.word	0
_Label_3021:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_3022:
	.ascii	"Pself\0"
	.align
_Label_3023:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_3017\0"
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
_Label_4507:
	push	r0
	sub	r1,1,r1
	bne	_Label_4507
	mov	1271,r13		! source line 1271
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0RE",r10
!   _temp_3030 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3030 [entry ] into _temp_3031
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
!   Data Move: _temp_3029 = *_temp_3031  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3028 = _temp_3029 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3028  (sizeInBytes=4)
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
	.word	_Label_3032
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3033
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3034
	.word	12
	.word	4
	.word	_Label_3035
	.word	-12
	.word	4
	.word	_Label_3036
	.word	-16
	.word	4
	.word	_Label_3037
	.word	-20
	.word	4
	.word	_Label_3038
	.word	-24
	.word	4
	.word	0
_Label_3032:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_3033:
	.ascii	"Pself\0"
	.align
_Label_3034:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_3028\0"
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
_Label_4508:
	push	r0
	sub	r1,1,r1
	bne	_Label_4508
	mov	1280,r13		! source line 1280
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0AS",r10
!   _temp_3039 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_3039 [entry ] into _temp_3040
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
!   _temp_3044 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3044 [entry ] into _temp_3045
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
!   Data Move: _temp_3043 = *_temp_3045  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3042 = _temp_3043 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_3041 = _temp_3042 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3040 = _temp_3041  (sizeInBytes=4)
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
	.word	_Label_3046
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3047
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3048
	.word	12
	.word	4
	.word	_Label_3049
	.word	16
	.word	4
	.word	_Label_3050
	.word	-12
	.word	4
	.word	_Label_3051
	.word	-16
	.word	4
	.word	_Label_3052
	.word	-20
	.word	4
	.word	_Label_3053
	.word	-24
	.word	4
	.word	_Label_3054
	.word	-28
	.word	4
	.word	_Label_3055
	.word	-32
	.word	4
	.word	_Label_3056
	.word	-36
	.word	4
	.word	0
_Label_3046:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_3047:
	.ascii	"Pself\0"
	.align
_Label_3048:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3049:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_3039\0"
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
_Label_4509:
	push	r0
	sub	r1,1,r1
	bne	_Label_4509
	mov	1290,r13		! source line 1290
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0RE",r10
!   _temp_3060 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3060 [entry ] into _temp_3061
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
!   Data Move: _temp_3059 = *_temp_3061  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3058 = _temp_3059 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3058) then goto _Label_3062
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3062
!   _temp_3057 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3063
_Label_3062:
!   _temp_3057 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3063:
!   ReturnResult: _temp_3057  (sizeInBytes=1)
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
	.word	_Label_3064
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3065
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3066
	.word	12
	.word	4
	.word	_Label_3067
	.word	-16
	.word	4
	.word	_Label_3068
	.word	-20
	.word	4
	.word	_Label_3069
	.word	-24
	.word	4
	.word	_Label_3070
	.word	-28
	.word	4
	.word	_Label_3071
	.word	-9
	.word	1
	.word	0
_Label_3064:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_3065:
	.ascii	"Pself\0"
	.align
_Label_3066:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3071:
	.byte	'C'
	.ascii	"_temp_3057\0"
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
_Label_4510:
	push	r0
	sub	r1,1,r1
	bne	_Label_4510
	mov	1299,r13		! source line 1299
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0RE",r10
!   _temp_3075 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3075 [entry ] into _temp_3076
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
!   Data Move: _temp_3074 = *_temp_3076  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3073 = _temp_3074 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3073) then goto _Label_3077
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3077
!   _temp_3072 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3078
_Label_3077:
!   _temp_3072 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3078:
!   ReturnResult: _temp_3072  (sizeInBytes=1)
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
	.word	_Label_3079
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3080
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3081
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_3079:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_3080:
	.ascii	"Pself\0"
	.align
_Label_3081:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3085:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3086:
	.byte	'C'
	.ascii	"_temp_3072\0"
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
_Label_4511:
	push	r0
	sub	r1,1,r1
	bne	_Label_4511
	mov	1308,r13		! source line 1308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0RE",r10
!   _temp_3090 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3090 [entry ] into _temp_3091
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
!   Data Move: _temp_3089 = *_temp_3091  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3088 = _temp_3089 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3088) then goto _Label_3092
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3092
!   _temp_3087 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3093
_Label_3092:
!   _temp_3087 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3093:
!   ReturnResult: _temp_3087  (sizeInBytes=1)
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
	.word	_Label_3094
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3095
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3096
	.word	12
	.word	4
	.word	_Label_3097
	.word	-16
	.word	4
	.word	_Label_3098
	.word	-20
	.word	4
	.word	_Label_3099
	.word	-24
	.word	4
	.word	_Label_3100
	.word	-28
	.word	4
	.word	_Label_3101
	.word	-9
	.word	1
	.word	0
_Label_3094:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_3095:
	.ascii	"Pself\0"
	.align
_Label_3096:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3101:
	.byte	'C'
	.ascii	"_temp_3087\0"
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
_Label_4512:
	push	r0
	sub	r1,1,r1
	bne	_Label_4512
	mov	1317,r13		! source line 1317
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1321,r13		! source line 1321
	mov	"\0\0RE",r10
!   _temp_3105 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3105 [entry ] into _temp_3106
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
!   Data Move: _temp_3104 = *_temp_3106  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3103 = _temp_3104 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3103) then goto _Label_3107
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3107
!   _temp_3102 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3108
_Label_3107:
!   _temp_3102 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3108:
!   ReturnResult: _temp_3102  (sizeInBytes=1)
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
	.word	_Label_3109
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3110
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3111
	.word	12
	.word	4
	.word	_Label_3112
	.word	-16
	.word	4
	.word	_Label_3113
	.word	-20
	.word	4
	.word	_Label_3114
	.word	-24
	.word	4
	.word	_Label_3115
	.word	-28
	.word	4
	.word	_Label_3116
	.word	-9
	.word	1
	.word	0
_Label_3109:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_3110:
	.ascii	"Pself\0"
	.align
_Label_3111:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3113:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3114:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3115:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3116:
	.byte	'C'
	.ascii	"_temp_3102\0"
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
_Label_4513:
	push	r0
	sub	r1,1,r1
	bne	_Label_4513
	mov	1326,r13		! source line 1326
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0AS",r10
!   _temp_3117 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3117 [entry ] into _temp_3118
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
!   _temp_3121 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3121 [entry ] into _temp_3122
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
!   Data Move: _temp_3120 = *_temp_3122  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3119 = _temp_3120 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3118 = _temp_3119  (sizeInBytes=4)
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
	.word	_Label_3123
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3124
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3125
	.word	12
	.word	4
	.word	_Label_3126
	.word	-12
	.word	4
	.word	_Label_3127
	.word	-16
	.word	4
	.word	_Label_3128
	.word	-20
	.word	4
	.word	_Label_3129
	.word	-24
	.word	4
	.word	_Label_3130
	.word	-28
	.word	4
	.word	_Label_3131
	.word	-32
	.word	4
	.word	0
_Label_3123:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_3124:
	.ascii	"Pself\0"
	.align
_Label_3125:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3117\0"
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
_Label_4514:
	push	r0
	sub	r1,1,r1
	bne	_Label_4514
	mov	1335,r13		! source line 1335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0AS",r10
!   _temp_3132 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3132 [entry ] into _temp_3133
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
!   _temp_3136 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3136 [entry ] into _temp_3137
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
!   Data Move: _temp_3135 = *_temp_3137  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3134 = _temp_3135 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3133 = _temp_3134  (sizeInBytes=4)
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
	.word	_Label_3138
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3139
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3140
	.word	12
	.word	4
	.word	_Label_3141
	.word	-12
	.word	4
	.word	_Label_3142
	.word	-16
	.word	4
	.word	_Label_3143
	.word	-20
	.word	4
	.word	_Label_3144
	.word	-24
	.word	4
	.word	_Label_3145
	.word	-28
	.word	4
	.word	_Label_3146
	.word	-32
	.word	4
	.word	0
_Label_3138:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_3139:
	.ascii	"Pself\0"
	.align
_Label_3140:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3132\0"
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
_Label_4515:
	push	r0
	sub	r1,1,r1
	bne	_Label_4515
	mov	1344,r13		! source line 1344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1348,r13		! source line 1348
	mov	"\0\0AS",r10
!   _temp_3147 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3147 [entry ] into _temp_3148
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
!   _temp_3151 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3151 [entry ] into _temp_3152
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
!   Data Move: _temp_3150 = *_temp_3152  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3149 = _temp_3150 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3148 = _temp_3149  (sizeInBytes=4)
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
	.word	_Label_3153
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3154
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3155
	.word	12
	.word	4
	.word	_Label_3156
	.word	-12
	.word	4
	.word	_Label_3157
	.word	-16
	.word	4
	.word	_Label_3158
	.word	-20
	.word	4
	.word	_Label_3159
	.word	-24
	.word	4
	.word	_Label_3160
	.word	-28
	.word	4
	.word	_Label_3161
	.word	-32
	.word	4
	.word	0
_Label_3153:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_3154:
	.ascii	"Pself\0"
	.align
_Label_3155:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3152\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3151\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3149\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3148\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3147\0"
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
_Label_4516:
	push	r0
	sub	r1,1,r1
	bne	_Label_4516
	mov	1353,r13		! source line 1353
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0AS",r10
!   _temp_3162 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3162 [entry ] into _temp_3163
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
!   _temp_3166 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3166 [entry ] into _temp_3167
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
!   Data Move: _temp_3165 = *_temp_3167  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3164 = _temp_3165 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3163 = _temp_3164  (sizeInBytes=4)
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
	.word	_Label_3168
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3169
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3170
	.word	12
	.word	4
	.word	_Label_3171
	.word	-12
	.word	4
	.word	_Label_3172
	.word	-16
	.word	4
	.word	_Label_3173
	.word	-20
	.word	4
	.word	_Label_3174
	.word	-24
	.word	4
	.word	_Label_3175
	.word	-28
	.word	4
	.word	_Label_3176
	.word	-32
	.word	4
	.word	0
_Label_3168:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_3169:
	.ascii	"Pself\0"
	.align
_Label_3170:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3167\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3166\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3164\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3163\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3162\0"
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
_Label_4517:
	push	r0
	sub	r1,1,r1
	bne	_Label_4517
	mov	1362,r13		! source line 1362
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0AS",r10
!   _temp_3177 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3177 [entry ] into _temp_3178
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
!   _temp_3181 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3181 [entry ] into _temp_3182
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
!   Data Move: _temp_3180 = *_temp_3182  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3179 = _temp_3180 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3178 = _temp_3179  (sizeInBytes=4)
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
	.word	_Label_3183
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3184
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3185
	.word	12
	.word	4
	.word	_Label_3186
	.word	-12
	.word	4
	.word	_Label_3187
	.word	-16
	.word	4
	.word	_Label_3188
	.word	-20
	.word	4
	.word	_Label_3189
	.word	-24
	.word	4
	.word	_Label_3190
	.word	-28
	.word	4
	.word	_Label_3191
	.word	-32
	.word	4
	.word	0
_Label_3183:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_3184:
	.ascii	"Pself\0"
	.align
_Label_3185:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3186:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3187:
	.byte	'?'
	.ascii	"_temp_3181\0"
	.align
_Label_3188:
	.byte	'?'
	.ascii	"_temp_3180\0"
	.align
_Label_3189:
	.byte	'?'
	.ascii	"_temp_3179\0"
	.align
_Label_3190:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3191:
	.byte	'?'
	.ascii	"_temp_3177\0"
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
_Label_4518:
	push	r0
	sub	r1,1,r1
	bne	_Label_4518
	mov	1371,r13		! source line 1371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0AS",r10
!   _temp_3192 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3192 [entry ] into _temp_3193
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
!   _temp_3196 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3196 [entry ] into _temp_3197
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
!   Data Move: _temp_3195 = *_temp_3197  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3194 = _temp_3195 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3193 = _temp_3194  (sizeInBytes=4)
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
	.word	_Label_3198
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3199
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3200
	.word	12
	.word	4
	.word	_Label_3201
	.word	-12
	.word	4
	.word	_Label_3202
	.word	-16
	.word	4
	.word	_Label_3203
	.word	-20
	.word	4
	.word	_Label_3204
	.word	-24
	.word	4
	.word	_Label_3205
	.word	-28
	.word	4
	.word	_Label_3206
	.word	-32
	.word	4
	.word	0
_Label_3198:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_3199:
	.ascii	"Pself\0"
	.align
_Label_3200:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3201:
	.byte	'?'
	.ascii	"_temp_3197\0"
	.align
_Label_3202:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3203:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3204:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3205:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3206:
	.byte	'?'
	.ascii	"_temp_3192\0"
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
_Label_4519:
	push	r0
	sub	r1,1,r1
	bne	_Label_4519
	mov	1380,r13		! source line 1380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0AS",r10
!   _temp_3207 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3207 [entry ] into _temp_3208
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
!   _temp_3211 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3211 [entry ] into _temp_3212
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
!   Data Move: _temp_3210 = *_temp_3212  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3209 = _temp_3210 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3208 = _temp_3209  (sizeInBytes=4)
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
	.word	_Label_3213
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3214
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3215
	.word	12
	.word	4
	.word	_Label_3216
	.word	-12
	.word	4
	.word	_Label_3217
	.word	-16
	.word	4
	.word	_Label_3218
	.word	-20
	.word	4
	.word	_Label_3219
	.word	-24
	.word	4
	.word	_Label_3220
	.word	-28
	.word	4
	.word	_Label_3221
	.word	-32
	.word	4
	.word	0
_Label_3213:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_3214:
	.ascii	"Pself\0"
	.align
_Label_3215:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3216:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3217:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3218:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3219:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3220:
	.byte	'?'
	.ascii	"_temp_3208\0"
	.align
_Label_3221:
	.byte	'?'
	.ascii	"_temp_3207\0"
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
_Label_4520:
	push	r0
	sub	r1,1,r1
	bne	_Label_4520
	mov	1389,r13		! source line 1389
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0AS",r10
!   _temp_3222 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3222 [entry ] into _temp_3223
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
!   _temp_3226 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3226 [entry ] into _temp_3227
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
!   Data Move: _temp_3225 = *_temp_3227  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3224 = _temp_3225 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3223 = _temp_3224  (sizeInBytes=4)
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
	.word	_Label_3228
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3229
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3230
	.word	12
	.word	4
	.word	_Label_3231
	.word	-12
	.word	4
	.word	_Label_3232
	.word	-16
	.word	4
	.word	_Label_3233
	.word	-20
	.word	4
	.word	_Label_3234
	.word	-24
	.word	4
	.word	_Label_3235
	.word	-28
	.word	4
	.word	_Label_3236
	.word	-32
	.word	4
	.word	0
_Label_3228:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_3229:
	.ascii	"Pself\0"
	.align
_Label_3230:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3232:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3233:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3234:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3235:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3236:
	.byte	'?'
	.ascii	"_temp_3222\0"
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
_Label_4521:
	push	r0
	sub	r1,1,r1
	bne	_Label_4521
	mov	1398,r13		! source line 1398
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3238 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3238 [0 ] into _temp_3239
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
!   _temp_3237 = _temp_3239		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_3240 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3237  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3240  sizeInBytes=4
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
	.word	_Label_3241
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3242
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3243
	.word	-12
	.word	4
	.word	_Label_3244
	.word	-16
	.word	4
	.word	_Label_3245
	.word	-20
	.word	4
	.word	_Label_3246
	.word	-24
	.word	4
	.word	0
_Label_3241:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_3242:
	.ascii	"Pself\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3240\0"
	.align
_Label_3244:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3245:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3246:
	.byte	'?'
	.ascii	"_temp_3237\0"
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
_Label_4522:
	push	r0
	sub	r1,1,r1
	bne	_Label_4522
	mov	1409,r13		! source line 1409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3247
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3247
	jmp	_Label_3248
_Label_3247:
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
	jmp	_Label_3249
_Label_3248:
! ELSE...
	mov	1426,r13		! source line 1426
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3251		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3251
!	jmp	_Label_3250
_Label_3250:
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
_Label_3251:
! END IF...
_Label_3249:
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
_Label_3252:
!	jmp	_Label_3253
_Label_3253:
	mov	1433,r13		! source line 1433
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3256		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3256
!	jmp	_Label_3255
_Label_3255:
! THEN...
	mov	1435,r13		! source line 1435
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3257 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3257  sizeInBytes=4
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
_Label_3256:
! IF STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0IF",r10
	mov	1438,r13		! source line 1438
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3261) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3260  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3260 then goto _Label_3259 else goto _Label_3258
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3258
	jmp	_Label_3259
_Label_3258:
! THEN...
	mov	1439,r13		! source line 1439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3262 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3262  sizeInBytes=4
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
_Label_3259:
! ASSIGNMENT STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0AS",r10
	mov	1442,r13		! source line 1442
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3264) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3263  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_3263 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0WH",r10
_Label_3265:
!   if offset >= 8192 then goto _Label_3267		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3267
!	jmp	_Label_3266
_Label_3266:
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
!   Data Move: _temp_3268 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_3268  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3270		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3270
!	jmp	_Label_3269
_Label_3269:
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
_Label_3270:
! END WHILE...
	jmp	_Label_3265
_Label_3267:
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
	jmp	_Label_3252
_Label_3254:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_3271
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_3272
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3273
	.word	12
	.word	4
	.word	_Label_3274
	.word	16
	.word	4
	.word	_Label_3275
	.word	20
	.word	4
	.word	_Label_3276
	.word	-9
	.word	1
	.word	_Label_3277
	.word	-16
	.word	4
	.word	_Label_3278
	.word	-20
	.word	4
	.word	_Label_3279
	.word	-24
	.word	4
	.word	_Label_3280
	.word	-28
	.word	4
	.word	_Label_3281
	.word	-10
	.word	1
	.word	_Label_3282
	.word	-32
	.word	4
	.word	_Label_3283
	.word	-36
	.word	4
	.word	_Label_3284
	.word	-40
	.word	4
	.word	_Label_3285
	.word	-44
	.word	4
	.word	_Label_3286
	.word	-48
	.word	4
	.word	0
_Label_3271:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_3272:
	.ascii	"Pself\0"
	.align
_Label_3273:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3274:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3275:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3276:
	.byte	'C'
	.ascii	"_temp_3268\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3264\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3262\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3281:
	.byte	'C'
	.ascii	"_temp_3260\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3283:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3284:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3285:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3286:
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
_Label_4523:
	push	r0
	sub	r1,1,r1
	bne	_Label_4523
	mov	1463,r13		! source line 1463
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3287
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3287
	jmp	_Label_3288
_Label_3287:
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
	jmp	_Label_3289
_Label_3288:
! ELSE...
	mov	1476,r13		! source line 1476
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3291		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3291
!	jmp	_Label_3290
_Label_3290:
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
_Label_3291:
! END IF...
_Label_3289:
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
_Label_3292:
!	jmp	_Label_3293
_Label_3293:
	mov	1481,r13		! source line 1481
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3298		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3298
	jmp	_Label_3295
_Label_3298:
	mov	1483,r13		! source line 1483
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3300) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3299  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_3299 then goto _Label_3297 else goto _Label_3295
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_3295
	jmp	_Label_3297
_Label_3297:
	mov	1484,r13		! source line 1484
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3302) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3301  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3301 then goto _Label_3296 else goto _Label_3295
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3295
	jmp	_Label_3296
_Label_3295:
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
_Label_3296:
! ASSIGNMENT STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0AS",r10
	mov	1487,r13		! source line 1487
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3304) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3303  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_3303 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0WH",r10
_Label_3305:
!   if offset >= 8192 then goto _Label_3307		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3307
!	jmp	_Label_3306
_Label_3306:
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
!   Data Move: _temp_3308 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_3308  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3310		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3310
!	jmp	_Label_3309
_Label_3309:
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
_Label_3310:
! END WHILE...
	jmp	_Label_3305
_Label_3307:
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
	jmp	_Label_3292
_Label_3294:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_3311
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3312
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3313
	.word	12
	.word	4
	.word	_Label_3314
	.word	16
	.word	4
	.word	_Label_3315
	.word	20
	.word	4
	.word	_Label_3316
	.word	-9
	.word	1
	.word	_Label_3317
	.word	-16
	.word	4
	.word	_Label_3318
	.word	-20
	.word	4
	.word	_Label_3319
	.word	-24
	.word	4
	.word	_Label_3320
	.word	-10
	.word	1
	.word	_Label_3321
	.word	-28
	.word	4
	.word	_Label_3322
	.word	-11
	.word	1
	.word	_Label_3323
	.word	-32
	.word	4
	.word	_Label_3324
	.word	-36
	.word	4
	.word	_Label_3325
	.word	-40
	.word	4
	.word	_Label_3326
	.word	-44
	.word	4
	.word	0
_Label_3311:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_3312:
	.ascii	"Pself\0"
	.align
_Label_3313:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3314:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3315:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3316:
	.byte	'C'
	.ascii	"_temp_3308\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3304\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3320:
	.byte	'C'
	.ascii	"_temp_3301\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3322:
	.byte	'C'
	.ascii	"_temp_3299\0"
	.align
_Label_3323:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3324:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3325:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3326:
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
_Label_4524:
	push	r0
	sub	r1,1,r1
	bne	_Label_4524
	mov	1505,r13		! source line 1505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0IF",r10
	mov	1529,r13		! source line 1529
	mov	"\0\0SE",r10
!   _temp_3330 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3331) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3330  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3329  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_3329 >= 4 then goto _Label_3328		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3328
!	jmp	_Label_3327
_Label_3327:
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
_Label_3328:
! IF STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3333		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3333
!	jmp	_Label_3332
_Label_3332:
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
_Label_3333:
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
!   _temp_3336 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3335 = _temp_3336 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3337 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3338) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3335  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3337  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3334  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3334  (sizeInBytes=4)
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
	.word	_Label_3339
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3340
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3341
	.word	12
	.word	4
	.word	_Label_3342
	.word	16
	.word	4
	.word	_Label_3343
	.word	20
	.word	4
	.word	_Label_3344
	.word	-12
	.word	4
	.word	_Label_3345
	.word	-16
	.word	4
	.word	_Label_3346
	.word	-20
	.word	4
	.word	_Label_3347
	.word	-24
	.word	4
	.word	_Label_3348
	.word	-28
	.word	4
	.word	_Label_3349
	.word	-32
	.word	4
	.word	_Label_3350
	.word	-36
	.word	4
	.word	_Label_3351
	.word	-40
	.word	4
	.word	_Label_3352
	.word	-44
	.word	4
	.word	0
_Label_3339:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3340:
	.ascii	"Pself\0"
	.align
_Label_3341:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3342:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3343:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3338\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3337\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3336\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3335\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3334\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3331\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3330\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3329\0"
	.align
_Label_3352:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3353
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3353:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3354
	.word	_sourceFileName
	.word	311		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3354:
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
_Label_4525:
	push	r0
	sub	r1,1,r1
	bne	_Label_4525
	mov	2360,r13		! source line 2360
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3355 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3355  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2361,r13		! source line 2361
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
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
	mov	2369,r13		! source line 2369
	mov	"\0\0SE",r10
!   _temp_3357 = &semUsedInSynchMethods
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
	mov	2370,r13		! source line 2370
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
	mov	2371,r13		! source line 2371
	mov	"\0\0SE",r10
!   _temp_3359 = &diskBusy
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
	mov	2371,r13		! source line 2371
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
	.word	_Label_3360
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3361
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3362
	.word	-12
	.word	4
	.word	_Label_3363
	.word	-16
	.word	4
	.word	_Label_3364
	.word	-20
	.word	4
	.word	_Label_3365
	.word	-24
	.word	4
	.word	_Label_3366
	.word	-28
	.word	4
	.word	0
_Label_3360:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3361:
	.ascii	"Pself\0"
	.align
_Label_3362:
	.byte	'?'
	.ascii	"_temp_3359\0"
	.align
_Label_3363:
	.byte	'?'
	.ascii	"_temp_3358\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3357\0"
	.align
_Label_3365:
	.byte	'?'
	.ascii	"_temp_3356\0"
	.align
_Label_3366:
	.byte	'?'
	.ascii	"_temp_3355\0"
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
_Label_4526:
	push	r0
	sub	r1,1,r1
	bne	_Label_4526
	mov	2376,r13		! source line 2376
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0SE",r10
!   _temp_3367 = &diskBusy
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
	mov	2390,r13		! source line 2390
	mov	"\0\0WH",r10
_Label_3368:
!	jmp	_Label_3369
_Label_3369:
	mov	2390,r13		! source line 2390
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2392,r13		! source line 2392
	mov	"\0\0SE",r10
!   _temp_3371 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3372) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3371  sizeInBytes=4
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
	mov	2394,r13		! source line 2394
	mov	"\0\0SE",r10
!   _temp_3373 = &semUsedInSynchMethods
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
	mov	2397,r13		! source line 2397
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3382 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3376
	cmp	r1,2
	be	_Label_3377
	cmp	r1,3
	be	_Label_3378
	cmp	r1,4
	be	_Label_3379
	cmp	r1,5
	be	_Label_3380
	cmp	r1,6
	be	_Label_3381
	jmp	_Label_3374
! CASE 1...
_Label_3376:
! SEND STATEMENT...
	mov	2399,r13		! source line 2399
	mov	"\0\0SE",r10
!   _temp_3383 = &diskBusy
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
	mov	2400,r13		! source line 2400
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3377:
! CALL STATEMENT...
!   _temp_3384 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3384  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2402,r13		! source line 2402
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3378:
! CALL STATEMENT...
!   _temp_3385 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3385  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2404,r13		! source line 2404
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3379:
! CALL STATEMENT...
!   _temp_3386 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3386  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2406,r13		! source line 2406
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3380:
! BREAK STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0BR",r10
	jmp	_Label_3375
! CASE 6...
_Label_3381:
! CALL STATEMENT...
!   _temp_3387 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3387  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2412,r13		! source line 2412
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3374:
! CALL STATEMENT...
!   _temp_3388 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3388  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2414,r13		! source line 2414
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3375:
! END WHILE...
	jmp	_Label_3368
_Label_3370:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3389
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3390
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3391
	.word	12
	.word	4
	.word	_Label_3392
	.word	16
	.word	4
	.word	_Label_3393
	.word	20
	.word	4
	.word	_Label_3394
	.word	-12
	.word	4
	.word	_Label_3395
	.word	-16
	.word	4
	.word	_Label_3396
	.word	-20
	.word	4
	.word	_Label_3397
	.word	-24
	.word	4
	.word	_Label_3398
	.word	-28
	.word	4
	.word	_Label_3399
	.word	-32
	.word	4
	.word	_Label_3400
	.word	-36
	.word	4
	.word	_Label_3401
	.word	-40
	.word	4
	.word	_Label_3402
	.word	-44
	.word	4
	.word	_Label_3403
	.word	-48
	.word	4
	.word	_Label_3404
	.word	-52
	.word	4
	.word	0
_Label_3389:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3390:
	.ascii	"Pself\0"
	.align
_Label_3391:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3392:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3393:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3394:
	.byte	'?'
	.ascii	"_temp_3388\0"
	.align
_Label_3395:
	.byte	'?'
	.ascii	"_temp_3387\0"
	.align
_Label_3396:
	.byte	'?'
	.ascii	"_temp_3386\0"
	.align
_Label_3397:
	.byte	'?'
	.ascii	"_temp_3385\0"
	.align
_Label_3398:
	.byte	'?'
	.ascii	"_temp_3384\0"
	.align
_Label_3399:
	.byte	'?'
	.ascii	"_temp_3383\0"
	.align
_Label_3400:
	.byte	'?'
	.ascii	"_temp_3382\0"
	.align
_Label_3401:
	.byte	'?'
	.ascii	"_temp_3373\0"
	.align
_Label_3402:
	.byte	'?'
	.ascii	"_temp_3372\0"
	.align
_Label_3403:
	.byte	'?'
	.ascii	"_temp_3371\0"
	.align
_Label_3404:
	.byte	'?'
	.ascii	"_temp_3367\0"
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
	mov	2423,r13		! source line 2423
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2441,r13		! source line 2441
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
	mov	2442,r13		! source line 2442
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
	mov	2443,r13		! source line 2443
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
	mov	2444,r13		! source line 2444
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
	mov	2444,r13		! source line 2444
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
	.word	_Label_3405
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3406
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3407
	.word	12
	.word	4
	.word	_Label_3408
	.word	16
	.word	4
	.word	_Label_3409
	.word	20
	.word	4
	.word	_Label_3410
	.word	24
	.word	4
	.word	0
_Label_3405:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3406:
	.ascii	"Pself\0"
	.align
_Label_3407:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3408:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3409:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3410:
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
_Label_4527:
	push	r0
	sub	r1,1,r1
	bne	_Label_4527
	mov	2449,r13		! source line 2449
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0SE",r10
!   _temp_3411 = &diskBusy
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
	mov	2462,r13		! source line 2462
	mov	"\0\0WH",r10
_Label_3412:
!	jmp	_Label_3413
_Label_3413:
	mov	2462,r13		! source line 2462
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0SE",r10
!   _temp_3415 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3416) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3415  sizeInBytes=4
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
	mov	2465,r13		! source line 2465
	mov	"\0\0SE",r10
!   _temp_3417 = &semUsedInSynchMethods
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
	mov	2468,r13		! source line 2468
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3426 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3420
	cmp	r1,2
	be	_Label_3421
	cmp	r1,3
	be	_Label_3422
	cmp	r1,4
	be	_Label_3423
	cmp	r1,5
	be	_Label_3424
	cmp	r1,6
	be	_Label_3425
	jmp	_Label_3418
! CASE 1...
_Label_3420:
! SEND STATEMENT...
	mov	2470,r13		! source line 2470
	mov	"\0\0SE",r10
!   _temp_3427 = &diskBusy
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
	mov	2471,r13		! source line 2471
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3421:
! CALL STATEMENT...
!   _temp_3428 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3428  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2473,r13		! source line 2473
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3422:
! CALL STATEMENT...
!   _temp_3429 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3429  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2475,r13		! source line 2475
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3423:
! CALL STATEMENT...
!   _temp_3430 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3430  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2477,r13		! source line 2477
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3424:
! BREAK STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0BR",r10
	jmp	_Label_3419
! CASE 6...
_Label_3425:
! CALL STATEMENT...
!   _temp_3431 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3431  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2483,r13		! source line 2483
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3418:
! CALL STATEMENT...
!   _temp_3432 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3432  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2485,r13		! source line 2485
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3419:
! END WHILE...
	jmp	_Label_3412
_Label_3414:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3433
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3434
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3435
	.word	12
	.word	4
	.word	_Label_3436
	.word	16
	.word	4
	.word	_Label_3437
	.word	20
	.word	4
	.word	_Label_3438
	.word	-12
	.word	4
	.word	_Label_3439
	.word	-16
	.word	4
	.word	_Label_3440
	.word	-20
	.word	4
	.word	_Label_3441
	.word	-24
	.word	4
	.word	_Label_3442
	.word	-28
	.word	4
	.word	_Label_3443
	.word	-32
	.word	4
	.word	_Label_3444
	.word	-36
	.word	4
	.word	_Label_3445
	.word	-40
	.word	4
	.word	_Label_3446
	.word	-44
	.word	4
	.word	_Label_3447
	.word	-48
	.word	4
	.word	_Label_3448
	.word	-52
	.word	4
	.word	0
_Label_3433:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3434:
	.ascii	"Pself\0"
	.align
_Label_3435:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3436:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3437:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3438:
	.byte	'?'
	.ascii	"_temp_3432\0"
	.align
_Label_3439:
	.byte	'?'
	.ascii	"_temp_3431\0"
	.align
_Label_3440:
	.byte	'?'
	.ascii	"_temp_3430\0"
	.align
_Label_3441:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3442:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3443:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3444:
	.byte	'?'
	.ascii	"_temp_3426\0"
	.align
_Label_3445:
	.byte	'?'
	.ascii	"_temp_3417\0"
	.align
_Label_3446:
	.byte	'?'
	.ascii	"_temp_3416\0"
	.align
_Label_3447:
	.byte	'?'
	.ascii	"_temp_3415\0"
	.align
_Label_3448:
	.byte	'?'
	.ascii	"_temp_3411\0"
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
	mov	2494,r13		! source line 2494
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2511,r13		! source line 2511
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
	mov	2512,r13		! source line 2512
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
	mov	2513,r13		! source line 2513
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
	mov	2514,r13		! source line 2514
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
	mov	2514,r13		! source line 2514
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
	.word	_Label_3449
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3450
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3451
	.word	12
	.word	4
	.word	_Label_3452
	.word	16
	.word	4
	.word	_Label_3453
	.word	20
	.word	4
	.word	_Label_3454
	.word	24
	.word	4
	.word	0
_Label_3449:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3450:
	.ascii	"Pself\0"
	.align
_Label_3451:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3452:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3453:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3454:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3455
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
_Label_3455:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3456
	.word	_sourceFileName
	.word	334		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3456:
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
_Label_4528:
	push	r0
	sub	r1,1,r1
	bne	_Label_4528
	mov	2525,r13		! source line 2525
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3457 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3457  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2532,r13		! source line 2532
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2533,r13		! source line 2533
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
	mov	2534,r13		! source line 2534
	mov	"\0\0SE",r10
!   _temp_3459 = &fileManagerLock
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
	mov	2537,r13		! source line 2537
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
	mov	2538,r13		! source line 2538
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
	mov	2539,r13		! source line 2539
	mov	"\0\0SE",r10
!   _temp_3462 = &anFCBBecameFree
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
	mov	2540,r13		! source line 2540
	mov	"\0\0AS",r10
!   _temp_3463 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3465 = &_temp_3464
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3465 = _temp_3465 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3467 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4529:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4529
!   _temp_3467 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3469:
!   Data Move: *_temp_3465 = _temp_3467  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4530:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4530
!   _temp_3465 = _temp_3465 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3466 = _temp_3466 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3466) then goto _Label_3469
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3469
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3470 = &_temp_3464
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4531
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4531:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3463 = *_temp_3470  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4532:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4532
! FOR STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3475 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3476 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3475  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3471:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3476 then goto _Label_3474		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3474
_Label_3472:
	mov	2542,r13		! source line 2542
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2543,r13		! source line 2543
	mov	"\0\0AS",r10
!   _temp_3477 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3477 [i ] into _temp_3478
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
!   _temp_3479 = _temp_3478 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3479 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0SE",r10
!   _temp_3480 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3480 [i ] into _temp_3481
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
	mov	2545,r13		! source line 2545
	mov	"\0\0SE",r10
!   _temp_3483 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3483 [i ] into _temp_3484
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
!   _temp_3482 = _temp_3484		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3485 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3482  sizeInBytes=4
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
_Label_3473:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3471
! END FOR
_Label_3474:
! ASSIGNMENT STATEMENT...
	mov	2549,r13		! source line 2549
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
	mov	2550,r13		! source line 2550
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
	mov	2551,r13		! source line 2551
	mov	"\0\0SE",r10
!   _temp_3488 = &anOpenFileBecameFree
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
	mov	2552,r13		! source line 2552
	mov	"\0\0AS",r10
!   _temp_3489 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3491 = &_temp_3490
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3491 = _temp_3491 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3493 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4533:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4533
!   _temp_3493 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3495:
!   Data Move: *_temp_3491 = _temp_3493  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4534:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4534
!   _temp_3491 = _temp_3491 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3492 = _temp_3492 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3492) then goto _Label_3495
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3495
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3496 = &_temp_3490
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4535
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4535:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3489 = *_temp_3496  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4536:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4536
! FOR STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3501 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3502 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3501  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3497:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3502 then goto _Label_3500		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3500
_Label_3498:
	mov	2554,r13		! source line 2554
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0AS",r10
!   _temp_3503 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3503 [i ] into _temp_3504
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
!   _temp_3505 = _temp_3504 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3505 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0SE",r10
!   _temp_3507 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3507 [i ] into _temp_3508
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
!   _temp_3506 = _temp_3508		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3509 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3506  sizeInBytes=4
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
_Label_3499:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3497
! END FOR
_Label_3500:
! ASSIGNMENT STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4537:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4537
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0AS",r10
!   _temp_3511 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3512 = _temp_3511 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3512 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0AS",r10
	mov	2566,r13		! source line 2566
	mov	"\0\0SE",r10
!   _temp_3513 = &_P_Kernel_frameManager
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
	mov	2567,r13		! source line 2567
	mov	"\0\0SE",r10
!   _temp_3514 = &_P_Kernel_diskDriver
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
	mov	2567,r13		! source line 2567
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
	.word	_Label_3515
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3516
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3517
	.word	-12
	.word	4
	.word	_Label_3518
	.word	-16
	.word	4
	.word	_Label_3519
	.word	-20
	.word	4
	.word	_Label_3520
	.word	-24
	.word	4
	.word	_Label_3521
	.word	-28
	.word	4
	.word	_Label_3522
	.word	-32
	.word	4
	.word	_Label_3523
	.word	-36
	.word	4
	.word	_Label_3524
	.word	-40
	.word	4
	.word	_Label_3525
	.word	-44
	.word	4
	.word	_Label_3526
	.word	-48
	.word	4
	.word	_Label_3527
	.word	-52
	.word	4
	.word	_Label_3528
	.word	-56
	.word	4
	.word	_Label_3529
	.word	-60
	.word	4
	.word	_Label_3530
	.word	-64
	.word	4
	.word	_Label_3531
	.word	-68
	.word	4
	.word	_Label_3532
	.word	-72
	.word	4
	.word	_Label_3533
	.word	-100
	.word	28
	.word	_Label_3534
	.word	-104
	.word	4
	.word	_Label_3535
	.word	-108
	.word	4
	.word	_Label_3536
	.word	-392
	.word	284
	.word	_Label_3537
	.word	-396
	.word	4
	.word	_Label_3538
	.word	-400
	.word	4
	.word	_Label_3539
	.word	-404
	.word	4
	.word	_Label_3540
	.word	-408
	.word	4
	.word	_Label_3541
	.word	-412
	.word	4
	.word	_Label_3542
	.word	-416
	.word	4
	.word	_Label_3543
	.word	-420
	.word	4
	.word	_Label_3544
	.word	-424
	.word	4
	.word	_Label_3545
	.word	-428
	.word	4
	.word	_Label_3546
	.word	-432
	.word	4
	.word	_Label_3547
	.word	-436
	.word	4
	.word	_Label_3548
	.word	-440
	.word	4
	.word	_Label_3549
	.word	-444
	.word	4
	.word	_Label_3550
	.word	-448
	.word	4
	.word	_Label_3551
	.word	-452
	.word	4
	.word	_Label_3552
	.word	-456
	.word	4
	.word	_Label_3553
	.word	-460
	.word	4
	.word	_Label_3554
	.word	-500
	.word	40
	.word	_Label_3555
	.word	-504
	.word	4
	.word	_Label_3556
	.word	-508
	.word	4
	.word	_Label_3557
	.word	-912
	.word	404
	.word	_Label_3558
	.word	-916
	.word	4
	.word	_Label_3559
	.word	-920
	.word	4
	.word	_Label_3560
	.word	-924
	.word	4
	.word	_Label_3561
	.word	-928
	.word	4
	.word	_Label_3562
	.word	-932
	.word	4
	.word	_Label_3563
	.word	-936
	.word	4
	.word	_Label_3564
	.word	-940
	.word	4
	.word	_Label_3565
	.word	-944
	.word	4
	.word	0
_Label_3515:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3516:
	.ascii	"Pself\0"
	.align
_Label_3517:
	.byte	'?'
	.ascii	"_temp_3514\0"
	.align
_Label_3518:
	.byte	'?'
	.ascii	"_temp_3513\0"
	.align
_Label_3519:
	.byte	'?'
	.ascii	"_temp_3512\0"
	.align
_Label_3520:
	.byte	'?'
	.ascii	"_temp_3511\0"
	.align
_Label_3521:
	.byte	'?'
	.ascii	"_temp_3510\0"
	.align
_Label_3522:
	.byte	'?'
	.ascii	"_temp_3509\0"
	.align
_Label_3523:
	.byte	'?'
	.ascii	"_temp_3508\0"
	.align
_Label_3524:
	.byte	'?'
	.ascii	"_temp_3507\0"
	.align
_Label_3525:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3526:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3527:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3528:
	.byte	'?'
	.ascii	"_temp_3503\0"
	.align
_Label_3529:
	.byte	'?'
	.ascii	"_temp_3502\0"
	.align
_Label_3530:
	.byte	'?'
	.ascii	"_temp_3501\0"
	.align
_Label_3531:
	.byte	'?'
	.ascii	"_temp_3496\0"
	.align
_Label_3532:
	.byte	'?'
	.ascii	"_temp_3494\0"
	.align
_Label_3533:
	.byte	'?'
	.ascii	"_temp_3493\0"
	.align
_Label_3534:
	.byte	'?'
	.ascii	"_temp_3492\0"
	.align
_Label_3535:
	.byte	'?'
	.ascii	"_temp_3491\0"
	.align
_Label_3536:
	.byte	'?'
	.ascii	"_temp_3490\0"
	.align
_Label_3537:
	.byte	'?'
	.ascii	"_temp_3489\0"
	.align
_Label_3538:
	.byte	'?'
	.ascii	"_temp_3488\0"
	.align
_Label_3539:
	.byte	'?'
	.ascii	"_temp_3487\0"
	.align
_Label_3540:
	.byte	'?'
	.ascii	"_temp_3486\0"
	.align
_Label_3541:
	.byte	'?'
	.ascii	"_temp_3485\0"
	.align
_Label_3542:
	.byte	'?'
	.ascii	"_temp_3484\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3483\0"
	.align
_Label_3544:
	.byte	'?'
	.ascii	"_temp_3482\0"
	.align
_Label_3545:
	.byte	'?'
	.ascii	"_temp_3481\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3480\0"
	.align
_Label_3547:
	.byte	'?'
	.ascii	"_temp_3479\0"
	.align
_Label_3548:
	.byte	'?'
	.ascii	"_temp_3478\0"
	.align
_Label_3549:
	.byte	'?'
	.ascii	"_temp_3477\0"
	.align
_Label_3550:
	.byte	'?'
	.ascii	"_temp_3476\0"
	.align
_Label_3551:
	.byte	'?'
	.ascii	"_temp_3475\0"
	.align
_Label_3552:
	.byte	'?'
	.ascii	"_temp_3470\0"
	.align
_Label_3553:
	.byte	'?'
	.ascii	"_temp_3468\0"
	.align
_Label_3554:
	.byte	'?'
	.ascii	"_temp_3467\0"
	.align
_Label_3555:
	.byte	'?'
	.ascii	"_temp_3466\0"
	.align
_Label_3556:
	.byte	'?'
	.ascii	"_temp_3465\0"
	.align
_Label_3557:
	.byte	'?'
	.ascii	"_temp_3464\0"
	.align
_Label_3558:
	.byte	'?'
	.ascii	"_temp_3463\0"
	.align
_Label_3559:
	.byte	'?'
	.ascii	"_temp_3462\0"
	.align
_Label_3560:
	.byte	'?'
	.ascii	"_temp_3461\0"
	.align
_Label_3561:
	.byte	'?'
	.ascii	"_temp_3460\0"
	.align
_Label_3562:
	.byte	'?'
	.ascii	"_temp_3459\0"
	.align
_Label_3563:
	.byte	'?'
	.ascii	"_temp_3458\0"
	.align
_Label_3564:
	.byte	'?'
	.ascii	"_temp_3457\0"
	.align
_Label_3565:
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
_Label_4538:
	push	r0
	sub	r1,1,r1
	bne	_Label_4538
	mov	2574,r13		! source line 2574
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0SE",r10
!   _temp_3566 = &fileManagerLock
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
!   _temp_3567 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3567  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2577,r13		! source line 2577
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3572 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3573 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3572  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3568:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3573 then goto _Label_3571		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3571
_Label_3569:
	mov	2578,r13		! source line 2578
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3574 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3574  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2579,r13		! source line 2579
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2580,r13		! source line 2580
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3575 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3575  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2581,r13		! source line 2581
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2582,r13		! source line 2582
	mov	"\0\0SE",r10
!   _temp_3576 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3576 [i ] into _temp_3577
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
_Label_3570:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3568
! END FOR
_Label_3571:
! CALL STATEMENT...
!   _temp_3578 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3578  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2584,r13		! source line 2584
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0SE",r10
!   _temp_3579 = _function_192_printFCB
	set	_function_192_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3580 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3579  sizeInBytes=4
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
	mov	2586,r13		! source line 2586
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3581 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3581  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2587,r13		! source line 2587
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3586 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3587 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3586  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3582:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3587 then goto _Label_3585		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3585
_Label_3583:
	mov	2588,r13		! source line 2588
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3588 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3588  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2589,r13		! source line 2589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2590,r13		! source line 2590
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3589 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3589  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2591,r13		! source line 2591
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3591 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3591 [i ] into _temp_3592
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
!   _temp_3590 = _temp_3592		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3590  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2592,r13		! source line 2592
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3593 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3593  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2593,r13		! source line 2593
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0SE",r10
!   _temp_3594 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3594 [i ] into _temp_3595
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
_Label_3584:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3582
! END FOR
_Label_3585:
! CALL STATEMENT...
!   _temp_3596 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3596  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2596,r13		! source line 2596
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0SE",r10
!   _temp_3597 = _function_191_printOpen
	set	_function_191_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3598 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3597  sizeInBytes=4
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
	mov	2598,r13		! source line 2598
	mov	"\0\0SE",r10
!   _temp_3599 = &fileManagerLock
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
	mov	2598,r13		! source line 2598
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
	.word	_Label_3600
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3601
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3602
	.word	-12
	.word	4
	.word	_Label_3603
	.word	-16
	.word	4
	.word	_Label_3604
	.word	-20
	.word	4
	.word	_Label_3605
	.word	-24
	.word	4
	.word	_Label_3606
	.word	-28
	.word	4
	.word	_Label_3607
	.word	-32
	.word	4
	.word	_Label_3608
	.word	-36
	.word	4
	.word	_Label_3609
	.word	-40
	.word	4
	.word	_Label_3610
	.word	-44
	.word	4
	.word	_Label_3611
	.word	-48
	.word	4
	.word	_Label_3612
	.word	-52
	.word	4
	.word	_Label_3613
	.word	-56
	.word	4
	.word	_Label_3614
	.word	-60
	.word	4
	.word	_Label_3615
	.word	-64
	.word	4
	.word	_Label_3616
	.word	-68
	.word	4
	.word	_Label_3617
	.word	-72
	.word	4
	.word	_Label_3618
	.word	-76
	.word	4
	.word	_Label_3619
	.word	-80
	.word	4
	.word	_Label_3620
	.word	-84
	.word	4
	.word	_Label_3621
	.word	-88
	.word	4
	.word	_Label_3622
	.word	-92
	.word	4
	.word	_Label_3623
	.word	-96
	.word	4
	.word	_Label_3624
	.word	-100
	.word	4
	.word	_Label_3625
	.word	-104
	.word	4
	.word	_Label_3626
	.word	-108
	.word	4
	.word	_Label_3627
	.word	-112
	.word	4
	.word	_Label_3628
	.word	-116
	.word	4
	.word	0
_Label_3600:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3601:
	.ascii	"Pself\0"
	.align
_Label_3602:
	.byte	'?'
	.ascii	"_temp_3599\0"
	.align
_Label_3603:
	.byte	'?'
	.ascii	"_temp_3598\0"
	.align
_Label_3604:
	.byte	'?'
	.ascii	"_temp_3597\0"
	.align
_Label_3605:
	.byte	'?'
	.ascii	"_temp_3596\0"
	.align
_Label_3606:
	.byte	'?'
	.ascii	"_temp_3595\0"
	.align
_Label_3607:
	.byte	'?'
	.ascii	"_temp_3594\0"
	.align
_Label_3608:
	.byte	'?'
	.ascii	"_temp_3593\0"
	.align
_Label_3609:
	.byte	'?'
	.ascii	"_temp_3592\0"
	.align
_Label_3610:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3611:
	.byte	'?'
	.ascii	"_temp_3590\0"
	.align
_Label_3612:
	.byte	'?'
	.ascii	"_temp_3589\0"
	.align
_Label_3613:
	.byte	'?'
	.ascii	"_temp_3588\0"
	.align
_Label_3614:
	.byte	'?'
	.ascii	"_temp_3587\0"
	.align
_Label_3615:
	.byte	'?'
	.ascii	"_temp_3586\0"
	.align
_Label_3616:
	.byte	'?'
	.ascii	"_temp_3581\0"
	.align
_Label_3617:
	.byte	'?'
	.ascii	"_temp_3580\0"
	.align
_Label_3618:
	.byte	'?'
	.ascii	"_temp_3579\0"
	.align
_Label_3619:
	.byte	'?'
	.ascii	"_temp_3578\0"
	.align
_Label_3620:
	.byte	'?'
	.ascii	"_temp_3577\0"
	.align
_Label_3621:
	.byte	'?'
	.ascii	"_temp_3576\0"
	.align
_Label_3622:
	.byte	'?'
	.ascii	"_temp_3575\0"
	.align
_Label_3623:
	.byte	'?'
	.ascii	"_temp_3574\0"
	.align
_Label_3624:
	.byte	'?'
	.ascii	"_temp_3573\0"
	.align
_Label_3625:
	.byte	'?'
	.ascii	"_temp_3572\0"
	.align
_Label_3626:
	.byte	'?'
	.ascii	"_temp_3567\0"
	.align
_Label_3627:
	.byte	'?'
	.ascii	"_temp_3566\0"
	.align
_Label_3628:
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
_Label_4539:
	push	r0
	sub	r1,1,r1
	bne	_Label_4539
	mov	2603,r13		! source line 2603
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0AS",r10
	mov	2619,r13		! source line 2619
	mov	"\0\0SE",r10
!   _temp_3629 = &_P_Kernel_fileManager
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
	mov	2620,r13		! source line 2620
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3630
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3630
	jmp	_Label_3631
_Label_3630:
! THEN...
	mov	2621,r13		! source line 2621
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3631:
! SEND STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0SE",r10
!   _temp_3632 = &fileManagerLock
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
	mov	2626,r13		! source line 2626
	mov	"\0\0WH",r10
_Label_3633:
	mov	2626,r13		! source line 2626
	mov	"\0\0SE",r10
!   _temp_3636 = &openFileFreeList
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
!   if result==true then goto _Label_3634 else goto _Label_3635
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3635
	jmp	_Label_3634
_Label_3634:
	mov	2626,r13		! source line 2626
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0SE",r10
!   _temp_3637 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3638 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3637  sizeInBytes=4
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
	jmp	_Label_3633
_Label_3635:
! ASSIGNMENT STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
	mov	2629,r13		! source line 2629
	mov	"\0\0SE",r10
!   _temp_3639 = &openFileFreeList
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
	mov	2632,r13		! source line 2632
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3640 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3640 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3641 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3641 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3642 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3642 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0SE",r10
!   _temp_3643 = &fileManagerLock
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
	mov	2639,r13		! source line 2639
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
	.word	_Label_3644
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3645
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3646
	.word	12
	.word	4
	.word	_Label_3647
	.word	-12
	.word	4
	.word	_Label_3648
	.word	-16
	.word	4
	.word	_Label_3649
	.word	-20
	.word	4
	.word	_Label_3650
	.word	-24
	.word	4
	.word	_Label_3651
	.word	-28
	.word	4
	.word	_Label_3652
	.word	-32
	.word	4
	.word	_Label_3653
	.word	-36
	.word	4
	.word	_Label_3654
	.word	-40
	.word	4
	.word	_Label_3655
	.word	-44
	.word	4
	.word	_Label_3656
	.word	-48
	.word	4
	.word	_Label_3657
	.word	-52
	.word	4
	.word	_Label_3658
	.word	-56
	.word	4
	.word	0
_Label_3644:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3645:
	.ascii	"Pself\0"
	.align
_Label_3646:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3647:
	.byte	'?'
	.ascii	"_temp_3643\0"
	.align
_Label_3648:
	.byte	'?'
	.ascii	"_temp_3642\0"
	.align
_Label_3649:
	.byte	'?'
	.ascii	"_temp_3641\0"
	.align
_Label_3650:
	.byte	'?'
	.ascii	"_temp_3640\0"
	.align
_Label_3651:
	.byte	'?'
	.ascii	"_temp_3639\0"
	.align
_Label_3652:
	.byte	'?'
	.ascii	"_temp_3638\0"
	.align
_Label_3653:
	.byte	'?'
	.ascii	"_temp_3637\0"
	.align
_Label_3654:
	.byte	'?'
	.ascii	"_temp_3636\0"
	.align
_Label_3655:
	.byte	'?'
	.ascii	"_temp_3632\0"
	.align
_Label_3656:
	.byte	'?'
	.ascii	"_temp_3629\0"
	.align
_Label_3657:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3658:
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
_Label_4540:
	push	r0
	sub	r1,1,r1
	bne	_Label_4540
	mov	2644,r13		! source line 2644
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2669,r13		! source line 2669
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2672,r13		! source line 2672
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
	mov	2673,r13		! source line 2673
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2674,r13		! source line 2674
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3660		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3660
!	jmp	_Label_3659
_Label_3659:
! THEN...
	mov	2675,r13		! source line 2675
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3661 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3661  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2675,r13		! source line 2675
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3660:
! ASSIGNMENT STATEMENT...
	mov	2679,r13		! source line 2679
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
	mov	2680,r13		! source line 2680
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2681,r13		! source line 2681
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
	mov	2682,r13		! source line 2682
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0WH",r10
_Label_3662:
!   if numFiles <= 0 then goto _Label_3664		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3664
!	jmp	_Label_3663
_Label_3663:
	mov	2685,r13		! source line 2685
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3665 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3665  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2686,r13		! source line 2686
	mov	"\0\0CA",r10
	call	_function_193_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3666 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3666  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2688,r13		! source line 2688
	mov	"\0\0CA",r10
	call	_function_193_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3667 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3667  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2690,r13		! source line 2690
	mov	"\0\0CA",r10
	call	_function_193_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2691,r13		! source line 2691
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3671 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3671 then goto _Label_3669		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3669
!	jmp	_Label_3670
_Label_3670:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3673
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
!   _temp_3672 = _temp_3673		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3672  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2693,r13		! source line 2693
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3668 else goto _Label_3669
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3669
	jmp	_Label_3668
_Label_3668:
! THEN...
	mov	2694,r13		! source line 2694
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0BR",r10
	jmp	_Label_3664
! END IF...
_Label_3669:
! ASSIGNMENT STATEMENT...
	mov	2696,r13		! source line 2696
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3662
_Label_3664:
! IF STATEMENT...
	mov	2701,r13		! source line 2701
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3675		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3675
!	jmp	_Label_3674
_Label_3674:
! THEN...
	mov	2702,r13		! source line 2702
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3675:
! SEND STATEMENT...
	mov	2705,r13		! source line 2705
	mov	"\0\0SE",r10
!   _temp_3676 = &fileManagerLock
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
	mov	2707,r13		! source line 2707
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3681 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3682 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3681  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3677:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3682 then goto _Label_3680		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3680
_Label_3678:
	mov	2707,r13		! source line 2707
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0AS",r10
!   _temp_3683 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3683 [i ] into _temp_3684
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
!   fcb = _temp_3684		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2709,r13		! source line 2709
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3688 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3687 = *_temp_3688  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3687 != start then goto _Label_3686		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3686
!	jmp	_Label_3685
_Label_3685:
! THEN...
	mov	2710,r13		! source line 2710
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3689 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3692 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3691 = *_temp_3692  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3690 = _temp_3691 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3689 = _temp_3690  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0SE",r10
!   _temp_3693 = &fileManagerLock
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
	mov	2712,r13		! source line 2712
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3686:
!   Increment the FOR-LOOP index variable and jump back
_Label_3679:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3677
! END FOR
_Label_3680:
! WHILE STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0WH",r10
_Label_3694:
	mov	2717,r13		! source line 2717
	mov	"\0\0SE",r10
!   _temp_3697 = &fcbFreeList
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
!   if result==true then goto _Label_3695 else goto _Label_3696
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3696
	jmp	_Label_3695
_Label_3695:
	mov	2717,r13		! source line 2717
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0SE",r10
!   _temp_3698 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3699 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3698  sizeInBytes=4
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
	jmp	_Label_3694
_Label_3696:
! ASSIGNMENT STATEMENT...
	mov	2720,r13		! source line 2720
	mov	"\0\0AS",r10
	mov	2720,r13		! source line 2720
	mov	"\0\0SE",r10
!   _temp_3700 = &fcbFreeList
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
	mov	2723,r13		! source line 2723
	mov	"\0\0SE",r10
!   _temp_3701 = &fileManagerLock
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
	mov	2726,r13		! source line 2726
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3702 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3702 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3703 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3703 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3704 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3704 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3709 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3708 = *_temp_3709  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3708 < 0 then goto _Label_3707		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3707
	jmp	_Label_3705
_Label_3707:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3710 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3710 ) then goto _Label_3706		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3706
!	jmp	_Label_3705
_Label_3705:
! THEN...
	mov	2730,r13		! source line 2730
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3711 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3711  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2730,r13		! source line 2730
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3706:
! RETURN STATEMENT...
	mov	2732,r13		! source line 2732
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
	.word	_Label_3712
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3713
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3714
	.word	12
	.word	4
	.word	_Label_3715
	.word	-12
	.word	4
	.word	_Label_3716
	.word	-16
	.word	4
	.word	_Label_3717
	.word	-20
	.word	4
	.word	_Label_3718
	.word	-24
	.word	4
	.word	_Label_3719
	.word	-28
	.word	4
	.word	_Label_3720
	.word	-32
	.word	4
	.word	_Label_3721
	.word	-36
	.word	4
	.word	_Label_3722
	.word	-40
	.word	4
	.word	_Label_3723
	.word	-44
	.word	4
	.word	_Label_3724
	.word	-48
	.word	4
	.word	_Label_3725
	.word	-52
	.word	4
	.word	_Label_3726
	.word	-56
	.word	4
	.word	_Label_3727
	.word	-60
	.word	4
	.word	_Label_3728
	.word	-64
	.word	4
	.word	_Label_3729
	.word	-68
	.word	4
	.word	_Label_3730
	.word	-72
	.word	4
	.word	_Label_3731
	.word	-76
	.word	4
	.word	_Label_3732
	.word	-80
	.word	4
	.word	_Label_3733
	.word	-84
	.word	4
	.word	_Label_3734
	.word	-88
	.word	4
	.word	_Label_3735
	.word	-92
	.word	4
	.word	_Label_3736
	.word	-96
	.word	4
	.word	_Label_3737
	.word	-100
	.word	4
	.word	_Label_3738
	.word	-104
	.word	4
	.word	_Label_3739
	.word	-108
	.word	4
	.word	_Label_3740
	.word	-112
	.word	4
	.word	_Label_3741
	.word	-116
	.word	4
	.word	_Label_3742
	.word	-120
	.word	4
	.word	_Label_3743
	.word	-124
	.word	4
	.word	_Label_3744
	.word	-128
	.word	4
	.word	_Label_3745
	.word	-132
	.word	4
	.word	_Label_3746
	.word	-136
	.word	4
	.word	_Label_3747
	.word	-140
	.word	4
	.word	_Label_3748
	.word	-144
	.word	4
	.word	_Label_3749
	.word	-148
	.word	4
	.word	_Label_3750
	.word	-152
	.word	4
	.word	_Label_3751
	.word	-156
	.word	4
	.word	_Label_3752
	.word	-160
	.word	4
	.word	0
_Label_3712:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3713:
	.ascii	"Pself\0"
	.align
_Label_3714:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3715:
	.byte	'?'
	.ascii	"_temp_3711\0"
	.align
_Label_3716:
	.byte	'?'
	.ascii	"_temp_3710\0"
	.align
_Label_3717:
	.byte	'?'
	.ascii	"_temp_3709\0"
	.align
_Label_3718:
	.byte	'?'
	.ascii	"_temp_3708\0"
	.align
_Label_3719:
	.byte	'?'
	.ascii	"_temp_3704\0"
	.align
_Label_3720:
	.byte	'?'
	.ascii	"_temp_3703\0"
	.align
_Label_3721:
	.byte	'?'
	.ascii	"_temp_3702\0"
	.align
_Label_3722:
	.byte	'?'
	.ascii	"_temp_3701\0"
	.align
_Label_3723:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3724:
	.byte	'?'
	.ascii	"_temp_3699\0"
	.align
_Label_3725:
	.byte	'?'
	.ascii	"_temp_3698\0"
	.align
_Label_3726:
	.byte	'?'
	.ascii	"_temp_3697\0"
	.align
_Label_3727:
	.byte	'?'
	.ascii	"_temp_3693\0"
	.align
_Label_3728:
	.byte	'?'
	.ascii	"_temp_3692\0"
	.align
_Label_3729:
	.byte	'?'
	.ascii	"_temp_3691\0"
	.align
_Label_3730:
	.byte	'?'
	.ascii	"_temp_3690\0"
	.align
_Label_3731:
	.byte	'?'
	.ascii	"_temp_3689\0"
	.align
_Label_3732:
	.byte	'?'
	.ascii	"_temp_3688\0"
	.align
_Label_3733:
	.byte	'?'
	.ascii	"_temp_3687\0"
	.align
_Label_3734:
	.byte	'?'
	.ascii	"_temp_3684\0"
	.align
_Label_3735:
	.byte	'?'
	.ascii	"_temp_3683\0"
	.align
_Label_3736:
	.byte	'?'
	.ascii	"_temp_3682\0"
	.align
_Label_3737:
	.byte	'?'
	.ascii	"_temp_3681\0"
	.align
_Label_3738:
	.byte	'?'
	.ascii	"_temp_3676\0"
	.align
_Label_3739:
	.byte	'?'
	.ascii	"_temp_3673\0"
	.align
_Label_3740:
	.byte	'?'
	.ascii	"_temp_3672\0"
	.align
_Label_3741:
	.byte	'?'
	.ascii	"_temp_3671\0"
	.align
_Label_3742:
	.byte	'?'
	.ascii	"_temp_3667\0"
	.align
_Label_3743:
	.byte	'?'
	.ascii	"_temp_3666\0"
	.align
_Label_3744:
	.byte	'?'
	.ascii	"_temp_3665\0"
	.align
_Label_3745:
	.byte	'?'
	.ascii	"_temp_3661\0"
	.align
_Label_3746:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3747:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3748:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3749:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3750:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3751:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3752:
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
_Label_4541:
	push	r0
	sub	r1,1,r1
	bne	_Label_4541
	mov	2745,r13		! source line 2745
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0IF",r10
!   _temp_3755 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3755 then goto _Label_3754		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3754
!	jmp	_Label_3753
_Label_3753:
! THEN...
	mov	2748,r13		! source line 2748
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3754:
! SEND STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0SE",r10
!   _temp_3756 = &fileManagerLock
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
	mov	2751,r13		! source line 2751
	mov	"\0\0SE",r10
!   _temp_3757 = &_P_Kernel_fileManager
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
	mov	2752,r13		! source line 2752
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3758 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3758  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3759 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3762 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3761 = *_temp_3762  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3760 = _temp_3761 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3759 = _temp_3760  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2754,r13		! source line 2754
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3766 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3765 = *_temp_3766  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3765 > 0 then goto _Label_3764		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3764
!	jmp	_Label_3763
_Label_3763:
! THEN...
	mov	2755,r13		! source line 2755
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0SE",r10
!   _temp_3767 = &openFileFreeList
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
	mov	2756,r13		! source line 2756
	mov	"\0\0SE",r10
!   _temp_3768 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3769 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3768  sizeInBytes=4
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
	mov	2757,r13		! source line 2757
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3770 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3773 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3772 = *_temp_3773  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3771 = _temp_3772 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3770 = _temp_3771  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3777 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3776 = *_temp_3777  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3776 > 0 then goto _Label_3775		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3775
!	jmp	_Label_3774
_Label_3774:
! THEN...
	mov	2759,r13		! source line 2759
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0SE",r10
!   _temp_3778 = &fcbFreeList
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
	mov	2760,r13		! source line 2760
	mov	"\0\0SE",r10
!   _temp_3779 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3780 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3779  sizeInBytes=4
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
_Label_3775:
! END IF...
_Label_3764:
! SEND STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0SE",r10
!   _temp_3781 = &fileManagerLock
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
	mov	2763,r13		! source line 2763
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
	.word	_Label_3782
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3783
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3784
	.word	12
	.word	4
	.word	_Label_3785
	.word	-12
	.word	4
	.word	_Label_3786
	.word	-16
	.word	4
	.word	_Label_3787
	.word	-20
	.word	4
	.word	_Label_3788
	.word	-24
	.word	4
	.word	_Label_3789
	.word	-28
	.word	4
	.word	_Label_3790
	.word	-32
	.word	4
	.word	_Label_3791
	.word	-36
	.word	4
	.word	_Label_3792
	.word	-40
	.word	4
	.word	_Label_3793
	.word	-44
	.word	4
	.word	_Label_3794
	.word	-48
	.word	4
	.word	_Label_3795
	.word	-52
	.word	4
	.word	_Label_3796
	.word	-56
	.word	4
	.word	_Label_3797
	.word	-60
	.word	4
	.word	_Label_3798
	.word	-64
	.word	4
	.word	_Label_3799
	.word	-68
	.word	4
	.word	_Label_3800
	.word	-72
	.word	4
	.word	_Label_3801
	.word	-76
	.word	4
	.word	_Label_3802
	.word	-80
	.word	4
	.word	_Label_3803
	.word	-84
	.word	4
	.word	_Label_3804
	.word	-88
	.word	4
	.word	_Label_3805
	.word	-92
	.word	4
	.word	_Label_3806
	.word	-96
	.word	4
	.word	_Label_3807
	.word	-100
	.word	4
	.word	_Label_3808
	.word	-104
	.word	4
	.word	0
_Label_3782:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3783:
	.ascii	"Pself\0"
	.align
_Label_3784:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3785:
	.byte	'?'
	.ascii	"_temp_3781\0"
	.align
_Label_3786:
	.byte	'?'
	.ascii	"_temp_3780\0"
	.align
_Label_3787:
	.byte	'?'
	.ascii	"_temp_3779\0"
	.align
_Label_3788:
	.byte	'?'
	.ascii	"_temp_3778\0"
	.align
_Label_3789:
	.byte	'?'
	.ascii	"_temp_3777\0"
	.align
_Label_3790:
	.byte	'?'
	.ascii	"_temp_3776\0"
	.align
_Label_3791:
	.byte	'?'
	.ascii	"_temp_3773\0"
	.align
_Label_3792:
	.byte	'?'
	.ascii	"_temp_3772\0"
	.align
_Label_3793:
	.byte	'?'
	.ascii	"_temp_3771\0"
	.align
_Label_3794:
	.byte	'?'
	.ascii	"_temp_3770\0"
	.align
_Label_3795:
	.byte	'?'
	.ascii	"_temp_3769\0"
	.align
_Label_3796:
	.byte	'?'
	.ascii	"_temp_3768\0"
	.align
_Label_3797:
	.byte	'?'
	.ascii	"_temp_3767\0"
	.align
_Label_3798:
	.byte	'?'
	.ascii	"_temp_3766\0"
	.align
_Label_3799:
	.byte	'?'
	.ascii	"_temp_3765\0"
	.align
_Label_3800:
	.byte	'?'
	.ascii	"_temp_3762\0"
	.align
_Label_3801:
	.byte	'?'
	.ascii	"_temp_3761\0"
	.align
_Label_3802:
	.byte	'?'
	.ascii	"_temp_3760\0"
	.align
_Label_3803:
	.byte	'?'
	.ascii	"_temp_3759\0"
	.align
_Label_3804:
	.byte	'?'
	.ascii	"_temp_3758\0"
	.align
_Label_3805:
	.byte	'?'
	.ascii	"_temp_3757\0"
	.align
_Label_3806:
	.byte	'?'
	.ascii	"_temp_3756\0"
	.align
_Label_3807:
	.byte	'?'
	.ascii	"_temp_3755\0"
	.align
_Label_3808:
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
_Label_4542:
	push	r0
	sub	r1,1,r1
	bne	_Label_4542
	mov	2768,r13		! source line 2768
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3812 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3811 = *_temp_3812  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3811) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3813 = _temp_3811 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3813 ) then goto _Label_3810		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3810
!	jmp	_Label_3809
_Label_3809:
! THEN...
	mov	2774,r13		! source line 2774
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3818 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3817 = *_temp_3818  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3817) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3819 = _temp_3817 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3816 = *_temp_3819  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3816 >= 0 then goto _Label_3815		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3815
!	jmp	_Label_3814
_Label_3814:
! THEN...
	mov	2775,r13		! source line 2775
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3820 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3820  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2775,r13		! source line 2775
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3815:
! ASSIGNMENT STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3822 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3821 = *_temp_3822  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3821) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3823 = _temp_3821 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3823 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3827 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3826 = *_temp_3827  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3826) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3828 = _temp_3826 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3825 = *_temp_3828  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3831 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3830 = *_temp_3831  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3830) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3832 = _temp_3830 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3829 = *_temp_3832  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3824 = _temp_3825 + _temp_3829		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3835 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3834 = *_temp_3835  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3834) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3836 = _temp_3834 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3833 = *_temp_3836  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3837 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3824  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3833  sizeInBytes=4
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
_Label_3810:
! RETURN STATEMENT...
	mov	2773,r13		! source line 2773
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
	.word	_Label_3838
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3839
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3840
	.word	12
	.word	4
	.word	_Label_3841
	.word	-12
	.word	4
	.word	_Label_3842
	.word	-16
	.word	4
	.word	_Label_3843
	.word	-20
	.word	4
	.word	_Label_3844
	.word	-24
	.word	4
	.word	_Label_3845
	.word	-28
	.word	4
	.word	_Label_3846
	.word	-32
	.word	4
	.word	_Label_3847
	.word	-36
	.word	4
	.word	_Label_3848
	.word	-40
	.word	4
	.word	_Label_3849
	.word	-44
	.word	4
	.word	_Label_3850
	.word	-48
	.word	4
	.word	_Label_3851
	.word	-52
	.word	4
	.word	_Label_3852
	.word	-56
	.word	4
	.word	_Label_3853
	.word	-60
	.word	4
	.word	_Label_3854
	.word	-64
	.word	4
	.word	_Label_3855
	.word	-68
	.word	4
	.word	_Label_3856
	.word	-72
	.word	4
	.word	_Label_3857
	.word	-76
	.word	4
	.word	_Label_3858
	.word	-80
	.word	4
	.word	_Label_3859
	.word	-84
	.word	4
	.word	_Label_3860
	.word	-88
	.word	4
	.word	_Label_3861
	.word	-92
	.word	4
	.word	_Label_3862
	.word	-96
	.word	4
	.word	_Label_3863
	.word	-100
	.word	4
	.word	_Label_3864
	.word	-104
	.word	4
	.word	_Label_3865
	.word	-108
	.word	4
	.word	0
_Label_3838:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3839:
	.ascii	"Pself\0"
	.align
_Label_3840:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3841:
	.byte	'?'
	.ascii	"_temp_3837\0"
	.align
_Label_3842:
	.byte	'?'
	.ascii	"_temp_3836\0"
	.align
_Label_3843:
	.byte	'?'
	.ascii	"_temp_3835\0"
	.align
_Label_3844:
	.byte	'?'
	.ascii	"_temp_3834\0"
	.align
_Label_3845:
	.byte	'?'
	.ascii	"_temp_3833\0"
	.align
_Label_3846:
	.byte	'?'
	.ascii	"_temp_3832\0"
	.align
_Label_3847:
	.byte	'?'
	.ascii	"_temp_3831\0"
	.align
_Label_3848:
	.byte	'?'
	.ascii	"_temp_3830\0"
	.align
_Label_3849:
	.byte	'?'
	.ascii	"_temp_3829\0"
	.align
_Label_3850:
	.byte	'?'
	.ascii	"_temp_3828\0"
	.align
_Label_3851:
	.byte	'?'
	.ascii	"_temp_3827\0"
	.align
_Label_3852:
	.byte	'?'
	.ascii	"_temp_3826\0"
	.align
_Label_3853:
	.byte	'?'
	.ascii	"_temp_3825\0"
	.align
_Label_3854:
	.byte	'?'
	.ascii	"_temp_3824\0"
	.align
_Label_3855:
	.byte	'?'
	.ascii	"_temp_3823\0"
	.align
_Label_3856:
	.byte	'?'
	.ascii	"_temp_3822\0"
	.align
_Label_3857:
	.byte	'?'
	.ascii	"_temp_3821\0"
	.align
_Label_3858:
	.byte	'?'
	.ascii	"_temp_3820\0"
	.align
_Label_3859:
	.byte	'?'
	.ascii	"_temp_3819\0"
	.align
_Label_3860:
	.byte	'?'
	.ascii	"_temp_3818\0"
	.align
_Label_3861:
	.byte	'?'
	.ascii	"_temp_3817\0"
	.align
_Label_3862:
	.byte	'?'
	.ascii	"_temp_3816\0"
	.align
_Label_3863:
	.byte	'?'
	.ascii	"_temp_3813\0"
	.align
_Label_3864:
	.byte	'?'
	.ascii	"_temp_3812\0"
	.align
_Label_3865:
	.byte	'?'
	.ascii	"_temp_3811\0"
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
_Label_4543:
	push	r0
	sub	r1,1,r1
	bne	_Label_4543
	mov	2787,r13		! source line 2787
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0SE",r10
!   _temp_3866 = &fileManagerLock
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
	mov	2803,r13		! source line 2803
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3872		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3872
!   _temp_3871 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3873
_Label_3872:
!   _temp_3871 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3873:
!   if _temp_3871 then goto _Label_3870 else goto _Label_3867
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3867
	jmp	_Label_3870
_Label_3870:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3876 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3875 = *_temp_3876  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3875 == 0 then goto _Label_3877		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3877
!   _temp_3874 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3878
_Label_3877:
!   _temp_3874 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3878:
!   if _temp_3874 then goto _Label_3869 else goto _Label_3867
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3867
	jmp	_Label_3869
_Label_3869:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3881 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3880 = *_temp_3881  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3880) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3882 = _temp_3880 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3879 = *_temp_3882  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3879 >= 0 then goto _Label_3868		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3868
!	jmp	_Label_3867
_Label_3867:
! THEN...
	mov	2804,r13		! source line 2804
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3883 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3883  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2804,r13		! source line 2804
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3868:
! ASSIGNMENT STATEMENT...
	mov	2806,r13		! source line 2806
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3884 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3884  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0WH",r10
_Label_3885:
!   if numBytes <= 0 then goto _Label_3887		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3887
!	jmp	_Label_3886
_Label_3886:
	mov	2807,r13		! source line 2807
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2816,r13		! source line 2816
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
	mov	2817,r13		! source line 2817
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
	mov	2821,r13		! source line 2821
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3891 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3890 = *_temp_3891  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3890 == sector then goto _Label_3889		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3889
!	jmp	_Label_3888
_Label_3888:
! THEN...
	mov	2822,r13		! source line 2822
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3892) then goto _runtimeErrorNullPointer
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
	mov	2824,r13		! source line 2824
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3895 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3894 = *_temp_3895  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3893 = sector + _temp_3894		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3897 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3896 = *_temp_3897  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3898 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3893  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3896  sizeInBytes=4
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
	mov	2827,r13		! source line 2827
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3899 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3899 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3900 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3900 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3889:
! ASSIGNMENT STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3902 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3901 = *_temp_3902  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3901 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0AS",r10
!   _temp_3903 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3903  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2831,r13		! source line 2831
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
	mov	2835,r13		! source line 2835
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2836,r13		! source line 2836
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3885
_Label_3887:
! SEND STATEMENT...
	mov	2845,r13		! source line 2845
	mov	"\0\0SE",r10
!   _temp_3904 = &fileManagerLock
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
	mov	2846,r13		! source line 2846
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
	.word	_Label_3905
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3906
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3907
	.word	12
	.word	4
	.word	_Label_3908
	.word	16
	.word	4
	.word	_Label_3909
	.word	20
	.word	4
	.word	_Label_3910
	.word	24
	.word	4
	.word	_Label_3911
	.word	-16
	.word	4
	.word	_Label_3912
	.word	-20
	.word	4
	.word	_Label_3913
	.word	-24
	.word	4
	.word	_Label_3914
	.word	-28
	.word	4
	.word	_Label_3915
	.word	-32
	.word	4
	.word	_Label_3916
	.word	-36
	.word	4
	.word	_Label_3917
	.word	-40
	.word	4
	.word	_Label_3918
	.word	-44
	.word	4
	.word	_Label_3919
	.word	-48
	.word	4
	.word	_Label_3920
	.word	-52
	.word	4
	.word	_Label_3921
	.word	-56
	.word	4
	.word	_Label_3922
	.word	-60
	.word	4
	.word	_Label_3923
	.word	-64
	.word	4
	.word	_Label_3924
	.word	-68
	.word	4
	.word	_Label_3925
	.word	-72
	.word	4
	.word	_Label_3926
	.word	-76
	.word	4
	.word	_Label_3927
	.word	-80
	.word	4
	.word	_Label_3928
	.word	-84
	.word	4
	.word	_Label_3929
	.word	-88
	.word	4
	.word	_Label_3930
	.word	-92
	.word	4
	.word	_Label_3931
	.word	-96
	.word	4
	.word	_Label_3932
	.word	-100
	.word	4
	.word	_Label_3933
	.word	-104
	.word	4
	.word	_Label_3934
	.word	-9
	.word	1
	.word	_Label_3935
	.word	-10
	.word	1
	.word	_Label_3936
	.word	-108
	.word	4
	.word	_Label_3937
	.word	-112
	.word	4
	.word	_Label_3938
	.word	-116
	.word	4
	.word	_Label_3939
	.word	-120
	.word	4
	.word	_Label_3940
	.word	-124
	.word	4
	.word	_Label_3941
	.word	-128
	.word	4
	.word	0
_Label_3905:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3906:
	.ascii	"Pself\0"
	.align
_Label_3907:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3908:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3909:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3910:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3911:
	.byte	'?'
	.ascii	"_temp_3904\0"
	.align
_Label_3912:
	.byte	'?'
	.ascii	"_temp_3903\0"
	.align
_Label_3913:
	.byte	'?'
	.ascii	"_temp_3902\0"
	.align
_Label_3914:
	.byte	'?'
	.ascii	"_temp_3901\0"
	.align
_Label_3915:
	.byte	'?'
	.ascii	"_temp_3900\0"
	.align
_Label_3916:
	.byte	'?'
	.ascii	"_temp_3899\0"
	.align
_Label_3917:
	.byte	'?'
	.ascii	"_temp_3898\0"
	.align
_Label_3918:
	.byte	'?'
	.ascii	"_temp_3897\0"
	.align
_Label_3919:
	.byte	'?'
	.ascii	"_temp_3896\0"
	.align
_Label_3920:
	.byte	'?'
	.ascii	"_temp_3895\0"
	.align
_Label_3921:
	.byte	'?'
	.ascii	"_temp_3894\0"
	.align
_Label_3922:
	.byte	'?'
	.ascii	"_temp_3893\0"
	.align
_Label_3923:
	.byte	'?'
	.ascii	"_temp_3892\0"
	.align
_Label_3924:
	.byte	'?'
	.ascii	"_temp_3891\0"
	.align
_Label_3925:
	.byte	'?'
	.ascii	"_temp_3890\0"
	.align
_Label_3926:
	.byte	'?'
	.ascii	"_temp_3884\0"
	.align
_Label_3927:
	.byte	'?'
	.ascii	"_temp_3883\0"
	.align
_Label_3928:
	.byte	'?'
	.ascii	"_temp_3882\0"
	.align
_Label_3929:
	.byte	'?'
	.ascii	"_temp_3881\0"
	.align
_Label_3930:
	.byte	'?'
	.ascii	"_temp_3880\0"
	.align
_Label_3931:
	.byte	'?'
	.ascii	"_temp_3879\0"
	.align
_Label_3932:
	.byte	'?'
	.ascii	"_temp_3876\0"
	.align
_Label_3933:
	.byte	'?'
	.ascii	"_temp_3875\0"
	.align
_Label_3934:
	.byte	'C'
	.ascii	"_temp_3874\0"
	.align
_Label_3935:
	.byte	'C'
	.ascii	"_temp_3871\0"
	.align
_Label_3936:
	.byte	'?'
	.ascii	"_temp_3866\0"
	.align
_Label_3937:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3938:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3939:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3940:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3941:
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
_Label_4544:
	push	r0
	sub	r1,1,r1
	bne	_Label_4544
	mov	2851,r13		! source line 2851
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0SE",r10
!   _temp_3942 = &fileManagerLock
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
	mov	2868,r13		! source line 2868
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3948		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3948
!   _temp_3947 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3949
_Label_3948:
!   _temp_3947 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3949:
!   if _temp_3947 then goto _Label_3946 else goto _Label_3943
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3943
	jmp	_Label_3946
_Label_3946:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3952 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3951 = *_temp_3952  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3951 == 0 then goto _Label_3953		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3953
!   _temp_3950 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3954
_Label_3953:
!   _temp_3950 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3954:
!   if _temp_3950 then goto _Label_3945 else goto _Label_3943
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3943
	jmp	_Label_3945
_Label_3945:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3957 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3956 = *_temp_3957  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3956) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3958 = _temp_3956 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3955 = *_temp_3958  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3955 >= 0 then goto _Label_3944		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3944
!	jmp	_Label_3943
_Label_3943:
! THEN...
	mov	2869,r13		! source line 2869
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3959 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3959  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2869,r13		! source line 2869
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3944:
! ASSIGNMENT STATEMENT...
	mov	2871,r13		! source line 2871
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3960 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3960  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0WH",r10
_Label_3961:
!   if numBytes <= 0 then goto _Label_3963		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3963
!	jmp	_Label_3962
_Label_3962:
	mov	2872,r13		! source line 2872
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2881,r13		! source line 2881
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
	mov	2882,r13		! source line 2882
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
	mov	2886,r13		! source line 2886
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3967 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3966 = *_temp_3967  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3966 == sector then goto _Label_3965		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3965
!	jmp	_Label_3964
_Label_3964:
! THEN...
	mov	2888,r13		! source line 2888
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2888,r13		! source line 2888
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3968) then goto _runtimeErrorNullPointer
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
_Label_3965:
! ASSIGNMENT STATEMENT...
	mov	2890,r13		! source line 2890
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3970 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3969 = *_temp_3970  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3969 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2891,r13		! source line 2891
	mov	"\0\0AS",r10
!   _temp_3971 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3971  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2891,r13		! source line 2891
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2892,r13		! source line 2892
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3975 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3974 = *_temp_3975  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3974 != sector then goto _Label_3973		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3973
!	jmp	_Label_3972
_Label_3972:
	jmp	_Label_3976
_Label_3973:
! ELSE...
	mov	2894,r13		! source line 2894
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2894,r13		! source line 2894
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3979
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3979
	jmp	_Label_3978
_Label_3979:
!   if bytesToMove != 8192 then goto _Label_3978		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3978
!	jmp	_Label_3977
_Label_3977:
	jmp	_Label_3980
_Label_3978:
! ELSE...
	mov	2898,r13		! source line 2898
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2898,r13		! source line 2898
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3983 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3982 = *_temp_3983  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3981 = sector + _temp_3982		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3985 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3984 = *_temp_3985  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3986 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3981  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3984  sizeInBytes=4
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
_Label_3980:
! END IF...
_Label_3976:
! ASSIGNMENT STATEMENT...
	mov	2902,r13		! source line 2902
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3987 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3987 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2903,r13		! source line 2903
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3988 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3988 = 1  (sizeInBytes=1)
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
	mov	2907,r13		! source line 2907
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2908,r13		! source line 2908
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2909,r13		! source line 2909
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2910,r13		! source line 2910
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3961
_Label_3963:
! SEND STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0SE",r10
!   _temp_3989 = &fileManagerLock
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
	mov	2919,r13		! source line 2919
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
	.word	_Label_3990
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3991
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3992
	.word	12
	.word	4
	.word	_Label_3993
	.word	16
	.word	4
	.word	_Label_3994
	.word	20
	.word	4
	.word	_Label_3995
	.word	24
	.word	4
	.word	_Label_3996
	.word	-16
	.word	4
	.word	_Label_3997
	.word	-20
	.word	4
	.word	_Label_3998
	.word	-24
	.word	4
	.word	_Label_3999
	.word	-28
	.word	4
	.word	_Label_4000
	.word	-32
	.word	4
	.word	_Label_4001
	.word	-36
	.word	4
	.word	_Label_4002
	.word	-40
	.word	4
	.word	_Label_4003
	.word	-44
	.word	4
	.word	_Label_4004
	.word	-48
	.word	4
	.word	_Label_4005
	.word	-52
	.word	4
	.word	_Label_4006
	.word	-56
	.word	4
	.word	_Label_4007
	.word	-60
	.word	4
	.word	_Label_4008
	.word	-64
	.word	4
	.word	_Label_4009
	.word	-68
	.word	4
	.word	_Label_4010
	.word	-72
	.word	4
	.word	_Label_4011
	.word	-76
	.word	4
	.word	_Label_4012
	.word	-80
	.word	4
	.word	_Label_4013
	.word	-84
	.word	4
	.word	_Label_4014
	.word	-88
	.word	4
	.word	_Label_4015
	.word	-92
	.word	4
	.word	_Label_4016
	.word	-96
	.word	4
	.word	_Label_4017
	.word	-100
	.word	4
	.word	_Label_4018
	.word	-104
	.word	4
	.word	_Label_4019
	.word	-108
	.word	4
	.word	_Label_4020
	.word	-112
	.word	4
	.word	_Label_4021
	.word	-9
	.word	1
	.word	_Label_4022
	.word	-10
	.word	1
	.word	_Label_4023
	.word	-116
	.word	4
	.word	_Label_4024
	.word	-120
	.word	4
	.word	_Label_4025
	.word	-124
	.word	4
	.word	_Label_4026
	.word	-128
	.word	4
	.word	_Label_4027
	.word	-132
	.word	4
	.word	_Label_4028
	.word	-136
	.word	4
	.word	0
_Label_3990:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3991:
	.ascii	"Pself\0"
	.align
_Label_3992:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3993:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3994:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3995:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3996:
	.byte	'?'
	.ascii	"_temp_3989\0"
	.align
_Label_3997:
	.byte	'?'
	.ascii	"_temp_3988\0"
	.align
_Label_3998:
	.byte	'?'
	.ascii	"_temp_3987\0"
	.align
_Label_3999:
	.byte	'?'
	.ascii	"_temp_3986\0"
	.align
_Label_4000:
	.byte	'?'
	.ascii	"_temp_3985\0"
	.align
_Label_4001:
	.byte	'?'
	.ascii	"_temp_3984\0"
	.align
_Label_4002:
	.byte	'?'
	.ascii	"_temp_3983\0"
	.align
_Label_4003:
	.byte	'?'
	.ascii	"_temp_3982\0"
	.align
_Label_4004:
	.byte	'?'
	.ascii	"_temp_3981\0"
	.align
_Label_4005:
	.byte	'?'
	.ascii	"_temp_3975\0"
	.align
_Label_4006:
	.byte	'?'
	.ascii	"_temp_3974\0"
	.align
_Label_4007:
	.byte	'?'
	.ascii	"_temp_3971\0"
	.align
_Label_4008:
	.byte	'?'
	.ascii	"_temp_3970\0"
	.align
_Label_4009:
	.byte	'?'
	.ascii	"_temp_3969\0"
	.align
_Label_4010:
	.byte	'?'
	.ascii	"_temp_3968\0"
	.align
_Label_4011:
	.byte	'?'
	.ascii	"_temp_3967\0"
	.align
_Label_4012:
	.byte	'?'
	.ascii	"_temp_3966\0"
	.align
_Label_4013:
	.byte	'?'
	.ascii	"_temp_3960\0"
	.align
_Label_4014:
	.byte	'?'
	.ascii	"_temp_3959\0"
	.align
_Label_4015:
	.byte	'?'
	.ascii	"_temp_3958\0"
	.align
_Label_4016:
	.byte	'?'
	.ascii	"_temp_3957\0"
	.align
_Label_4017:
	.byte	'?'
	.ascii	"_temp_3956\0"
	.align
_Label_4018:
	.byte	'?'
	.ascii	"_temp_3955\0"
	.align
_Label_4019:
	.byte	'?'
	.ascii	"_temp_3952\0"
	.align
_Label_4020:
	.byte	'?'
	.ascii	"_temp_3951\0"
	.align
_Label_4021:
	.byte	'C'
	.ascii	"_temp_3950\0"
	.align
_Label_4022:
	.byte	'C'
	.ascii	"_temp_3947\0"
	.align
_Label_4023:
	.byte	'?'
	.ascii	"_temp_3942\0"
	.align
_Label_4024:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_4025:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_4026:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_4027:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_4028:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_4029
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_4029:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4030
	.word	_sourceFileName
	.word	359		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_4030:
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
_Label_4545:
	push	r0
	sub	r1,1,r1
	bne	_Label_4545
	mov	2955,r13		! source line 2955
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2956,r13		! source line 2956
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2957,r13		! source line 2957
	mov	"\0\0AS",r10
	mov	2957,r13		! source line 2957
	mov	"\0\0SE",r10
!   _temp_4031 = &_P_Kernel_frameManager
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
	mov	2958,r13		! source line 2958
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2959,r13		! source line 2959
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2960,r13		! source line 2960
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2960,r13		! source line 2960
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
	.word	_Label_4032
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_4033
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4034
	.word	-12
	.word	4
	.word	0
_Label_4032:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4033:
	.ascii	"Pself\0"
	.align
_Label_4034:
	.byte	'?'
	.ascii	"_temp_4031\0"
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
_Label_4546:
	push	r0
	sub	r1,1,r1
	bne	_Label_4546
	mov	2965,r13		! source line 2965
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4035 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_4035  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2966,r13		! source line 2966
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2967,r13		! source line 2967
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4036 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_4036  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2968,r13		! source line 2968
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2969,r13		! source line 2969
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4037 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_4037  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2970,r13		! source line 2970
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2971,r13		! source line 2971
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4038 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4038  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2972,r13		! source line 2972
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2973,r13		! source line 2973
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4039 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4039  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2974,r13		! source line 2974
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2975,r13		! source line 2975
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_4040 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4040  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2976,r13		! source line 2976
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2977,r13		! source line 2977
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2978,r13		! source line 2978
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2978,r13		! source line 2978
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
	.word	_Label_4041
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_4042
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4043
	.word	-12
	.word	4
	.word	_Label_4044
	.word	-16
	.word	4
	.word	_Label_4045
	.word	-20
	.word	4
	.word	_Label_4046
	.word	-24
	.word	4
	.word	_Label_4047
	.word	-28
	.word	4
	.word	_Label_4048
	.word	-32
	.word	4
	.word	0
_Label_4041:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4042:
	.ascii	"Pself\0"
	.align
_Label_4043:
	.byte	'?'
	.ascii	"_temp_4040\0"
	.align
_Label_4044:
	.byte	'?'
	.ascii	"_temp_4039\0"
	.align
_Label_4045:
	.byte	'?'
	.ascii	"_temp_4038\0"
	.align
_Label_4046:
	.byte	'?'
	.ascii	"_temp_4037\0"
	.align
_Label_4047:
	.byte	'?'
	.ascii	"_temp_4036\0"
	.align
_Label_4048:
	.byte	'?'
	.ascii	"_temp_4035\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_4049
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_4049:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4050
	.word	_sourceFileName
	.word	376		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_4050:
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
_Label_4547:
	push	r0
	sub	r1,1,r1
	bne	_Label_4547
	mov	2989,r13		! source line 2989
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4051 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4051  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2990,r13		! source line 2990
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2991,r13		! source line 2991
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4052 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4052  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2992,r13		! source line 2992
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2993,r13		! source line 2993
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_4054		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4054
!	jmp	_Label_4053
_Label_4053:
! THEN...
	mov	2994,r13		! source line 2994
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2994,r13		! source line 2994
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
	jmp	_Label_4055
_Label_4054:
! ELSE...
	mov	2996,r13		! source line 2996
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_4056 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4056  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2996,r13		! source line 2996
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_4055:
! RETURN STATEMENT...
	mov	2993,r13		! source line 2993
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
	.word	_Label_4057
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_4058
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4059
	.word	-12
	.word	4
	.word	_Label_4060
	.word	-16
	.word	4
	.word	_Label_4061
	.word	-20
	.word	4
	.word	0
_Label_4057:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4058:
	.ascii	"Pself\0"
	.align
_Label_4059:
	.byte	'?'
	.ascii	"_temp_4056\0"
	.align
_Label_4060:
	.byte	'?'
	.ascii	"_temp_4052\0"
	.align
_Label_4061:
	.byte	'?'
	.ascii	"_temp_4051\0"
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
_Label_4548:
	push	r0
	sub	r1,1,r1
	bne	_Label_4548
	mov	3002,r13		! source line 3002
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3012,r13		! source line 3012
	mov	"\0\0SE",r10
!   _temp_4062 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_4063 = _temp_4062 + 4
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
	mov	3013,r13		! source line 3013
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3014,r13		! source line 3014
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
	mov	3015,r13		! source line 3015
	mov	"\0\0SE",r10
!   _temp_4064 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_4065 = _temp_4064 + 4
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
	mov	3016,r13		! source line 3016
	mov	"\0\0RE",r10
	mov	3016,r13		! source line 3016
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_4068 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_4067  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_4066  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_4066  (sizeInBytes=1)
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
	.word	_Label_4069
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_4070
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4071
	.word	12
	.word	4
	.word	_Label_4072
	.word	16
	.word	4
	.word	_Label_4073
	.word	-16
	.word	4
	.word	_Label_4074
	.word	-20
	.word	4
	.word	_Label_4075
	.word	-9
	.word	1
	.word	_Label_4076
	.word	-24
	.word	4
	.word	_Label_4077
	.word	-28
	.word	4
	.word	_Label_4078
	.word	-32
	.word	4
	.word	_Label_4079
	.word	-36
	.word	4
	.word	_Label_4080
	.word	-40
	.word	4
	.word	0
_Label_4069:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_4070:
	.ascii	"Pself\0"
	.align
_Label_4071:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_4072:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4073:
	.byte	'?'
	.ascii	"_temp_4068\0"
	.align
_Label_4074:
	.byte	'?'
	.ascii	"_temp_4067\0"
	.align
_Label_4075:
	.byte	'C'
	.ascii	"_temp_4066\0"
	.align
_Label_4076:
	.byte	'?'
	.ascii	"_temp_4065\0"
	.align
_Label_4077:
	.byte	'?'
	.ascii	"_temp_4064\0"
	.align
_Label_4078:
	.byte	'?'
	.ascii	"_temp_4063\0"
	.align
_Label_4079:
	.byte	'?'
	.ascii	"_temp_4062\0"
	.align
_Label_4080:
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
_Label_4549:
	push	r0
	sub	r1,1,r1
	bne	_Label_4549
	mov	3021,r13		! source line 3021
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3026,r13		! source line 3026
	mov	"\0\0IF",r10
	mov	3026,r13		! source line 3026
	mov	"\0\0SE",r10
!   _temp_4084 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_4085) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4084  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_4083  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4083 then goto _Label_4082 else goto _Label_4081
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4081
	jmp	_Label_4082
_Label_4081:
! THEN...
	mov	3027,r13		! source line 3027
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4086 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4086  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3027,r13		! source line 3027
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4082:
! RETURN STATEMENT...
	mov	3029,r13		! source line 3029
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
	.word	_Label_4087
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_4088
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4089
	.word	-16
	.word	4
	.word	_Label_4090
	.word	-20
	.word	4
	.word	_Label_4091
	.word	-24
	.word	4
	.word	_Label_4092
	.word	-9
	.word	1
	.word	_Label_4093
	.word	-28
	.word	4
	.word	0
_Label_4087:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_4088:
	.ascii	"Pself\0"
	.align
_Label_4089:
	.byte	'?'
	.ascii	"_temp_4086\0"
	.align
_Label_4090:
	.byte	'?'
	.ascii	"_temp_4085\0"
	.align
_Label_4091:
	.byte	'?'
	.ascii	"_temp_4084\0"
	.align
_Label_4092:
	.byte	'C'
	.ascii	"_temp_4083\0"
	.align
_Label_4093:
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
_Label_4550:
	push	r0
	sub	r1,1,r1
	bne	_Label_4550
	mov	3034,r13		! source line 3034
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3060,r13		! source line 3060
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4097 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_4096 = *_temp_4097  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_4096) then goto _Label_4095
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_4095
!	jmp	_Label_4094
_Label_4094:
! THEN...
	mov	3061,r13		! source line 3061
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4098 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_4098  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3061,r13		! source line 3061
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4095:
! IF STATEMENT...
	mov	3065,r13		! source line 3065
	mov	"\0\0IF",r10
	mov	3065,r13		! source line 3065
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_4102) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4101  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_4101 == 1112300152 then goto _Label_4100		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_4100
!	jmp	_Label_4099
_Label_4099:
! THEN...
	mov	3066,r13		! source line 3066
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4103 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_4103  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3066,r13		! source line 3066
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3067,r13		! source line 3067
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4100:
! ASSIGNMENT STATEMENT...
	mov	3071,r13		! source line 3071
	mov	"\0\0AS",r10
	mov	3071,r13		! source line 3071
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_4104) then goto _runtimeErrorNullPointer
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
	mov	3072,r13		! source line 3072
	mov	"\0\0AS",r10
	mov	3072,r13		! source line 3072
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_4105) then goto _runtimeErrorNullPointer
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
	mov	3073,r13		! source line 3073
	mov	"\0\0AS",r10
	mov	3073,r13		! source line 3073
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_4106) then goto _runtimeErrorNullPointer
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
	mov	3074,r13		! source line 3074
	mov	"\0\0AS",r10
	mov	3074,r13		! source line 3074
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_4107) then goto _runtimeErrorNullPointer
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
	mov	3075,r13		! source line 3075
	mov	"\0\0AS",r10
	mov	3075,r13		! source line 3075
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_4108) then goto _runtimeErrorNullPointer
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
	mov	3076,r13		! source line 3076
	mov	"\0\0AS",r10
	mov	3076,r13		! source line 3076
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_4109) then goto _runtimeErrorNullPointer
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
	mov	3079,r13		! source line 3079
	mov	"\0\0IF",r10
!   _temp_4112 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_4112) then goto _Label_4111
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_4111
!	jmp	_Label_4110
_Label_4110:
! THEN...
	mov	3080,r13		! source line 3080
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4113 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_4113  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3080,r13		! source line 3080
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3081,r13		! source line 3081
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4111:
! ASSIGNMENT STATEMENT...
	mov	3083,r13		! source line 3083
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
	mov	3087,r13		! source line 3087
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_4115
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_4115
!	jmp	_Label_4114
_Label_4114:
! THEN...
	mov	3088,r13		! source line 3088
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4116 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_4116  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3088,r13		! source line 3088
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3089,r13		! source line 3089
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4115:
! IF STATEMENT...
	mov	3093,r13		! source line 3093
	mov	"\0\0IF",r10
!   _temp_4119 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_4119) then goto _Label_4118
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_4118
!	jmp	_Label_4117
_Label_4117:
! THEN...
	mov	3094,r13		! source line 3094
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4120 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_4120  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3094,r13		! source line 3094
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3095,r13		! source line 3095
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4118:
! IF STATEMENT...
	mov	3097,r13		! source line 3097
	mov	"\0\0IF",r10
!   _temp_4123 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_4123 then goto _Label_4122		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_4122
!	jmp	_Label_4121
_Label_4121:
! THEN...
	mov	3098,r13		! source line 3098
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4124 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_4124  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3098,r13		! source line 3098
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3099,r13		! source line 3099
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4122:
! ASSIGNMENT STATEMENT...
	mov	3101,r13		! source line 3101
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
	mov	3104,r13		! source line 3104
	mov	"\0\0IF",r10
!   _temp_4127 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_4127) then goto _Label_4126
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_4126
!	jmp	_Label_4125
_Label_4125:
! THEN...
	mov	3105,r13		! source line 3105
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4128 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_4128  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3105,r13		! source line 3105
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3106,r13		! source line 3106
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4126:
! IF STATEMENT...
	mov	3108,r13		! source line 3108
	mov	"\0\0IF",r10
!   _temp_4131 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_4131 then goto _Label_4130		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_4130
!	jmp	_Label_4129
_Label_4129:
! THEN...
	mov	3109,r13		! source line 3109
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4132 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_4132  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3109,r13		! source line 3109
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3110,r13		! source line 3110
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4130:
! ASSIGNMENT STATEMENT...
	mov	3112,r13		! source line 3112
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
	mov	3115,r13		! source line 3115
	mov	"\0\0AS",r10
!   _temp_4135 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_4134 = _temp_4135 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_4133 = _temp_4134 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_4133 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3130,r13		! source line 3130
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_4137		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4137
!	jmp	_Label_4136
_Label_4136:
! THEN...
	mov	3131,r13		! source line 3131
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4138 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_4138  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3131,r13		! source line 3131
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_4139 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_4139  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3132,r13		! source line 3132
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_4140 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_4140  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3133,r13		! source line 3133
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3134,r13		! source line 3134
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4137:
! SEND STATEMENT...
	mov	3136,r13		! source line 3136
	mov	"\0\0SE",r10
!   _temp_4141 = &_P_Kernel_frameManager
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
	mov	3142,r13		! source line 3142
	mov	"\0\0IF",r10
	mov	3142,r13		! source line 3142
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_4145) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4144  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_4144 == 707406378 then goto _Label_4143		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4143
!	jmp	_Label_4142
_Label_4142:
! THEN...
	mov	3143,r13		! source line 3143
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4146 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_4146  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3143,r13		! source line 3143
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3144,r13		! source line 3144
	mov	"\0\0SE",r10
!   _temp_4147 = &_P_Kernel_frameManager
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
	mov	3145,r13		! source line 3145
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4143:
! ASSIGNMENT STATEMENT...
	mov	3149,r13		! source line 3149
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
	mov	3150,r13		! source line 3150
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4152 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4153 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4152  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_4148:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4153 then goto _Label_4151		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4151
_Label_4149:
	mov	3150,r13		! source line 3150
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3151,r13		! source line 3151
	mov	"\0\0AS",r10
	mov	3151,r13		! source line 3151
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
	mov	3154,r13		! source line 3154
	mov	"\0\0IF",r10
	mov	3154,r13		! source line 3154
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_4157) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4156  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_4156 then goto _Label_4155 else goto _Label_4154
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4154
	jmp	_Label_4155
_Label_4154:
! THEN...
	mov	3155,r13		! source line 3155
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4158 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_4158  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3155,r13		! source line 3155
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3156,r13		! source line 3156
	mov	"\0\0SE",r10
!   _temp_4159 = &_P_Kernel_frameManager
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
	mov	3157,r13		! source line 3157
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4155:
! SEND STATEMENT...
	mov	3159,r13		! source line 3159
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
	mov	3160,r13		! source line 3160
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4150:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4148
! END FOR
_Label_4151:
! IF STATEMENT...
	mov	3164,r13		! source line 3164
	mov	"\0\0IF",r10
	mov	3164,r13		! source line 3164
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_4163) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4162  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_4162 == 707406378 then goto _Label_4161		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4161
!	jmp	_Label_4160
_Label_4160:
! THEN...
	mov	3165,r13		! source line 3165
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4164 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_4164  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3165,r13		! source line 3165
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3166,r13		! source line 3166
	mov	"\0\0SE",r10
!   _temp_4165 = &_P_Kernel_frameManager
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
	mov	3167,r13		! source line 3167
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4161:
! FOR STATEMENT...
	mov	3171,r13		! source line 3171
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4170 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4171 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4170  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_4166:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4171 then goto _Label_4169		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4169
_Label_4167:
	mov	3171,r13		! source line 3171
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3172,r13		! source line 3172
	mov	"\0\0AS",r10
	mov	3172,r13		! source line 3172
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
	mov	3175,r13		! source line 3175
	mov	"\0\0IF",r10
	mov	3175,r13		! source line 3175
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_4175) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4174  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4174 then goto _Label_4173 else goto _Label_4172
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4172
	jmp	_Label_4173
_Label_4172:
! THEN...
	mov	3176,r13		! source line 3176
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4176 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_4176  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3176,r13		! source line 3176
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3177,r13		! source line 3177
	mov	"\0\0SE",r10
!   _temp_4177 = &_P_Kernel_frameManager
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
	mov	3178,r13		! source line 3178
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4173:
! ASSIGNMENT STATEMENT...
	mov	3180,r13		! source line 3180
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4168:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4166
! END FOR
_Label_4169:
! IF STATEMENT...
	mov	3184,r13		! source line 3184
	mov	"\0\0IF",r10
	mov	3184,r13		! source line 3184
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_4181) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4180  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_4180 == 707406378 then goto _Label_4179		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4179
!	jmp	_Label_4178
_Label_4178:
! THEN...
	mov	3185,r13		! source line 3185
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4182 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4182  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3185,r13		! source line 3185
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3186,r13		! source line 3186
	mov	"\0\0SE",r10
!   _temp_4183 = &_P_Kernel_frameManager
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
	mov	3187,r13		! source line 3187
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4179:
! ASSIGNMENT STATEMENT...
	mov	3191,r13		! source line 3191
	mov	"\0\0AS",r10
	mov	3191,r13		! source line 3191
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
	mov	3195,r13		! source line 3195
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3198,r13		! source line 3198
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
	.word	_Label_4184
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_4185
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4186
	.word	12
	.word	4
	.word	_Label_4187
	.word	-16
	.word	4
	.word	_Label_4188
	.word	-20
	.word	4
	.word	_Label_4189
	.word	-24
	.word	4
	.word	_Label_4190
	.word	-28
	.word	4
	.word	_Label_4191
	.word	-32
	.word	4
	.word	_Label_4192
	.word	-36
	.word	4
	.word	_Label_4193
	.word	-40
	.word	4
	.word	_Label_4194
	.word	-9
	.word	1
	.word	_Label_4195
	.word	-44
	.word	4
	.word	_Label_4196
	.word	-48
	.word	4
	.word	_Label_4197
	.word	-52
	.word	4
	.word	_Label_4198
	.word	-56
	.word	4
	.word	_Label_4199
	.word	-60
	.word	4
	.word	_Label_4200
	.word	-64
	.word	4
	.word	_Label_4201
	.word	-68
	.word	4
	.word	_Label_4202
	.word	-72
	.word	4
	.word	_Label_4203
	.word	-76
	.word	4
	.word	_Label_4204
	.word	-10
	.word	1
	.word	_Label_4205
	.word	-80
	.word	4
	.word	_Label_4206
	.word	-84
	.word	4
	.word	_Label_4207
	.word	-88
	.word	4
	.word	_Label_4208
	.word	-92
	.word	4
	.word	_Label_4209
	.word	-96
	.word	4
	.word	_Label_4210
	.word	-100
	.word	4
	.word	_Label_4211
	.word	-104
	.word	4
	.word	_Label_4212
	.word	-108
	.word	4
	.word	_Label_4213
	.word	-112
	.word	4
	.word	_Label_4214
	.word	-116
	.word	4
	.word	_Label_4215
	.word	-120
	.word	4
	.word	_Label_4216
	.word	-124
	.word	4
	.word	_Label_4217
	.word	-128
	.word	4
	.word	_Label_4218
	.word	-132
	.word	4
	.word	_Label_4219
	.word	-136
	.word	4
	.word	_Label_4220
	.word	-140
	.word	4
	.word	_Label_4221
	.word	-144
	.word	4
	.word	_Label_4222
	.word	-148
	.word	4
	.word	_Label_4223
	.word	-152
	.word	4
	.word	_Label_4224
	.word	-156
	.word	4
	.word	_Label_4225
	.word	-160
	.word	4
	.word	_Label_4226
	.word	-164
	.word	4
	.word	_Label_4227
	.word	-168
	.word	4
	.word	_Label_4228
	.word	-172
	.word	4
	.word	_Label_4229
	.word	-176
	.word	4
	.word	_Label_4230
	.word	-180
	.word	4
	.word	_Label_4231
	.word	-184
	.word	4
	.word	_Label_4232
	.word	-188
	.word	4
	.word	_Label_4233
	.word	-192
	.word	4
	.word	_Label_4234
	.word	-196
	.word	4
	.word	_Label_4235
	.word	-200
	.word	4
	.word	_Label_4236
	.word	-204
	.word	4
	.word	_Label_4237
	.word	-208
	.word	4
	.word	_Label_4238
	.word	-212
	.word	4
	.word	_Label_4239
	.word	-216
	.word	4
	.word	_Label_4240
	.word	-220
	.word	4
	.word	_Label_4241
	.word	-224
	.word	4
	.word	_Label_4242
	.word	-228
	.word	4
	.word	_Label_4243
	.word	-232
	.word	4
	.word	_Label_4244
	.word	-236
	.word	4
	.word	_Label_4245
	.word	-240
	.word	4
	.word	_Label_4246
	.word	-244
	.word	4
	.word	_Label_4247
	.word	-248
	.word	4
	.word	_Label_4248
	.word	-252
	.word	4
	.word	_Label_4249
	.word	-256
	.word	4
	.word	_Label_4250
	.word	-260
	.word	4
	.word	_Label_4251
	.word	-264
	.word	4
	.word	_Label_4252
	.word	-268
	.word	4
	.word	0
_Label_4184:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_4185:
	.ascii	"Pself\0"
	.align
_Label_4186:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_4187:
	.byte	'?'
	.ascii	"_temp_4183\0"
	.align
_Label_4188:
	.byte	'?'
	.ascii	"_temp_4182\0"
	.align
_Label_4189:
	.byte	'?'
	.ascii	"_temp_4181\0"
	.align
_Label_4190:
	.byte	'?'
	.ascii	"_temp_4180\0"
	.align
_Label_4191:
	.byte	'?'
	.ascii	"_temp_4177\0"
	.align
_Label_4192:
	.byte	'?'
	.ascii	"_temp_4176\0"
	.align
_Label_4193:
	.byte	'?'
	.ascii	"_temp_4175\0"
	.align
_Label_4194:
	.byte	'C'
	.ascii	"_temp_4174\0"
	.align
_Label_4195:
	.byte	'?'
	.ascii	"_temp_4171\0"
	.align
_Label_4196:
	.byte	'?'
	.ascii	"_temp_4170\0"
	.align
_Label_4197:
	.byte	'?'
	.ascii	"_temp_4165\0"
	.align
_Label_4198:
	.byte	'?'
	.ascii	"_temp_4164\0"
	.align
_Label_4199:
	.byte	'?'
	.ascii	"_temp_4163\0"
	.align
_Label_4200:
	.byte	'?'
	.ascii	"_temp_4162\0"
	.align
_Label_4201:
	.byte	'?'
	.ascii	"_temp_4159\0"
	.align
_Label_4202:
	.byte	'?'
	.ascii	"_temp_4158\0"
	.align
_Label_4203:
	.byte	'?'
	.ascii	"_temp_4157\0"
	.align
_Label_4204:
	.byte	'C'
	.ascii	"_temp_4156\0"
	.align
_Label_4205:
	.byte	'?'
	.ascii	"_temp_4153\0"
	.align
_Label_4206:
	.byte	'?'
	.ascii	"_temp_4152\0"
	.align
_Label_4207:
	.byte	'?'
	.ascii	"_temp_4147\0"
	.align
_Label_4208:
	.byte	'?'
	.ascii	"_temp_4146\0"
	.align
_Label_4209:
	.byte	'?'
	.ascii	"_temp_4145\0"
	.align
_Label_4210:
	.byte	'?'
	.ascii	"_temp_4144\0"
	.align
_Label_4211:
	.byte	'?'
	.ascii	"_temp_4141\0"
	.align
_Label_4212:
	.byte	'?'
	.ascii	"_temp_4140\0"
	.align
_Label_4213:
	.byte	'?'
	.ascii	"_temp_4139\0"
	.align
_Label_4214:
	.byte	'?'
	.ascii	"_temp_4138\0"
	.align
_Label_4215:
	.byte	'?'
	.ascii	"_temp_4135\0"
	.align
_Label_4216:
	.byte	'?'
	.ascii	"_temp_4134\0"
	.align
_Label_4217:
	.byte	'?'
	.ascii	"_temp_4133\0"
	.align
_Label_4218:
	.byte	'?'
	.ascii	"_temp_4132\0"
	.align
_Label_4219:
	.byte	'?'
	.ascii	"_temp_4131\0"
	.align
_Label_4220:
	.byte	'?'
	.ascii	"_temp_4128\0"
	.align
_Label_4221:
	.byte	'?'
	.ascii	"_temp_4127\0"
	.align
_Label_4222:
	.byte	'?'
	.ascii	"_temp_4124\0"
	.align
_Label_4223:
	.byte	'?'
	.ascii	"_temp_4123\0"
	.align
_Label_4224:
	.byte	'?'
	.ascii	"_temp_4120\0"
	.align
_Label_4225:
	.byte	'?'
	.ascii	"_temp_4119\0"
	.align
_Label_4226:
	.byte	'?'
	.ascii	"_temp_4116\0"
	.align
_Label_4227:
	.byte	'?'
	.ascii	"_temp_4113\0"
	.align
_Label_4228:
	.byte	'?'
	.ascii	"_temp_4112\0"
	.align
_Label_4229:
	.byte	'?'
	.ascii	"_temp_4109\0"
	.align
_Label_4230:
	.byte	'?'
	.ascii	"_temp_4108\0"
	.align
_Label_4231:
	.byte	'?'
	.ascii	"_temp_4107\0"
	.align
_Label_4232:
	.byte	'?'
	.ascii	"_temp_4106\0"
	.align
_Label_4233:
	.byte	'?'
	.ascii	"_temp_4105\0"
	.align
_Label_4234:
	.byte	'?'
	.ascii	"_temp_4104\0"
	.align
_Label_4235:
	.byte	'?'
	.ascii	"_temp_4103\0"
	.align
_Label_4236:
	.byte	'?'
	.ascii	"_temp_4102\0"
	.align
_Label_4237:
	.byte	'?'
	.ascii	"_temp_4101\0"
	.align
_Label_4238:
	.byte	'?'
	.ascii	"_temp_4098\0"
	.align
_Label_4239:
	.byte	'?'
	.ascii	"_temp_4097\0"
	.align
_Label_4240:
	.byte	'?'
	.ascii	"_temp_4096\0"
	.align
_Label_4241:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_4242:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_4243:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_4244:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_4245:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_4246:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_4247:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_4248:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_4249:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_4250:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_4251:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_4252:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_4253
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_2	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_3	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_4253:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4254
	.word	_sourceFileName
	.word	402		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_4254:
	.ascii	"SerialDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_SerialDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_1,r1
	push	r1
	mov	33,r1
_Label_4551:
	push	r0
	sub	r1,1,r1
	bne	_Label_4551
	mov	3215,r13		! source line 3215
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4255 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_4255  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	3219,r13		! source line 3219
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	3220,r13		! source line 3220
	mov	"\0\0AS",r10
!   serial_status_word_address = 16776960		(4 bytes)
	set	16776960,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	3221,r13		! source line 3221
	mov	"\0\0AS",r10
!   serial_data_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	3222,r13		! source line 3222
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,12,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! SEND STATEMENT...
	mov	3223,r13		! source line 3223
	mov	"\0\0SE",r10
!   _temp_4257 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-116]
!   Send message Init
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3224,r13		! source line 3224
	mov	"\0\0AS",r10
!   _temp_4258 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   NEW ARRAY Constructor...
!   _temp_4260 = &_temp_4259
	add	r14,-108,r1
	store	r1,[r14+-92]
!   _temp_4260 = _temp_4260 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Next value...
	mov	10,r1
	store	r1,[r14+-88]
_Label_4262:
!   Data Move: *_temp_4260 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-92],r2
	storeb	r1,[r2]
!   _temp_4260 = _temp_4260 + 1
	load	[r14+-92],r1
	add	r1,1,r1
	store	r1,[r14+-92]
!   _temp_4261 = _temp_4261 + -1
	load	[r14+-88],r1
	add	r1,-1,r1
	store	r1,[r14+-88]
!   if intNotZero (_temp_4261) then goto _Label_4262
	load	[r14+-88],r1
	cmp	r1,r0
	bne	_Label_4262
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-108]
!   _temp_4263 = &_temp_4259
	add	r14,-108,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-112],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4552
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4552:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4258 = *_temp_4263  (sizeInBytes=16)
	load	[r14+-84],r5
	load	[r14+-112],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3225,r13		! source line 3225
	mov	"\0\0AS",r10
!   getBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3226,r13		! source line 3226
	mov	"\0\0AS",r10
!   putBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3227,r13		! source line 3227
	mov	"\0\0AS",r10
!   getBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3228,r13		! source line 3228
	mov	"\0\0AS",r10
!   getBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3229,r13		! source line 3229
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: getCharacterAvail = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   getCharacterAvail = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	3230,r13		! source line 3230
	mov	"\0\0SE",r10
!   _temp_4265 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-76]
!   Send message Init
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3231,r13		! source line 3231
	mov	"\0\0AS",r10
!   _temp_4266 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-72]
!   NEW ARRAY Constructor...
!   _temp_4268 = &_temp_4267
	add	r14,-68,r1
	store	r1,[r14+-52]
!   _temp_4268 = _temp_4268 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Next value...
	mov	10,r1
	store	r1,[r14+-48]
_Label_4270:
!   Data Move: *_temp_4268 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-52],r2
	storeb	r1,[r2]
!   _temp_4268 = _temp_4268 + 1
	load	[r14+-52],r1
	add	r1,1,r1
	store	r1,[r14+-52]
!   _temp_4269 = _temp_4269 + -1
	load	[r14+-48],r1
	add	r1,-1,r1
	store	r1,[r14+-48]
!   if intNotZero (_temp_4269) then goto _Label_4270
	load	[r14+-48],r1
	cmp	r1,r0
	bne	_Label_4270
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-68]
!   _temp_4271 = &_temp_4267
	add	r14,-68,r1
	store	r1,[r14+-44]
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4553
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4553:
!   make sure array has size 10
	load	[r14+-44],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4266 = *_temp_4271  (sizeInBytes=16)
	load	[r14+-44],r5
	load	[r14+-72],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3232,r13		! source line 3232
	mov	"\0\0AS",r10
!   putBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3233,r13		! source line 3233
	mov	"\0\0AS",r10
!   putBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3234,r13		! source line 3234
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: putBufferSem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,104,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   putBufferSem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+104]
! SEND STATEMENT...
	mov	3235,r13		! source line 3235
	mov	"\0\0SE",r10
!   _temp_4273 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3236,r13		! source line 3236
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialNeedsAttention = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,124,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialNeedsAttention = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+124]
! SEND STATEMENT...
	mov	3237,r13		! source line 3237
	mov	"\0\0SE",r10
!   _temp_4275 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3239,r13		! source line 3239
	mov	"\0\0AS",r10
	mov	3239,r13		! source line 3239
	mov	"\0\0SE",r10
!   _temp_4276 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-24]
!   Send message GetANewThread
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
! SEND STATEMENT...
	mov	3240,r13		! source line 3240
	mov	"\0\0SE",r10
!   _temp_4277 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4277  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3241,r13		! source line 3241
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4278 = newThread + 76
	load	[r14+-128],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_4278 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3242,r13		! source line 3242
	mov	"\0\0SE",r10
!   _temp_4279 = _function_190_SerialHandlerFunction
	set	_function_190_SerialHandlerFunction,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4279  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3244,r13		! source line 3244
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 1		(1 byte)
	mov	1,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3244,r13		! source line 3244
	mov	"\0\0RE",r10
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_1:
	.word	_sourceFileName
	.word	_Label_4280
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_4281
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4282
	.word	-12
	.word	4
	.word	_Label_4283
	.word	-16
	.word	4
	.word	_Label_4284
	.word	-20
	.word	4
	.word	_Label_4285
	.word	-24
	.word	4
	.word	_Label_4286
	.word	-28
	.word	4
	.word	_Label_4287
	.word	-32
	.word	4
	.word	_Label_4288
	.word	-36
	.word	4
	.word	_Label_4289
	.word	-40
	.word	4
	.word	_Label_4290
	.word	-44
	.word	4
	.word	_Label_4291
	.word	-48
	.word	4
	.word	_Label_4292
	.word	-52
	.word	4
	.word	_Label_4293
	.word	-68
	.word	16
	.word	_Label_4294
	.word	-72
	.word	4
	.word	_Label_4295
	.word	-76
	.word	4
	.word	_Label_4296
	.word	-80
	.word	4
	.word	_Label_4297
	.word	-84
	.word	4
	.word	_Label_4298
	.word	-88
	.word	4
	.word	_Label_4299
	.word	-92
	.word	4
	.word	_Label_4300
	.word	-108
	.word	16
	.word	_Label_4301
	.word	-112
	.word	4
	.word	_Label_4302
	.word	-116
	.word	4
	.word	_Label_4303
	.word	-120
	.word	4
	.word	_Label_4304
	.word	-124
	.word	4
	.word	_Label_4305
	.word	-128
	.word	4
	.word	0
_Label_4280:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4281:
	.ascii	"Pself\0"
	.align
_Label_4282:
	.byte	'?'
	.ascii	"_temp_4279\0"
	.align
_Label_4283:
	.byte	'?'
	.ascii	"_temp_4278\0"
	.align
_Label_4284:
	.byte	'?'
	.ascii	"_temp_4277\0"
	.align
_Label_4285:
	.byte	'?'
	.ascii	"_temp_4276\0"
	.align
_Label_4286:
	.byte	'?'
	.ascii	"_temp_4275\0"
	.align
_Label_4287:
	.byte	'?'
	.ascii	"_temp_4274\0"
	.align
_Label_4288:
	.byte	'?'
	.ascii	"_temp_4273\0"
	.align
_Label_4289:
	.byte	'?'
	.ascii	"_temp_4272\0"
	.align
_Label_4290:
	.byte	'?'
	.ascii	"_temp_4271\0"
	.align
_Label_4291:
	.byte	'?'
	.ascii	"_temp_4269\0"
	.align
_Label_4292:
	.byte	'?'
	.ascii	"_temp_4268\0"
	.align
_Label_4293:
	.byte	'?'
	.ascii	"_temp_4267\0"
	.align
_Label_4294:
	.byte	'?'
	.ascii	"_temp_4266\0"
	.align
_Label_4295:
	.byte	'?'
	.ascii	"_temp_4265\0"
	.align
_Label_4296:
	.byte	'?'
	.ascii	"_temp_4264\0"
	.align
_Label_4297:
	.byte	'?'
	.ascii	"_temp_4263\0"
	.align
_Label_4298:
	.byte	'?'
	.ascii	"_temp_4261\0"
	.align
_Label_4299:
	.byte	'?'
	.ascii	"_temp_4260\0"
	.align
_Label_4300:
	.byte	'?'
	.ascii	"_temp_4259\0"
	.align
_Label_4301:
	.byte	'?'
	.ascii	"_temp_4258\0"
	.align
_Label_4302:
	.byte	'?'
	.ascii	"_temp_4257\0"
	.align
_Label_4303:
	.byte	'?'
	.ascii	"_temp_4256\0"
	.align
_Label_4304:
	.byte	'?'
	.ascii	"_temp_4255\0"
	.align
_Label_4305:
	.byte	'P'
	.ascii	"newThread\0"
	.align
! 
! ===============  METHOD PutChar  ===============
! 
_Method_P_Kernel_SerialDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_2,r1
	push	r1
	mov	8,r1
_Label_4554:
	push	r0
	sub	r1,1,r1
	bne	_Label_4554
	mov	3250,r13		! source line 3250
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3251,r13		! source line 3251
	mov	"\0\0SE",r10
!   _temp_4306 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-36]
!   Send message Down
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3252,r13		! source line 3252
	mov	"\0\0SE",r10
!   _temp_4307 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3253,r13		! source line 3253
	mov	"\0\0AS",r10
!   _temp_4308 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Move address of _temp_4308 [putBufferNextIn ] into _temp_4309
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+96],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: *_temp_4309 = value  (sizeInBytes=1)
	loadb	[r14+12],r1
	load	[r14+-24],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3254,r13		! source line 3254
	mov	"\0\0AS",r10
!   _temp_4310 = putBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   putBufferNextIn = _temp_4310 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3255,r13		! source line 3255
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize + 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! SEND STATEMENT...
	mov	3256,r13		! source line 3256
	mov	"\0\0SE",r10
!   _temp_4311 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	3257,r13		! source line 3257
	mov	"\0\0SE",r10
!   _temp_4312 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
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
	mov	3257,r13		! source line 3257
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_2:
	.word	_sourceFileName
	.word	_Label_4313
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_4314
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4315
	.word	12
	.word	1
	.word	_Label_4316
	.word	-12
	.word	4
	.word	_Label_4317
	.word	-16
	.word	4
	.word	_Label_4318
	.word	-20
	.word	4
	.word	_Label_4319
	.word	-24
	.word	4
	.word	_Label_4320
	.word	-28
	.word	4
	.word	_Label_4321
	.word	-32
	.word	4
	.word	_Label_4322
	.word	-36
	.word	4
	.word	0
_Label_4313:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_4314:
	.ascii	"Pself\0"
	.align
_Label_4315:
	.byte	'C'
	.ascii	"value\0"
	.align
_Label_4316:
	.byte	'?'
	.ascii	"_temp_4312\0"
	.align
_Label_4317:
	.byte	'?'
	.ascii	"_temp_4311\0"
	.align
_Label_4318:
	.byte	'?'
	.ascii	"_temp_4310\0"
	.align
_Label_4319:
	.byte	'?'
	.ascii	"_temp_4309\0"
	.align
_Label_4320:
	.byte	'?'
	.ascii	"_temp_4308\0"
	.align
_Label_4321:
	.byte	'?'
	.ascii	"_temp_4307\0"
	.align
_Label_4322:
	.byte	'?'
	.ascii	"_temp_4306\0"
	.align
! 
! ===============  METHOD GetChar  ===============
! 
_Method_P_Kernel_SerialDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_3,r1
	push	r1
	mov	10,r1
_Label_4555:
	push	r0
	sub	r1,1,r1
	bne	_Label_4555
	mov	3263,r13		! source line 3263
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3267,r13		! source line 3267
	mov	"\0\0SE",r10
!   _temp_4323 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3268,r13		! source line 3268
	mov	"\0\0WH",r10
_Label_4324:
!   if intIsZero (getBufferSize) then goto _Label_4325
	load	[r14+8],r1
	load	[r1+48],r1
	cmp	r1,r0
	be	_Label_4325
	jmp	_Label_4326
_Label_4325:
	mov	3268,r13		! source line 3268
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3269,r13		! source line 3269
	mov	"\0\0SE",r10
!   _temp_4327 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   _temp_4328 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_4327  sizeInBytes=4
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
	jmp	_Label_4324
_Label_4326:
! ASSIGNMENT STATEMENT...
	mov	3272,r13		! source line 3272
	mov	"\0\0AS",r10
!   _temp_4329 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Move address of _temp_4329 [getBufferNextOut ] into _temp_4330
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+56],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: ch = *_temp_4330  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3273,r13		! source line 3273
	mov	"\0\0AS",r10
!   getBufferSize = getBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3274,r13		! source line 3274
	mov	"\0\0AS",r10
!   _temp_4331 = getBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   getBufferNextOut = _temp_4331 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! SEND STATEMENT...
	mov	3275,r13		! source line 3275
	mov	"\0\0SE",r10
!   _temp_4332 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3276,r13		! source line 3276
	mov	"\0\0RE",r10
!   ReturnResult: ch  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_3:
	.word	_sourceFileName
	.word	_Label_4333
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_4334
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4335
	.word	-16
	.word	4
	.word	_Label_4336
	.word	-20
	.word	4
	.word	_Label_4337
	.word	-24
	.word	4
	.word	_Label_4338
	.word	-28
	.word	4
	.word	_Label_4339
	.word	-32
	.word	4
	.word	_Label_4340
	.word	-36
	.word	4
	.word	_Label_4341
	.word	-40
	.word	4
	.word	_Label_4342
	.word	-9
	.word	1
	.word	0
_Label_4333:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_4334:
	.ascii	"Pself\0"
	.align
_Label_4335:
	.byte	'?'
	.ascii	"_temp_4332\0"
	.align
_Label_4336:
	.byte	'?'
	.ascii	"_temp_4331\0"
	.align
_Label_4337:
	.byte	'?'
	.ascii	"_temp_4330\0"
	.align
_Label_4338:
	.byte	'?'
	.ascii	"_temp_4329\0"
	.align
_Label_4339:
	.byte	'?'
	.ascii	"_temp_4328\0"
	.align
_Label_4340:
	.byte	'?'
	.ascii	"_temp_4327\0"
	.align
_Label_4341:
	.byte	'?'
	.ascii	"_temp_4323\0"
	.align
_Label_4342:
	.byte	'C'
	.ascii	"ch\0"
	.align
! 
! ===============  METHOD SerialHandler  ===============
! 
_Method_P_Kernel_SerialDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_4,r1
	push	r1
	mov	24,r1
_Label_4556:
	push	r0
	sub	r1,1,r1
	bne	_Label_4556
	mov	3282,r13		! source line 3282
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	3287,r13		! source line 3287
	mov	"\0\0WH",r10
_Label_4343:
!   _temp_4346 = _P_Kernel_serialHasBeenInitialized XOR 0		(bool)
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_4346 then goto _Label_4345 else goto _Label_4344
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4344
	jmp	_Label_4345
_Label_4344:
	mov	3287,r13		! source line 3287
	mov	"\0\0WB",r10
! END WHILE...
	jmp	_Label_4343
_Label_4345:
! WHILE STATEMENT...
	mov	3291,r13		! source line 3291
	mov	"\0\0WH",r10
_Label_4347:
!	jmp	_Label_4348
_Label_4348:
	mov	3291,r13		! source line 3291
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3292,r13		! source line 3292
	mov	"\0\0SE",r10
!   _temp_4350 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-92]
!   Send message Down
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3293,r13		! source line 3293
	mov	"\0\0AS",r10
!   if intIsZero (serial_status_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: status = *serial_status_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-96]
! IF STATEMENT...
	mov	3295,r13		! source line 3295
	mov	"\0\0IF",r10
!   _temp_4353 = status AND 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-88]
!   if _temp_4353 <= 0 then goto _Label_4352		(int)
	load	[r14+-88],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4352
!	jmp	_Label_4351
_Label_4351:
! THEN...
	mov	3296,r13		! source line 3296
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3296,r13		! source line 3296
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4354 = *serial_data_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+8],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   ch = intToChar (_temp_4354)
	load	[r14+-84],r1
	storeb	r1,[r14+-10]
! IF STATEMENT...
	mov	3297,r13		! source line 3297
	mov	"\0\0IF",r10
!   if getBufferSize != 10 then goto _Label_4356		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_4356
!	jmp	_Label_4355
_Label_4355:
! THEN...
	mov	3298,r13		! source line 3298
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4357 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_4357  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	3298,r13		! source line 3298
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ch  sizeInBytes=1
	loadb	[r14+-10],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3299,r13		! source line 3299
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_4358 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_4358  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	3300,r13		! source line 3300
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_4359
_Label_4356:
! ELSE...
	mov	3302,r13		! source line 3302
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3302,r13		! source line 3302
	mov	"\0\0SE",r10
!   _temp_4360 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   Send message Lock
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3303,r13		! source line 3303
	mov	"\0\0AS",r10
!   _temp_4361 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Move address of _temp_4361 [getBufferNextIn ] into _temp_4362
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+52],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Data Move: *_temp_4362 = ch  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-64],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3304,r13		! source line 3304
	mov	"\0\0AS",r10
!   _temp_4363 = getBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   getBufferNextIn = _temp_4363 rem 10		(int)
	load	[r14+-60],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3305,r13		! source line 3305
	mov	"\0\0AS",r10
!   getBufferSize = getBufferSize + 1		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	3306,r13		! source line 3306
	mov	"\0\0SE",r10
!   _temp_4364 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-56]
!   _temp_4365 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_4364  sizeInBytes=4
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
! SEND STATEMENT...
	mov	3307,r13		! source line 3307
	mov	"\0\0SE",r10
!   _temp_4366 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Send message Unlock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4359:
! END IF...
_Label_4352:
! IF STATEMENT...
	mov	3311,r13		! source line 3311
	mov	"\0\0IF",r10
!   _temp_4369 = status AND 2		(int)
	load	[r14+-96],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-44]
!   if _temp_4369 <= 0 then goto _Label_4368		(int)
	load	[r14+-44],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4368
!	jmp	_Label_4367
_Label_4367:
! THEN...
	mov	3312,r13		! source line 3312
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3312,r13		! source line 3312
	mov	"\0\0SE",r10
!   _temp_4370 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3313,r13		! source line 3313
	mov	"\0\0IF",r10
!   if putBufferSize <= 0 then goto _Label_4372		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4372
!	jmp	_Label_4371
_Label_4371:
! THEN...
	mov	3314,r13		! source line 3314
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3314,r13		! source line 3314
	mov	"\0\0AS",r10
!   _temp_4373 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Move address of _temp_4373 [putBufferNextOut ] into _temp_4374
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+100],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: ch = *_temp_4374  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	3315,r13		! source line 3315
	mov	"\0\0AS",r10
!   _temp_4375 = putBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   putBufferNextOut = _temp_4375 rem 10		(int)
	load	[r14+-28],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3316,r13		! source line 3316
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3317,r13		! source line 3317
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4376 = charToInt (ch)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: *serial_data_word_address = _temp_4376  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3318,r13		! source line 3318
	mov	"\0\0SE",r10
!   _temp_4377 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4372:
! SEND STATEMENT...
	mov	3320,r13		! source line 3320
	mov	"\0\0SE",r10
!   _temp_4378 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4368:
! END WHILE...
	jmp	_Label_4347
_Label_4349:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_4379
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_4380
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4381
	.word	-16
	.word	4
	.word	_Label_4382
	.word	-20
	.word	4
	.word	_Label_4383
	.word	-24
	.word	4
	.word	_Label_4384
	.word	-28
	.word	4
	.word	_Label_4385
	.word	-32
	.word	4
	.word	_Label_4386
	.word	-36
	.word	4
	.word	_Label_4387
	.word	-40
	.word	4
	.word	_Label_4388
	.word	-44
	.word	4
	.word	_Label_4389
	.word	-48
	.word	4
	.word	_Label_4390
	.word	-52
	.word	4
	.word	_Label_4391
	.word	-56
	.word	4
	.word	_Label_4392
	.word	-60
	.word	4
	.word	_Label_4393
	.word	-64
	.word	4
	.word	_Label_4394
	.word	-68
	.word	4
	.word	_Label_4395
	.word	-72
	.word	4
	.word	_Label_4396
	.word	-76
	.word	4
	.word	_Label_4397
	.word	-80
	.word	4
	.word	_Label_4398
	.word	-84
	.word	4
	.word	_Label_4399
	.word	-88
	.word	4
	.word	_Label_4400
	.word	-92
	.word	4
	.word	_Label_4401
	.word	-9
	.word	1
	.word	_Label_4402
	.word	-10
	.word	1
	.word	_Label_4403
	.word	-96
	.word	4
	.word	0
_Label_4379:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_4380:
	.ascii	"Pself\0"
	.align
_Label_4381:
	.byte	'?'
	.ascii	"_temp_4378\0"
	.align
_Label_4382:
	.byte	'?'
	.ascii	"_temp_4377\0"
	.align
_Label_4383:
	.byte	'?'
	.ascii	"_temp_4376\0"
	.align
_Label_4384:
	.byte	'?'
	.ascii	"_temp_4375\0"
	.align
_Label_4385:
	.byte	'?'
	.ascii	"_temp_4374\0"
	.align
_Label_4386:
	.byte	'?'
	.ascii	"_temp_4373\0"
	.align
_Label_4387:
	.byte	'?'
	.ascii	"_temp_4370\0"
	.align
_Label_4388:
	.byte	'?'
	.ascii	"_temp_4369\0"
	.align
_Label_4389:
	.byte	'?'
	.ascii	"_temp_4366\0"
	.align
_Label_4390:
	.byte	'?'
	.ascii	"_temp_4365\0"
	.align
_Label_4391:
	.byte	'?'
	.ascii	"_temp_4364\0"
	.align
_Label_4392:
	.byte	'?'
	.ascii	"_temp_4363\0"
	.align
_Label_4393:
	.byte	'?'
	.ascii	"_temp_4362\0"
	.align
_Label_4394:
	.byte	'?'
	.ascii	"_temp_4361\0"
	.align
_Label_4395:
	.byte	'?'
	.ascii	"_temp_4360\0"
	.align
_Label_4396:
	.byte	'?'
	.ascii	"_temp_4358\0"
	.align
_Label_4397:
	.byte	'?'
	.ascii	"_temp_4357\0"
	.align
_Label_4398:
	.byte	'?'
	.ascii	"_temp_4354\0"
	.align
_Label_4399:
	.byte	'?'
	.ascii	"_temp_4353\0"
	.align
_Label_4400:
	.byte	'?'
	.ascii	"_temp_4350\0"
	.align
_Label_4401:
	.byte	'C'
	.ascii	"_temp_4346\0"
	.align
_Label_4402:
	.byte	'C'
	.ascii	"ch\0"
	.align
_Label_4403:
	.byte	'I'
	.ascii	"status\0"
	.align

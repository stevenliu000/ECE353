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
	.word	29			! length
	.ascii	"Initializing Serial Driver..."
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
_Label_4400:
	push	r0
	sub	r1,1,r1
	bne	_Label_4400
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
_Label_4401:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4401
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
_Label_4402:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4402
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
_Label_4403:
	push	r0
	sub	r1,1,r1
	bne	_Label_4403
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
_Label_4404:
	push	r0
	sub	r1,1,r1
	bne	_Label_4404
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
_Label_4405:
	push	r0
	sub	r1,1,r1
	bne	_Label_4405
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
_Label_4406:
	push	r0
	sub	r1,1,r1
	bne	_Label_4406
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
_Label_4407:
	push	r0
	sub	r1,1,r1
	bne	_Label_4407
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
_Label_4408:
	push	r0
	sub	r1,1,r1
	bne	_Label_4408
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
_Label_4409:
	push	r0
	sub	r1,1,r1
	bne	_Label_4409
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
_Label_4410:
	push	r0
	sub	r1,1,r1
	bne	_Label_4410
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
_Label_4411:
	push	r0
	sub	r1,1,r1
	bne	_Label_4411
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
_Label_4412:
	push	r0
	sub	r1,1,r1
	bne	_Label_4412
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
_Label_4413:
	push	r0
	sub	r1,1,r1
	bne	_Label_4413
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
_Label_4414:
	push	r0
	sub	r1,1,r1
	bne	_Label_4414
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
_Label_4415:
	push	r0
	sub	r1,1,r1
	bne	_Label_4415
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
_Label_4416:
	push	r0
	sub	r1,1,r1
	bne	_Label_4416
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
_Label_4417:
	push	r0
	sub	r1,1,r1
	bne	_Label_4417
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
_Label_4418:
	push	r0
	sub	r1,1,r1
	bne	_Label_4418
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
_Label_4419:
	push	r0
	sub	r1,1,r1
	bne	_Label_4419
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
_Label_4420:
	push	r0
	sub	r1,1,r1
	bne	_Label_4420
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
_Label_4421:
	push	r0
	sub	r1,1,r1
	bne	_Label_4421
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
_Label_4422:
	push	r0
	sub	r1,1,r1
	bne	_Label_4422
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
_Label_4423:
	push	r0
	sub	r1,1,r1
	bne	_Label_4423
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
_Label_4424:
	push	r0
	sub	r1,1,r1
	bne	_Label_4424
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
	be	_Label_4425
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_523
_Label_4425:
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
_Label_4426:
	push	r0
	sub	r1,1,r1
	bne	_Label_4426
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
_Label_4427:
	push	r0
	sub	r1,1,r1
	bne	_Label_4427
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
_Label_4428:
	push	r0
	sub	r1,1,r1
	bne	_Label_4428
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
_Label_4429:
	push	r0
	sub	r1,1,r1
	bne	_Label_4429
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
_Label_4430:
	push	r0
	sub	r1,1,r1
	bne	_Label_4430
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
_Label_4431:
	push	r0
	sub	r1,1,r1
	bne	_Label_4431
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
_Label_4432:
	push	r0
	sub	r1,1,r1
	bne	_Label_4432
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
_Label_4433:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4433
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
_Label_4434:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4434
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
_Label_4435:
	push	r0
	sub	r1,1,r1
	bne	_Label_4435
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
_Label_4436:
	push	r0
	sub	r1,1,r1
	bne	_Label_4436
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
	mov	108,r1
_Label_4437:
	push	r0
	sub	r1,1,r1
	bne	_Label_4437
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
	store	r1,[r14+-372]
!   Data Move: _temp_998 = *_temp_999  (sizeInBytes=4)
	load	[r14+-372],r1
	load	[r1],r1
	store	r1,[r14+-376]
!   if intIsZero (_temp_998) then goto _runtimeErrorNullPointer
	load	[r14+-376],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1000 = _temp_998 + 124
	load	[r14+-376],r1
	add	r1,124,r1
	store	r1,[r14+-368]
!   Move address of _temp_1000 [fileDesc ] into _temp_1001
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-368],r1
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
	store	r2,[r14+-364]
!   Data Move: _temp_997 = *_temp_1001  (sizeInBytes=4)
	load	[r14+-364],r1
	load	[r1],r1
	store	r1,[r14+-380]
!   if intIsZero (_temp_997) then goto _Label_992
	load	[r14+-380],r1
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
	add	r15,436,r15
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
	store	r1,[r14+-348]
!   Data Move: _temp_1006 = *_temp_1007  (sizeInBytes=4)
	load	[r14+-348],r1
	load	[r1],r1
	store	r1,[r14+-352]
!   if intIsZero (_temp_1006) then goto _runtimeErrorNullPointer
	load	[r14+-352],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1008 = _temp_1006 + 124
	load	[r14+-352],r1
	add	r1,124,r1
	store	r1,[r14+-344]
!   Move address of _temp_1008 [fileDesc ] into _temp_1009
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-344],r1
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
	store	r2,[r14+-340]
!   Data Move: _temp_1005 = *_temp_1009  (sizeInBytes=4)
	load	[r14+-340],r1
	load	[r1],r1
	store	r1,[r14+-356]
!   if intIsZero (_temp_1005) then goto _runtimeErrorNullPointer
	load	[r14+-356],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1010 = _temp_1005 + 12
	load	[r14+-356],r1
	add	r1,12,r1
	store	r1,[r14+-336]
!   Data Move: _temp_1004 = *_temp_1010  (sizeInBytes=4)
	load	[r14+-336],r1
	load	[r1],r1
	store	r1,[r14+-360]
!   if _temp_1004 != 2 then goto _Label_1003		(int)
	load	[r14+-360],r1
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
	store	r1,[r14+-396]
! FOR STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1015 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-332]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1016 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-328]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1015  (sizeInBytes=4)
	load	[r14+-332],r1
	store	r1,[r14+-420]
_Label_1011:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1016 then goto _Label_1014		
	load	[r14+-420],r1
	load	[r14+-328],r2
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
	store	r1,[r14+-324]
!   virtPage = _temp_1017 div 8192		(int)
	load	[r14+-324],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-384]
! IF STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1022		(int)
	load	[r14+-388],r1
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
	store	r1,[r14+-308]
!   Data Move: _temp_1025 = *_temp_1026  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r1],r1
	store	r1,[r14+-312]
!   if intIsZero (_temp_1025) then goto _runtimeErrorNullPointer
	load	[r14+-312],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1027 = _temp_1025 + 32
	load	[r14+-312],r1
	add	r1,32,r1
	store	r1,[r14+-304]
!   _temp_1028 = _temp_1027 + 4
	load	[r14+-304],r1
	add	r1,4,r1
	store	r1,[r14+-300]
!   Data Move: _temp_1024 = *_temp_1028  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r1],r1
	store	r1,[r14+-316]
!   _temp_1023 = _temp_1024 - 1		(int)
	load	[r14+-316],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-320]
!   if virtPage <= _temp_1023 then goto _Label_1021		(int)
	load	[r14+-388],r1
	load	[r14+-320],r2
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
	store	r1,[r14+-292]
!   Data Move: _temp_1030 = *_temp_1031  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_1030) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1032 = _temp_1030 + 32
	load	[r14+-296],r1
	add	r1,32,r1
	store	r1,[r14+-288]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-288],r1
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
	store	r1,[r14+-280]
!   Data Move: _temp_1035 = *_temp_1036  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-284]
!   if intIsZero (_temp_1035) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1037 = _temp_1035 + 32
	load	[r14+-284],r1
	add	r1,32,r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-276],r1
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
	load	[r14+-396],r1
	store	r1,[r14+8]
	add	r15,436,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1019:
! ASSIGNMENT STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-384],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
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
	store	r1,[r14+-264]
!   Data Move: _temp_1040 = *_temp_1041  (sizeInBytes=4)
	load	[r14+-264],r1
	load	[r1],r1
	store	r1,[r14+-268]
!   if intIsZero (_temp_1040) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1042 = _temp_1040 + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-260]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1039  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-272]
!   destAddr = _temp_1039 + offset		(int)
	load	[r14+-272],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-416]
! ASSIGNMENT STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0AS",r10
	mov	2032,r13		! source line 2032
	mov	"\0\0SE",r10
!   _temp_1043 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-256]
!   Send message GetChar
	load	[r14+-256],r1
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
! ASSIGNMENT STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-416],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *destAddr = ch  (sizeInBytes=1)
	loadb	[r14+-25],r1
	load	[r14+-416],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-396],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! IF STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-416],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1049 = *destAddr  (sizeInBytes=1)
	load	[r14+-416],r1
	loadb	[r1],r1
	storeb	r1,[r14+-18]
!   _temp_1050 = _temp_1049 XOR 10		(bool)
	loadb	[r14+-18],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1050 then goto _Label_1048 else goto _Label_1047
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1047
	jmp	_Label_1048
_Label_1047:
! THEN...
	mov	2039,r13		! source line 2039
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0BR",r10
	jmp	_Label_1014
! END IF...
_Label_1048:
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
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
	load	[r14+-420],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-420]
	jmp	_Label_1011
! END FOR
_Label_1014:
! RETURN STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-396],r1
	store	r1,[r14+8]
	add	r15,436,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1051
_Label_1003:
! ELSE...
	mov	2047,r13		! source line 2047
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-384],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-384],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1053 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_1052 = *_temp_1053  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_1052) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1054 = _temp_1052 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_1054 [fileDesc ] into _temp_1055
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
!   Data Move: openFile = *_temp_1055  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-400],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1056 = openFile + 16
	load	[r14+-400],r1
	add	r1,16,r1
	store	r1,[r14+-236]
!   Data Move: nextPosInFile = *_temp_1056  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-400],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1058 = openFile + 20
	load	[r14+-400],r1
	add	r1,20,r1
	store	r1,[r14+-228]
!   Data Move: _temp_1057 = *_temp_1058  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_1057) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1059 = _temp_1057 + 24
	load	[r14+-232],r1
	add	r1,24,r1
	store	r1,[r14+-224]
!   Data Move: sizeOfFile = *_temp_1059  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-408]
! WHILE STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0WH",r10
_Label_1060:
!	jmp	_Label_1061
_Label_1061:
	mov	2054,r13		! source line 2054
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-392],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! IF STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0IF",r10
!   _temp_1065 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-404],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-220]
!   if _temp_1065 <= sizeOfFile then goto _Label_1064		(int)
	load	[r14+-220],r1
	load	[r14+-408],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1064
!	jmp	_Label_1063
_Label_1063:
! THEN...
	mov	2057,r13		! source line 2057
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-408],r1
	load	[r14+-404],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! END IF...
_Label_1064:
! IF STATEMENT...
	mov	2059,r13		! source line 2059
	mov	"\0\0IF",r10
!   _temp_1068 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-396],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
!   if _temp_1068 <= sizeInBytes then goto _Label_1067		(int)
	load	[r14+-216],r1
	load	[r14+16],r2
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
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-396],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! END IF...
_Label_1067:
! IF STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1070		(int)
	load	[r14+-412],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1070
!	jmp	_Label_1069
_Label_1069:
! THEN...
	mov	2064,r13		! source line 2064
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0BR",r10
	jmp	_Label_1062
! END IF...
_Label_1070:
! IF STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1075		(int)
	load	[r14+-388],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1075
	jmp	_Label_1071
_Label_1075:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1079 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-200]
!   Data Move: _temp_1078 = *_temp_1079  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_1078) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1080 = _temp_1078 + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-196]
!   _temp_1081 = _temp_1080 + 4
	load	[r14+-196],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1077 = *_temp_1081  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_1076 = _temp_1077 - 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   if virtPage <= _temp_1076 then goto _Label_1074		(int)
	load	[r14+-388],r1
	load	[r14+-212],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1074
	jmp	_Label_1071
_Label_1074:
	mov	2067,r13		! source line 2067
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1084 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_1083 = *_temp_1084  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1083) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1085 = _temp_1083 + 32
	load	[r14+-188],r1
	add	r1,32,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1082  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1086 = _temp_1082 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1086 then goto _Label_1073 else goto _Label_1071
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1071
	jmp	_Label_1073
_Label_1073:
	mov	2067,r13		! source line 2067
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1089 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1088 = *_temp_1089  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1088) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1090 = _temp_1088 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1087  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1091 = _temp_1087 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1091 then goto _Label_1072 else goto _Label_1071
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1071
	jmp	_Label_1072
_Label_1071:
! THEN...
	mov	2068,r13		! source line 2068
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,436,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1072:
! ASSIGNMENT STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-404],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-396],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-388],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-392]
! IF STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1093		(int)
	load	[r14+-396],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1093
!	jmp	_Label_1092
_Label_1092:
! THEN...
	mov	2077,r13		! source line 2077
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0BR",r10
	jmp	_Label_1062
! END IF...
_Label_1093:
! END WHILE...
	jmp	_Label_1060
_Label_1062:
! ASSIGNMENT STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-384],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-384],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1095 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1094 = *_temp_1095  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1094) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1096 = _temp_1094 + 124
	load	[r14+-164],r1
	add	r1,124,r1
	store	r1,[r14+-156]
!   Move address of _temp_1096 [fileDesc ] into _temp_1097
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
!   Data Move: openFile = *_temp_1097  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-400],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1098 = openFile + 16
	load	[r14+-400],r1
	add	r1,16,r1
	store	r1,[r14+-148]
!   Data Move: nextPosInFile = *_temp_1098  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-400],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1100 = openFile + 20
	load	[r14+-400],r1
	add	r1,20,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1099 = *_temp_1100  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1099) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1101 = _temp_1099 + 24
	load	[r14+-144],r1
	add	r1,24,r1
	store	r1,[r14+-136]
!   Data Move: sizeOfFile = *_temp_1101  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-408]
! WHILE STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0WH",r10
_Label_1102:
!	jmp	_Label_1103
_Label_1103:
	mov	2090,r13		! source line 2090
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-392],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! IF STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0IF",r10
!   _temp_1107 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-404],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
!   if _temp_1107 <= sizeOfFile then goto _Label_1106		(int)
	load	[r14+-132],r1
	load	[r14+-408],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1106
!	jmp	_Label_1105
_Label_1105:
! THEN...
	mov	2093,r13		! source line 2093
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-408],r1
	load	[r14+-404],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! END IF...
_Label_1106:
! IF STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0IF",r10
!   _temp_1110 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-396],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   if _temp_1110 <= sizeInBytes then goto _Label_1109		(int)
	load	[r14+-128],r1
	load	[r14+16],r2
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
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-396],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! END IF...
_Label_1109:
! IF STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1112		(int)
	load	[r14+-412],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1112
!	jmp	_Label_1111
_Label_1111:
! THEN...
	mov	2100,r13		! source line 2100
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0BR",r10
	jmp	_Label_1104
! END IF...
_Label_1112:
! IF STATEMENT...
	mov	2103,r13		! source line 2103
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1117		(int)
	load	[r14+-388],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1117
	jmp	_Label_1113
_Label_1117:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1121 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1120 = *_temp_1121  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1120) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1122 = _temp_1120 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_1123 = _temp_1122 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1119 = *_temp_1123  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_1118 = _temp_1119 - 1		(int)
	load	[r14+-120],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   if virtPage <= _temp_1118 then goto _Label_1116		(int)
	load	[r14+-388],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1116
	jmp	_Label_1113
_Label_1116:
	mov	2103,r13		! source line 2103
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1126 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1125 = *_temp_1126  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1125) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1127 = _temp_1125 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1124  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1128 = _temp_1124 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1128 then goto _Label_1115 else goto _Label_1113
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1113
	jmp	_Label_1115
_Label_1115:
	mov	2103,r13		! source line 2103
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1131 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1130 = *_temp_1131  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1130) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1132 = _temp_1130 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1129  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1133 = _temp_1129 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1133 then goto _Label_1114 else goto _Label_1113
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1113
	jmp	_Label_1114
_Label_1113:
! THEN...
	mov	2104,r13		! source line 2104
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,436,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1114:
! SEND STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1135 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1134 = *_temp_1135  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1134) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1136 = _temp_1134 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-388],r1
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
	mov	2108,r13		! source line 2108
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
	store	r1,[r14+-60]
!   Data Move: _temp_1137 = *_temp_1138  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1137) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1139 = _temp_1137 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-388],r1
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
	mov	2109,r13		! source line 2109
	mov	"\0\0AS",r10
	mov	2109,r13		! source line 2109
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1142 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1141 = *_temp_1142  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1141) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1143 = _temp_1141 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1140  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
!   destAddr = _temp_1140 + offset		(int)
	load	[r14+-52],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-416]
! ASSIGNMENT STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0AS",r10
	mov	2110,r13		! source line 2110
	mov	"\0\0SE",r10
!   _temp_1144 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-400],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-416],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-404],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunkSize  sizeInBytes=4
	load	[r14+-412],r1
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
	mov	2112,r13		! source line 2112
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-404],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-396],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-388],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-392]
! IF STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1146		(int)
	load	[r14+-396],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1146
!	jmp	_Label_1145
_Label_1145:
! THEN...
	mov	2118,r13		! source line 2118
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0BR",r10
	jmp	_Label_1104
! END IF...
_Label_1146:
! END WHILE...
	jmp	_Label_1102
_Label_1104:
! ASSIGNMENT STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-400],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1147 = openFile + 16
	load	[r14+-400],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1147 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-404],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-396],r1
	store	r1,[r14+8]
	add	r15,436,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1051:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1148
	.word	12		! total size of parameters
	.word	432		! frame size = 432
	.word	_Label_1149
	.word	8
	.word	4
	.word	_Label_1150
	.word	12
	.word	4
	.word	_Label_1151
	.word	16
	.word	4
	.word	_Label_1152
	.word	-32
	.word	4
	.word	_Label_1153
	.word	-36
	.word	4
	.word	_Label_1154
	.word	-40
	.word	4
	.word	_Label_1155
	.word	-44
	.word	4
	.word	_Label_1156
	.word	-48
	.word	4
	.word	_Label_1157
	.word	-52
	.word	4
	.word	_Label_1158
	.word	-56
	.word	4
	.word	_Label_1159
	.word	-60
	.word	4
	.word	_Label_1160
	.word	-64
	.word	4
	.word	_Label_1161
	.word	-68
	.word	4
	.word	_Label_1162
	.word	-72
	.word	4
	.word	_Label_1163
	.word	-76
	.word	4
	.word	_Label_1164
	.word	-9
	.word	1
	.word	_Label_1165
	.word	-80
	.word	4
	.word	_Label_1166
	.word	-84
	.word	4
	.word	_Label_1167
	.word	-88
	.word	4
	.word	_Label_1168
	.word	-10
	.word	1
	.word	_Label_1169
	.word	-11
	.word	1
	.word	_Label_1170
	.word	-92
	.word	4
	.word	_Label_1171
	.word	-96
	.word	4
	.word	_Label_1172
	.word	-100
	.word	4
	.word	_Label_1173
	.word	-12
	.word	1
	.word	_Label_1174
	.word	-104
	.word	4
	.word	_Label_1175
	.word	-108
	.word	4
	.word	_Label_1176
	.word	-112
	.word	4
	.word	_Label_1177
	.word	-116
	.word	4
	.word	_Label_1178
	.word	-120
	.word	4
	.word	_Label_1179
	.word	-124
	.word	4
	.word	_Label_1180
	.word	-128
	.word	4
	.word	_Label_1181
	.word	-132
	.word	4
	.word	_Label_1182
	.word	-136
	.word	4
	.word	_Label_1183
	.word	-140
	.word	4
	.word	_Label_1184
	.word	-144
	.word	4
	.word	_Label_1185
	.word	-148
	.word	4
	.word	_Label_1186
	.word	-152
	.word	4
	.word	_Label_1187
	.word	-156
	.word	4
	.word	_Label_1188
	.word	-160
	.word	4
	.word	_Label_1189
	.word	-164
	.word	4
	.word	_Label_1190
	.word	-13
	.word	1
	.word	_Label_1191
	.word	-168
	.word	4
	.word	_Label_1192
	.word	-172
	.word	4
	.word	_Label_1193
	.word	-176
	.word	4
	.word	_Label_1194
	.word	-14
	.word	1
	.word	_Label_1195
	.word	-15
	.word	1
	.word	_Label_1196
	.word	-180
	.word	4
	.word	_Label_1197
	.word	-184
	.word	4
	.word	_Label_1198
	.word	-188
	.word	4
	.word	_Label_1199
	.word	-16
	.word	1
	.word	_Label_1200
	.word	-192
	.word	4
	.word	_Label_1201
	.word	-196
	.word	4
	.word	_Label_1202
	.word	-200
	.word	4
	.word	_Label_1203
	.word	-204
	.word	4
	.word	_Label_1204
	.word	-208
	.word	4
	.word	_Label_1205
	.word	-212
	.word	4
	.word	_Label_1206
	.word	-216
	.word	4
	.word	_Label_1207
	.word	-220
	.word	4
	.word	_Label_1208
	.word	-224
	.word	4
	.word	_Label_1209
	.word	-228
	.word	4
	.word	_Label_1210
	.word	-232
	.word	4
	.word	_Label_1211
	.word	-236
	.word	4
	.word	_Label_1212
	.word	-240
	.word	4
	.word	_Label_1213
	.word	-244
	.word	4
	.word	_Label_1214
	.word	-248
	.word	4
	.word	_Label_1215
	.word	-252
	.word	4
	.word	_Label_1216
	.word	-17
	.word	1
	.word	_Label_1217
	.word	-18
	.word	1
	.word	_Label_1218
	.word	-19
	.word	1
	.word	_Label_1219
	.word	-256
	.word	4
	.word	_Label_1220
	.word	-260
	.word	4
	.word	_Label_1221
	.word	-264
	.word	4
	.word	_Label_1222
	.word	-268
	.word	4
	.word	_Label_1223
	.word	-272
	.word	4
	.word	_Label_1224
	.word	-20
	.word	1
	.word	_Label_1225
	.word	-276
	.word	4
	.word	_Label_1226
	.word	-280
	.word	4
	.word	_Label_1227
	.word	-284
	.word	4
	.word	_Label_1228
	.word	-21
	.word	1
	.word	_Label_1229
	.word	-22
	.word	1
	.word	_Label_1230
	.word	-288
	.word	4
	.word	_Label_1231
	.word	-292
	.word	4
	.word	_Label_1232
	.word	-296
	.word	4
	.word	_Label_1233
	.word	-23
	.word	1
	.word	_Label_1234
	.word	-300
	.word	4
	.word	_Label_1235
	.word	-304
	.word	4
	.word	_Label_1236
	.word	-308
	.word	4
	.word	_Label_1237
	.word	-312
	.word	4
	.word	_Label_1238
	.word	-316
	.word	4
	.word	_Label_1239
	.word	-320
	.word	4
	.word	_Label_1240
	.word	-324
	.word	4
	.word	_Label_1241
	.word	-328
	.word	4
	.word	_Label_1242
	.word	-332
	.word	4
	.word	_Label_1243
	.word	-336
	.word	4
	.word	_Label_1244
	.word	-340
	.word	4
	.word	_Label_1245
	.word	-344
	.word	4
	.word	_Label_1246
	.word	-348
	.word	4
	.word	_Label_1247
	.word	-352
	.word	4
	.word	_Label_1248
	.word	-356
	.word	4
	.word	_Label_1249
	.word	-360
	.word	4
	.word	_Label_1250
	.word	-364
	.word	4
	.word	_Label_1251
	.word	-368
	.word	4
	.word	_Label_1252
	.word	-372
	.word	4
	.word	_Label_1253
	.word	-376
	.word	4
	.word	_Label_1254
	.word	-380
	.word	4
	.word	_Label_1255
	.word	-384
	.word	4
	.word	_Label_1256
	.word	-388
	.word	4
	.word	_Label_1257
	.word	-392
	.word	4
	.word	_Label_1258
	.word	-396
	.word	4
	.word	_Label_1259
	.word	-400
	.word	4
	.word	_Label_1260
	.word	-404
	.word	4
	.word	_Label_1261
	.word	-408
	.word	4
	.word	_Label_1262
	.word	-412
	.word	4
	.word	_Label_1263
	.word	-416
	.word	4
	.word	_Label_1264
	.word	-24
	.word	1
	.word	_Label_1265
	.word	-420
	.word	4
	.word	_Label_1266
	.word	-25
	.word	1
	.word	0
_Label_1148:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1149:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1150:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1151:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1164:
	.byte	'C'
	.ascii	"_temp_1133\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1168:
	.byte	'C'
	.ascii	"_temp_1129\0"
	.align
_Label_1169:
	.byte	'C'
	.ascii	"_temp_1128\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1173:
	.byte	'C'
	.ascii	"_temp_1124\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1190:
	.byte	'C'
	.ascii	"_temp_1091\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1194:
	.byte	'C'
	.ascii	"_temp_1087\0"
	.align
_Label_1195:
	.byte	'C'
	.ascii	"_temp_1086\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1199:
	.byte	'C'
	.ascii	"_temp_1082\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1216:
	.byte	'C'
	.ascii	"_temp_1050\0"
	.align
_Label_1217:
	.byte	'C'
	.ascii	"_temp_1049\0"
	.align
_Label_1218:
	.byte	'C'
	.ascii	"_temp_1046\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1224:
	.byte	'C'
	.ascii	"_temp_1038\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1228:
	.byte	'C'
	.ascii	"_temp_1034\0"
	.align
_Label_1229:
	.byte	'C'
	.ascii	"_temp_1033\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1233:
	.byte	'C'
	.ascii	"_temp_1029\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1255:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1256:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1257:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1258:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1259:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1260:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1261:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1262:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1263:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1264:
	.byte	'B'
	.ascii	"junk\0"
	.align
_Label_1265:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1266:
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
_Label_4438:
	push	r0
	sub	r1,1,r1
	bne	_Label_4438
	mov	2129,r13		! source line 2129
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1271		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1271
	jmp	_Label_1267
_Label_1271:
!   if fileDesc <= 9 then goto _Label_1270		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1270
	jmp	_Label_1267
_Label_1270:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1274 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-424]
!   Data Move: _temp_1273 = *_temp_1274  (sizeInBytes=4)
	load	[r14+-424],r1
	load	[r1],r1
	store	r1,[r14+-428]
!   if intIsZero (_temp_1273) then goto _runtimeErrorNullPointer
	load	[r14+-428],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1275 = _temp_1273 + 124
	load	[r14+-428],r1
	add	r1,124,r1
	store	r1,[r14+-420]
!   Move address of _temp_1275 [fileDesc ] into _temp_1276
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
!   Data Move: _temp_1272 = *_temp_1276  (sizeInBytes=4)
	load	[r14+-416],r1
	load	[r1],r1
	store	r1,[r14+-432]
!   if intIsZero (_temp_1272) then goto _Label_1267
	load	[r14+-432],r1
	cmp	r1,r0
	be	_Label_1267
!	jmp	_Label_1269
_Label_1269:
!   if sizeInBytes >= 0 then goto _Label_1268		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1268
!	jmp	_Label_1267
_Label_1267:
! THEN...
	mov	2147,r13		! source line 2147
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1268:
! IF STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1282 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-400]
!   Data Move: _temp_1281 = *_temp_1282  (sizeInBytes=4)
	load	[r14+-400],r1
	load	[r1],r1
	store	r1,[r14+-404]
!   if intIsZero (_temp_1281) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1283 = _temp_1281 + 124
	load	[r14+-404],r1
	add	r1,124,r1
	store	r1,[r14+-396]
!   Move address of _temp_1283 [fileDesc ] into _temp_1284
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
!   Data Move: _temp_1280 = *_temp_1284  (sizeInBytes=4)
	load	[r14+-392],r1
	load	[r1],r1
	store	r1,[r14+-408]
!   if intIsZero (_temp_1280) then goto _runtimeErrorNullPointer
	load	[r14+-408],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1285 = _temp_1280 + 12
	load	[r14+-408],r1
	add	r1,12,r1
	store	r1,[r14+-388]
!   Data Move: _temp_1279 = *_temp_1285  (sizeInBytes=4)
	load	[r14+-388],r1
	load	[r1],r1
	store	r1,[r14+-412]
!   if _temp_1279 != 2 then goto _Label_1278		(int)
	load	[r14+-412],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1278
!	jmp	_Label_1277
_Label_1277:
! THEN...
	mov	2152,r13		! source line 2152
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0AS",r10
!   temp = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-476]
! FOR STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1290 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-384]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1291 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1290  (sizeInBytes=4)
	load	[r14+-384],r1
	store	r1,[r14+-472]
_Label_1286:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1291 then goto _Label_1289		
	load	[r14+-472],r1
	load	[r14+-380],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1289
_Label_1287:
	mov	2153,r13		! source line 2153
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0AS",r10
!   _temp_1292 = temp		(4 bytes)
	load	[r14+-476],r1
	store	r1,[r14+-376]
!   virtPage = _temp_1292 div 8192		(int)
	load	[r14+-376],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0AS",r10
!   virtAddr = temp		(4 bytes)
	load	[r14+-476],r1
	store	r1,[r14+-436]
! IF STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1297		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1297
	jmp	_Label_1293
_Label_1297:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1301 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-360]
!   Data Move: _temp_1300 = *_temp_1301  (sizeInBytes=4)
	load	[r14+-360],r1
	load	[r1],r1
	store	r1,[r14+-364]
!   if intIsZero (_temp_1300) then goto _runtimeErrorNullPointer
	load	[r14+-364],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1302 = _temp_1300 + 32
	load	[r14+-364],r1
	add	r1,32,r1
	store	r1,[r14+-356]
!   _temp_1303 = _temp_1302 + 4
	load	[r14+-356],r1
	add	r1,4,r1
	store	r1,[r14+-352]
!   Data Move: _temp_1299 = *_temp_1303  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r1],r1
	store	r1,[r14+-368]
!   _temp_1298 = _temp_1299 - 1		(int)
	load	[r14+-368],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
!   if virtPage <= _temp_1298 then goto _Label_1296		(int)
	load	[r14+-440],r1
	load	[r14+-372],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1296
	jmp	_Label_1293
_Label_1296:
	mov	2158,r13		! source line 2158
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1306 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-344]
!   Data Move: _temp_1305 = *_temp_1306  (sizeInBytes=4)
	load	[r14+-344],r1
	load	[r1],r1
	store	r1,[r14+-348]
!   if intIsZero (_temp_1305) then goto _runtimeErrorNullPointer
	load	[r14+-348],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1307 = _temp_1305 + 32
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
!   Retrieve Result: targetName=_temp_1304  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-25]
!   _temp_1308 = _temp_1304 XOR 0		(bool)
	loadb	[r14+-25],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-24]
!   if _temp_1308 then goto _Label_1295 else goto _Label_1293
	loadb	[r14+-24],r1
	cmp	r1,0
	be	_Label_1293
	jmp	_Label_1295
_Label_1295:
	mov	2158,r13		! source line 2158
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1311 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-332]
!   Data Move: _temp_1310 = *_temp_1311  (sizeInBytes=4)
	load	[r14+-332],r1
	load	[r1],r1
	store	r1,[r14+-336]
!   if intIsZero (_temp_1310) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1312 = _temp_1310 + 32
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
!   Retrieve Result: targetName=_temp_1309  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-23]
!   _temp_1313 = _temp_1309 XOR 0		(bool)
	loadb	[r14+-23],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-22]
!   if _temp_1313 then goto _Label_1294 else goto _Label_1293
	loadb	[r14+-22],r1
	cmp	r1,0
	be	_Label_1293
	jmp	_Label_1294
_Label_1293:
! THEN...
	mov	2159,r13		! source line 2159
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1294:
! ASSIGNMENT STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0AS",r10
!   temp = temp + 1		(int)
	load	[r14+-476],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-476]
!   Increment the FOR-LOOP index variable and jump back
_Label_1288:
!   i = i + 1
	load	[r14+-472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
	jmp	_Label_1286
! END FOR
_Label_1289:
! ASSIGNMENT STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! FOR STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1318 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-324]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1319 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-320]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1318  (sizeInBytes=4)
	load	[r14+-324],r1
	store	r1,[r14+-472]
_Label_1314:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1319 then goto _Label_1317		
	load	[r14+-472],r1
	load	[r14+-320],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1317
_Label_1315:
	mov	2166,r13		! source line 2166
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
!   _temp_1320 = temp		(4 bytes)
	load	[r14+-476],r1
	store	r1,[r14+-316]
!   virtPage = _temp_1320 div 8192		(int)
	load	[r14+-316],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0AS",r10
!   virtAddr = temp		(4 bytes)
	load	[r14+-476],r1
	store	r1,[r14+-436]
! IF STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1325		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1325
	jmp	_Label_1321
_Label_1325:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1329 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-300]
!   Data Move: _temp_1328 = *_temp_1329  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   if intIsZero (_temp_1328) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1330 = _temp_1328 + 32
	load	[r14+-304],r1
	add	r1,32,r1
	store	r1,[r14+-296]
!   _temp_1331 = _temp_1330 + 4
	load	[r14+-296],r1
	add	r1,4,r1
	store	r1,[r14+-292]
!   Data Move: _temp_1327 = *_temp_1331  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-308]
!   _temp_1326 = _temp_1327 - 1		(int)
	load	[r14+-308],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-312]
!   if virtPage <= _temp_1326 then goto _Label_1324		(int)
	load	[r14+-440],r1
	load	[r14+-312],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1324
	jmp	_Label_1321
_Label_1324:
	mov	2171,r13		! source line 2171
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1334 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-284]
!   Data Move: _temp_1333 = *_temp_1334  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_1333) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1335 = _temp_1333 + 32
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
!   Retrieve Result: targetName=_temp_1332  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-21]
!   _temp_1336 = _temp_1332 XOR 0		(bool)
	loadb	[r14+-21],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-20]
!   if _temp_1336 then goto _Label_1323 else goto _Label_1321
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_1321
	jmp	_Label_1323
_Label_1323:
	mov	2171,r13		! source line 2171
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1339 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-272]
!   Data Move: _temp_1338 = *_temp_1339  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r1],r1
	store	r1,[r14+-276]
!   if intIsZero (_temp_1338) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1340 = _temp_1338 + 32
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
!   Retrieve Result: targetName=_temp_1337  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-19]
!   _temp_1341 = _temp_1337 XOR 0		(bool)
	loadb	[r14+-19],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-18]
!   if _temp_1341 then goto _Label_1322 else goto _Label_1321
	loadb	[r14+-18],r1
	cmp	r1,0
	be	_Label_1321
	jmp	_Label_1322
_Label_1321:
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
_Label_1322:
! ASSIGNMENT STATEMENT...
	mov	2175,r13		! source line 2175
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
	mov	2176,r13		! source line 2176
	mov	"\0\0AS",r10
	mov	2176,r13		! source line 2176
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1344 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: _temp_1343 = *_temp_1344  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_1343) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1345 = _temp_1343 + 32
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
!   Retrieve Result: targetName=_temp_1342  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-264]
!   destAddr = _temp_1342 + offset		(int)
	load	[r14+-264],r1
	load	[r14+-444],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2177,r13		! source line 2177
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
	mov	2178,r13		! source line 2178
	mov	"\0\0IF",r10
!   _temp_1348 = ch XOR 10		(bool)
	loadb	[r14+-27],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1348 then goto _Label_1347 else goto _Label_1346
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1346
	jmp	_Label_1347
_Label_1346:
! THEN...
	mov	2179,r13		! source line 2179
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0SE",r10
!   _temp_1349 = &_P_Kernel_serialDriver
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
_Label_1347:
! SEND STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0SE",r10
!   _temp_1350 = &_P_Kernel_serialDriver
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
	mov	2182,r13		! source line 2182
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-448],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0AS",r10
!   buffer = buffer + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_1316:
!   i = i + 1
	load	[r14+-472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
	jmp	_Label_1314
! END FOR
_Label_1317:
! RETURN STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-448],r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1351
_Label_1278:
! ELSE...
	mov	2189,r13		! source line 2189
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-436]
! ASSIGNMENT STATEMENT...
	mov	2190,r13		! source line 2190
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
	mov	2191,r13		! source line 2191
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
	mov	2192,r13		! source line 2192
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1353 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-236]
!   Data Move: _temp_1352 = *_temp_1353  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if intIsZero (_temp_1352) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1354 = _temp_1352 + 124
	load	[r14+-240],r1
	add	r1,124,r1
	store	r1,[r14+-232]
!   Move address of _temp_1354 [fileDesc ] into _temp_1355
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
!   Data Move: openFile = *_temp_1355  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-452],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1356 = openFile + 16
	load	[r14+-452],r1
	add	r1,16,r1
	store	r1,[r14+-224]
!   Data Move: nextPosInFile = *_temp_1356  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-452],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1358 = openFile + 20
	load	[r14+-452],r1
	add	r1,20,r1
	store	r1,[r14+-216]
!   Data Move: _temp_1357 = *_temp_1358  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_1357) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1359 = _temp_1357 + 24
	load	[r14+-220],r1
	add	r1,24,r1
	store	r1,[r14+-212]
!   Data Move: sizeOfFile = *_temp_1359  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-460]
! WHILE STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0WH",r10
_Label_1360:
!	jmp	_Label_1361
_Label_1361:
	mov	2196,r13		! source line 2196
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-444],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! IF STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0IF",r10
!   _temp_1365 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-456],r1
	load	[r14+-464],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if _temp_1365 <= sizeOfFile then goto _Label_1364		(int)
	load	[r14+-208],r1
	load	[r14+-460],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1364
!	jmp	_Label_1363
_Label_1363:
! THEN...
	mov	2199,r13		! source line 2199
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-460],r1
	load	[r14+-456],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! END IF...
_Label_1364:
! IF STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0IF",r10
!   _temp_1368 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-448],r1
	load	[r14+-464],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if _temp_1368 <= sizeInBytes then goto _Label_1367		(int)
	load	[r14+-204],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1367
!	jmp	_Label_1366
_Label_1366:
! THEN...
	mov	2202,r13		! source line 2202
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-448],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! END IF...
_Label_1367:
! IF STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1370		(int)
	load	[r14+-464],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1370
!	jmp	_Label_1369
_Label_1369:
! THEN...
	mov	2206,r13		! source line 2206
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0BR",r10
	jmp	_Label_1362
! END IF...
_Label_1370:
! IF STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1375		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1375
	jmp	_Label_1371
_Label_1375:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1379 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1378 = *_temp_1379  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1378) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1380 = _temp_1378 + 32
	load	[r14+-192],r1
	add	r1,32,r1
	store	r1,[r14+-184]
!   _temp_1381 = _temp_1380 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1377 = *_temp_1381  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   _temp_1376 = _temp_1377 - 1		(int)
	load	[r14+-196],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
!   if virtPage <= _temp_1376 then goto _Label_1374		(int)
	load	[r14+-440],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1374
	jmp	_Label_1371
_Label_1374:
	mov	2209,r13		! source line 2209
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1384 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1383 = *_temp_1384  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1383) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1385 = _temp_1383 + 32
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
!   Retrieve Result: targetName=_temp_1382  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1386 = _temp_1382 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1386 then goto _Label_1373 else goto _Label_1371
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1371
	jmp	_Label_1373
_Label_1373:
	mov	2209,r13		! source line 2209
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1389 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1388 = *_temp_1389  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1388) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1390 = _temp_1388 + 32
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
!   Retrieve Result: targetName=_temp_1387  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1391 = _temp_1387 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1391 then goto _Label_1372 else goto _Label_1371
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1371
	jmp	_Label_1372
_Label_1371:
! THEN...
	mov	2210,r13		! source line 2210
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1372:
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-456],r1
	load	[r14+-464],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-448],r1
	load	[r14+-464],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-440],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-444]
! IF STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1393		(int)
	load	[r14+-448],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1393
!	jmp	_Label_1392
_Label_1392:
! THEN...
	mov	2219,r13		! source line 2219
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0BR",r10
	jmp	_Label_1362
! END IF...
_Label_1393:
! END WHILE...
	jmp	_Label_1360
_Label_1362:
! ASSIGNMENT STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-436]
! ASSIGNMENT STATEMENT...
	mov	2225,r13		! source line 2225
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
	mov	2226,r13		! source line 2226
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
	mov	2227,r13		! source line 2227
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1395 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1394 = *_temp_1395  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1394) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1396 = _temp_1394 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1396 [fileDesc ] into _temp_1397
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
!   Data Move: openFile = *_temp_1397  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-452],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1398 = openFile + 16
	load	[r14+-452],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: nextPosInFile = *_temp_1398  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-452],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1400 = openFile + 20
	load	[r14+-452],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1399 = *_temp_1400  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1399) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1401 = _temp_1399 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: sizeOfFile = *_temp_1401  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-460]
! WHILE STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0WH",r10
_Label_1402:
!	jmp	_Label_1403
_Label_1403:
	mov	2231,r13		! source line 2231
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-444],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! IF STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0IF",r10
!   _temp_1407 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-456],r1
	load	[r14+-464],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1407 <= sizeOfFile then goto _Label_1406		(int)
	load	[r14+-120],r1
	load	[r14+-460],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1406
!	jmp	_Label_1405
_Label_1405:
! THEN...
	mov	2234,r13		! source line 2234
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2234,r13		! source line 2234
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-460],r1
	load	[r14+-456],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! END IF...
_Label_1406:
! IF STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0IF",r10
!   _temp_1410 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-448],r1
	load	[r14+-464],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1410 <= sizeInBytes then goto _Label_1409		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1409
!	jmp	_Label_1408
_Label_1408:
! THEN...
	mov	2237,r13		! source line 2237
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-448],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! END IF...
_Label_1409:
! IF STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1412		(int)
	load	[r14+-464],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1412
!	jmp	_Label_1411
_Label_1411:
! THEN...
	mov	2241,r13		! source line 2241
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0BR",r10
	jmp	_Label_1404
! END IF...
_Label_1412:
! IF STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1417		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1417
	jmp	_Label_1413
_Label_1417:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1421 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1420 = *_temp_1421  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1420) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1422 = _temp_1420 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   _temp_1423 = _temp_1422 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1419 = *_temp_1423  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   _temp_1418 = _temp_1419 - 1		(int)
	load	[r14+-108],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if virtPage <= _temp_1418 then goto _Label_1416		(int)
	load	[r14+-440],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1416
	jmp	_Label_1413
_Label_1416:
	mov	2244,r13		! source line 2244
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1426 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1425 = *_temp_1426  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1425) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1427 = _temp_1425 + 32
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
!   Retrieve Result: targetName=_temp_1424  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1428 = _temp_1424 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1428 then goto _Label_1415 else goto _Label_1413
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1413
	jmp	_Label_1415
_Label_1415:
	mov	2244,r13		! source line 2244
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1431 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1430 = *_temp_1431  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1430) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1432 = _temp_1430 + 32
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
!   Retrieve Result: targetName=_temp_1429  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1433 = _temp_1429 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1433 then goto _Label_1414 else goto _Label_1413
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1413
	jmp	_Label_1414
_Label_1413:
! THEN...
	mov	2245,r13		! source line 2245
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1414:
! SEND STATEMENT...
	mov	2248,r13		! source line 2248
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
	store	r1,[r14+-60]
!   Data Move: _temp_1434 = *_temp_1435  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1434) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1436 = _temp_1434 + 32
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
	mov	2249,r13		! source line 2249
	mov	"\0\0AS",r10
	mov	2249,r13		! source line 2249
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
	store	r1,[r14+-44]
!   Data Move: _temp_1438 = *_temp_1439  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1438) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1440 = _temp_1438 + 32
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
!   Retrieve Result: targetName=_temp_1437  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
!   destAddr = _temp_1437 + offset		(int)
	load	[r14+-52],r1
	load	[r14+-444],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0AS",r10
	mov	2250,r13		! source line 2250
	mov	"\0\0SE",r10
!   _temp_1441 = &_P_Kernel_fileManager
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
	mov	2252,r13		! source line 2252
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-456],r1
	load	[r14+-464],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-448],r1
	load	[r14+-464],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-440],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-444]
! IF STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1443		(int)
	load	[r14+-448],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1443
!	jmp	_Label_1442
_Label_1442:
! THEN...
	mov	2258,r13		! source line 2258
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0BR",r10
	jmp	_Label_1404
! END IF...
_Label_1443:
! END WHILE...
	jmp	_Label_1402
_Label_1404:
! ASSIGNMENT STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-452],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1444 = openFile + 16
	load	[r14+-452],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1444 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-456],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-448],r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1351:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1445
	.word	12		! total size of parameters
	.word	488		! frame size = 488
	.word	_Label_1446
	.word	8
	.word	4
	.word	_Label_1447
	.word	12
	.word	4
	.word	_Label_1448
	.word	16
	.word	4
	.word	_Label_1449
	.word	-32
	.word	4
	.word	_Label_1450
	.word	-36
	.word	4
	.word	_Label_1451
	.word	-40
	.word	4
	.word	_Label_1452
	.word	-44
	.word	4
	.word	_Label_1453
	.word	-48
	.word	4
	.word	_Label_1454
	.word	-52
	.word	4
	.word	_Label_1455
	.word	-56
	.word	4
	.word	_Label_1456
	.word	-60
	.word	4
	.word	_Label_1457
	.word	-64
	.word	4
	.word	_Label_1458
	.word	-9
	.word	1
	.word	_Label_1459
	.word	-68
	.word	4
	.word	_Label_1460
	.word	-72
	.word	4
	.word	_Label_1461
	.word	-76
	.word	4
	.word	_Label_1462
	.word	-10
	.word	1
	.word	_Label_1463
	.word	-11
	.word	1
	.word	_Label_1464
	.word	-80
	.word	4
	.word	_Label_1465
	.word	-84
	.word	4
	.word	_Label_1466
	.word	-88
	.word	4
	.word	_Label_1467
	.word	-12
	.word	1
	.word	_Label_1468
	.word	-92
	.word	4
	.word	_Label_1469
	.word	-96
	.word	4
	.word	_Label_1470
	.word	-100
	.word	4
	.word	_Label_1471
	.word	-104
	.word	4
	.word	_Label_1472
	.word	-108
	.word	4
	.word	_Label_1473
	.word	-112
	.word	4
	.word	_Label_1474
	.word	-116
	.word	4
	.word	_Label_1475
	.word	-120
	.word	4
	.word	_Label_1476
	.word	-124
	.word	4
	.word	_Label_1477
	.word	-128
	.word	4
	.word	_Label_1478
	.word	-132
	.word	4
	.word	_Label_1479
	.word	-136
	.word	4
	.word	_Label_1480
	.word	-140
	.word	4
	.word	_Label_1481
	.word	-144
	.word	4
	.word	_Label_1482
	.word	-148
	.word	4
	.word	_Label_1483
	.word	-152
	.word	4
	.word	_Label_1484
	.word	-13
	.word	1
	.word	_Label_1485
	.word	-156
	.word	4
	.word	_Label_1486
	.word	-160
	.word	4
	.word	_Label_1487
	.word	-164
	.word	4
	.word	_Label_1488
	.word	-14
	.word	1
	.word	_Label_1489
	.word	-15
	.word	1
	.word	_Label_1490
	.word	-168
	.word	4
	.word	_Label_1491
	.word	-172
	.word	4
	.word	_Label_1492
	.word	-176
	.word	4
	.word	_Label_1493
	.word	-16
	.word	1
	.word	_Label_1494
	.word	-180
	.word	4
	.word	_Label_1495
	.word	-184
	.word	4
	.word	_Label_1496
	.word	-188
	.word	4
	.word	_Label_1497
	.word	-192
	.word	4
	.word	_Label_1498
	.word	-196
	.word	4
	.word	_Label_1499
	.word	-200
	.word	4
	.word	_Label_1500
	.word	-204
	.word	4
	.word	_Label_1501
	.word	-208
	.word	4
	.word	_Label_1502
	.word	-212
	.word	4
	.word	_Label_1503
	.word	-216
	.word	4
	.word	_Label_1504
	.word	-220
	.word	4
	.word	_Label_1505
	.word	-224
	.word	4
	.word	_Label_1506
	.word	-228
	.word	4
	.word	_Label_1507
	.word	-232
	.word	4
	.word	_Label_1508
	.word	-236
	.word	4
	.word	_Label_1509
	.word	-240
	.word	4
	.word	_Label_1510
	.word	-244
	.word	4
	.word	_Label_1511
	.word	-248
	.word	4
	.word	_Label_1512
	.word	-17
	.word	1
	.word	_Label_1513
	.word	-252
	.word	4
	.word	_Label_1514
	.word	-256
	.word	4
	.word	_Label_1515
	.word	-260
	.word	4
	.word	_Label_1516
	.word	-264
	.word	4
	.word	_Label_1517
	.word	-18
	.word	1
	.word	_Label_1518
	.word	-268
	.word	4
	.word	_Label_1519
	.word	-272
	.word	4
	.word	_Label_1520
	.word	-276
	.word	4
	.word	_Label_1521
	.word	-19
	.word	1
	.word	_Label_1522
	.word	-20
	.word	1
	.word	_Label_1523
	.word	-280
	.word	4
	.word	_Label_1524
	.word	-284
	.word	4
	.word	_Label_1525
	.word	-288
	.word	4
	.word	_Label_1526
	.word	-21
	.word	1
	.word	_Label_1527
	.word	-292
	.word	4
	.word	_Label_1528
	.word	-296
	.word	4
	.word	_Label_1529
	.word	-300
	.word	4
	.word	_Label_1530
	.word	-304
	.word	4
	.word	_Label_1531
	.word	-308
	.word	4
	.word	_Label_1532
	.word	-312
	.word	4
	.word	_Label_1533
	.word	-316
	.word	4
	.word	_Label_1534
	.word	-320
	.word	4
	.word	_Label_1535
	.word	-324
	.word	4
	.word	_Label_1536
	.word	-22
	.word	1
	.word	_Label_1537
	.word	-328
	.word	4
	.word	_Label_1538
	.word	-332
	.word	4
	.word	_Label_1539
	.word	-336
	.word	4
	.word	_Label_1540
	.word	-23
	.word	1
	.word	_Label_1541
	.word	-24
	.word	1
	.word	_Label_1542
	.word	-340
	.word	4
	.word	_Label_1543
	.word	-344
	.word	4
	.word	_Label_1544
	.word	-348
	.word	4
	.word	_Label_1545
	.word	-25
	.word	1
	.word	_Label_1546
	.word	-352
	.word	4
	.word	_Label_1547
	.word	-356
	.word	4
	.word	_Label_1548
	.word	-360
	.word	4
	.word	_Label_1549
	.word	-364
	.word	4
	.word	_Label_1550
	.word	-368
	.word	4
	.word	_Label_1551
	.word	-372
	.word	4
	.word	_Label_1552
	.word	-376
	.word	4
	.word	_Label_1553
	.word	-380
	.word	4
	.word	_Label_1554
	.word	-384
	.word	4
	.word	_Label_1555
	.word	-388
	.word	4
	.word	_Label_1556
	.word	-392
	.word	4
	.word	_Label_1557
	.word	-396
	.word	4
	.word	_Label_1558
	.word	-400
	.word	4
	.word	_Label_1559
	.word	-404
	.word	4
	.word	_Label_1560
	.word	-408
	.word	4
	.word	_Label_1561
	.word	-412
	.word	4
	.word	_Label_1562
	.word	-416
	.word	4
	.word	_Label_1563
	.word	-420
	.word	4
	.word	_Label_1564
	.word	-424
	.word	4
	.word	_Label_1565
	.word	-428
	.word	4
	.word	_Label_1566
	.word	-432
	.word	4
	.word	_Label_1567
	.word	-436
	.word	4
	.word	_Label_1568
	.word	-440
	.word	4
	.word	_Label_1569
	.word	-444
	.word	4
	.word	_Label_1570
	.word	-448
	.word	4
	.word	_Label_1571
	.word	-452
	.word	4
	.word	_Label_1572
	.word	-456
	.word	4
	.word	_Label_1573
	.word	-460
	.word	4
	.word	_Label_1574
	.word	-464
	.word	4
	.word	_Label_1575
	.word	-468
	.word	4
	.word	_Label_1576
	.word	-26
	.word	1
	.word	_Label_1577
	.word	-472
	.word	4
	.word	_Label_1578
	.word	-27
	.word	1
	.word	_Label_1579
	.word	-476
	.word	4
	.word	0
_Label_1445:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1446:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1447:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1448:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1458:
	.byte	'C'
	.ascii	"_temp_1433\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1462:
	.byte	'C'
	.ascii	"_temp_1429\0"
	.align
_Label_1463:
	.byte	'C'
	.ascii	"_temp_1428\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1467:
	.byte	'C'
	.ascii	"_temp_1424\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1484:
	.byte	'C'
	.ascii	"_temp_1391\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1488:
	.byte	'C'
	.ascii	"_temp_1387\0"
	.align
_Label_1489:
	.byte	'C'
	.ascii	"_temp_1386\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1493:
	.byte	'C'
	.ascii	"_temp_1382\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1512:
	.byte	'C'
	.ascii	"_temp_1348\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1517:
	.byte	'C'
	.ascii	"_temp_1341\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1521:
	.byte	'C'
	.ascii	"_temp_1337\0"
	.align
_Label_1522:
	.byte	'C'
	.ascii	"_temp_1336\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1526:
	.byte	'C'
	.ascii	"_temp_1332\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1536:
	.byte	'C'
	.ascii	"_temp_1313\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1540:
	.byte	'C'
	.ascii	"_temp_1309\0"
	.align
_Label_1541:
	.byte	'C'
	.ascii	"_temp_1308\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1545:
	.byte	'C'
	.ascii	"_temp_1304\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1567:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1568:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1569:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1570:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1571:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1572:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1573:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1574:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1575:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1576:
	.byte	'B'
	.ascii	"junk\0"
	.align
_Label_1577:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1578:
	.byte	'C'
	.ascii	"ch\0"
	.align
_Label_1579:
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
_Label_4439:
	push	r0
	sub	r1,1,r1
	bne	_Label_4439
	mov	2271,r13		! source line 2271
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0SE",r10
!   _temp_1580 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-212]
!   _temp_1581 = _temp_1580 + 4
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
	mov	2278,r13		! source line 2278
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1584		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1584
	jmp	_Label_1582
_Label_1584:
!   if fileDesc <= 9 then goto _Label_1583		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1583
!	jmp	_Label_1582
_Label_1582:
! THEN...
	mov	2279,r13		! source line 2279
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0SE",r10
!   _temp_1585 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-204]
!   _temp_1586 = _temp_1585 + 4
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
	mov	2280,r13		! source line 2280
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1583:
! ASSIGNMENT STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1588 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1587 = *_temp_1588  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_1587) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1589 = _temp_1587 + 124
	load	[r14+-196],r1
	add	r1,124,r1
	store	r1,[r14+-188]
!   Move address of _temp_1589 [fileDesc ] into _temp_1590
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
!   Data Move: openFile = *_temp_1590  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1595 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1594 = *_temp_1595  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1594) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1596 = _temp_1594 + 124
	load	[r14+-176],r1
	add	r1,124,r1
	store	r1,[r14+-168]
!   Move address of _temp_1596 [fileDesc ] into _temp_1597
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
!   Data Move: _temp_1593 = *_temp_1597  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_1593) then goto _Label_1591
	load	[r14+-180],r1
	cmp	r1,r0
	be	_Label_1591
	jmp	_Label_1592
_Label_1591:
! THEN...
	mov	2285,r13		! source line 2285
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0SE",r10
!   _temp_1598 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-160]
!   _temp_1599 = _temp_1598 + 4
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
	mov	2286,r13		! source line 2286
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1592:
! IF STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1601		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1601
!	jmp	_Label_1600
_Label_1600:
! THEN...
	mov	2290,r13		! source line 2290
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1602 = openFile + 16
	load	[r14+-216],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1605 = openFile + 20
	load	[r14+-216],r1
	add	r1,20,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1604 = *_temp_1605  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1604) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1606 = _temp_1604 + 24
	load	[r14+-144],r1
	add	r1,24,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1603 = *_temp_1606  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Data Move: *_temp_1602 = _temp_1603  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-152],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0SE",r10
!   _temp_1607 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-132]
!   _temp_1608 = _temp_1607 + 4
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
	mov	2292,r13		! source line 2292
	mov	"\0\0RE",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1611 = openFile + 20
	load	[r14+-216],r1
	add	r1,20,r1
	store	r1,[r14+-116]
!   Data Move: _temp_1610 = *_temp_1611  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1610) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1612 = _temp_1610 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1609 = *_temp_1612  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   ReturnResult: _temp_1609  (sizeInBytes=4)
	load	[r14+-124],r1
	store	r1,[r14+8]
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1601:
! IF STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0IF",r10
!   if newCurrentPos >= -1 then goto _Label_1614		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1614
!	jmp	_Label_1613
_Label_1613:
! THEN...
	mov	2296,r13		! source line 2296
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0SE",r10
!   _temp_1615 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-108]
!   _temp_1616 = _temp_1615 + 4
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
	mov	2297,r13		! source line 2297
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1614:
! IF STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1623 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1622 = *_temp_1623  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1622) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1624 = _temp_1622 + 124
	load	[r14+-88],r1
	add	r1,124,r1
	store	r1,[r14+-80]
!   Move address of _temp_1624 [fileDesc ] into _temp_1625
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
!   Data Move: _temp_1621 = *_temp_1625  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1621) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1626 = _temp_1621 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1620 = *_temp_1626  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1620) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1627 = _temp_1620 + 24
	load	[r14+-96],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1619 = *_temp_1627  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if newCurrentPos <= _temp_1619 then goto _Label_1618		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1618
!	jmp	_Label_1617
_Label_1617:
! THEN...
	mov	2301,r13		! source line 2301
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0SE",r10
!   _temp_1628 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-64]
!   _temp_1629 = _temp_1628 + 4
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
	mov	2302,r13		! source line 2302
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
	mov	2306,r13		! source line 2306
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1635 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1634 = *_temp_1635  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1634) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1636 = _temp_1634 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_1636 [fileDesc ] into _temp_1637
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
!   Data Move: _temp_1633 = *_temp_1637  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1633) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1638 = _temp_1633 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1632 = *_temp_1638  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_1632 != 2 then goto _Label_1631		(int)
	load	[r14+-56],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1631
!	jmp	_Label_1630
_Label_1630:
! THEN...
	mov	2307,r13		! source line 2307
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0SE",r10
!   _temp_1639 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_1640 = _temp_1639 + 4
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
	mov	2308,r13		! source line 2308
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1631:
! ASSIGNMENT STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1641 = openFile + 16
	load	[r14+-216],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1641 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0SE",r10
!   _temp_1642 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1643 = _temp_1642 + 4
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
	mov	2313,r13		! source line 2313
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
	.word	_Label_1644
	.word	8		! total size of parameters
	.word	212		! frame size = 212
	.word	_Label_1645
	.word	8
	.word	4
	.word	_Label_1646
	.word	12
	.word	4
	.word	_Label_1647
	.word	-12
	.word	4
	.word	_Label_1648
	.word	-16
	.word	4
	.word	_Label_1649
	.word	-20
	.word	4
	.word	_Label_1650
	.word	-24
	.word	4
	.word	_Label_1651
	.word	-28
	.word	4
	.word	_Label_1652
	.word	-32
	.word	4
	.word	_Label_1653
	.word	-36
	.word	4
	.word	_Label_1654
	.word	-40
	.word	4
	.word	_Label_1655
	.word	-44
	.word	4
	.word	_Label_1656
	.word	-48
	.word	4
	.word	_Label_1657
	.word	-52
	.word	4
	.word	_Label_1658
	.word	-56
	.word	4
	.word	_Label_1659
	.word	-60
	.word	4
	.word	_Label_1660
	.word	-64
	.word	4
	.word	_Label_1661
	.word	-68
	.word	4
	.word	_Label_1662
	.word	-72
	.word	4
	.word	_Label_1663
	.word	-76
	.word	4
	.word	_Label_1664
	.word	-80
	.word	4
	.word	_Label_1665
	.word	-84
	.word	4
	.word	_Label_1666
	.word	-88
	.word	4
	.word	_Label_1667
	.word	-92
	.word	4
	.word	_Label_1668
	.word	-96
	.word	4
	.word	_Label_1669
	.word	-100
	.word	4
	.word	_Label_1670
	.word	-104
	.word	4
	.word	_Label_1671
	.word	-108
	.word	4
	.word	_Label_1672
	.word	-112
	.word	4
	.word	_Label_1673
	.word	-116
	.word	4
	.word	_Label_1674
	.word	-120
	.word	4
	.word	_Label_1675
	.word	-124
	.word	4
	.word	_Label_1676
	.word	-128
	.word	4
	.word	_Label_1677
	.word	-132
	.word	4
	.word	_Label_1678
	.word	-136
	.word	4
	.word	_Label_1679
	.word	-140
	.word	4
	.word	_Label_1680
	.word	-144
	.word	4
	.word	_Label_1681
	.word	-148
	.word	4
	.word	_Label_1682
	.word	-152
	.word	4
	.word	_Label_1683
	.word	-156
	.word	4
	.word	_Label_1684
	.word	-160
	.word	4
	.word	_Label_1685
	.word	-164
	.word	4
	.word	_Label_1686
	.word	-168
	.word	4
	.word	_Label_1687
	.word	-172
	.word	4
	.word	_Label_1688
	.word	-176
	.word	4
	.word	_Label_1689
	.word	-180
	.word	4
	.word	_Label_1690
	.word	-184
	.word	4
	.word	_Label_1691
	.word	-188
	.word	4
	.word	_Label_1692
	.word	-192
	.word	4
	.word	_Label_1693
	.word	-196
	.word	4
	.word	_Label_1694
	.word	-200
	.word	4
	.word	_Label_1695
	.word	-204
	.word	4
	.word	_Label_1696
	.word	-208
	.word	4
	.word	_Label_1697
	.word	-212
	.word	4
	.word	_Label_1698
	.word	-216
	.word	4
	.word	0
_Label_1644:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1645:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1646:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1698:
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
_Label_4440:
	push	r0
	sub	r1,1,r1
	bne	_Label_4440
	mov	2319,r13		! source line 2319
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1704 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1703 = *_temp_1704  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1703) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1705 = _temp_1703 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_1705 [fileDesc ] into _temp_1706
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
!   Data Move: _temp_1702 = *_temp_1706  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1702) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1707 = _temp_1702 + 12
	load	[r14+-108],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1701 = *_temp_1707  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_1701 != 2 then goto _Label_1700		(int)
	load	[r14+-112],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1700
!	jmp	_Label_1699
_Label_1699:
! THEN...
	mov	2324,r13		! source line 2324
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2324,r13		! source line 2324
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1709 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1708 = *_temp_1709  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1708) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1710 = _temp_1708 + 124
	load	[r14+-84],r1
	add	r1,124,r1
	store	r1,[r14+-76]
!   Move address of _temp_1710 [fileDesc ] into _temp_1711
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
!   Data Move: *_temp_1711 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-72],r2
	store	r1,[r2]
	jmp	_Label_1712
_Label_1700:
! ELSE...
	mov	2327,r13		! source line 2327
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1716		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1716
	jmp	_Label_1713
_Label_1716:
!   if fileDesc <= 9 then goto _Label_1715		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1715
	jmp	_Label_1713
_Label_1715:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1719 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1718 = *_temp_1719  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1718) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1720 = _temp_1718 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1720 [fileDesc ] into _temp_1721
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
!   Data Move: _temp_1717 = *_temp_1721  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1717) then goto _Label_1713
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1713
	jmp	_Label_1714
_Label_1713:
	jmp	_Label_1722
_Label_1714:
! ELSE...
	mov	2329,r13		! source line 2329
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1725 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1724 = *_temp_1725  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1724) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1726 = _temp_1724 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1726 [fileDesc ] into _temp_1727
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
!   Data Move: _temp_1723 = *_temp_1727  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1728 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1723  sizeInBytes=4
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
	mov	2330,r13		! source line 2330
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1730 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1729 = *_temp_1730  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1729) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1731 = _temp_1729 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1731 [fileDesc ] into _temp_1732
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
!   Data Move: *_temp_1732 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1722:
! END IF...
_Label_1712:
! RETURN STATEMENT...
	mov	2323,r13		! source line 2323
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
	.word	_Label_1733
	.word	4		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_1734
	.word	8
	.word	4
	.word	_Label_1735
	.word	-12
	.word	4
	.word	_Label_1736
	.word	-16
	.word	4
	.word	_Label_1737
	.word	-20
	.word	4
	.word	_Label_1738
	.word	-24
	.word	4
	.word	_Label_1739
	.word	-28
	.word	4
	.word	_Label_1740
	.word	-32
	.word	4
	.word	_Label_1741
	.word	-36
	.word	4
	.word	_Label_1742
	.word	-40
	.word	4
	.word	_Label_1743
	.word	-44
	.word	4
	.word	_Label_1744
	.word	-48
	.word	4
	.word	_Label_1745
	.word	-52
	.word	4
	.word	_Label_1746
	.word	-56
	.word	4
	.word	_Label_1747
	.word	-60
	.word	4
	.word	_Label_1748
	.word	-64
	.word	4
	.word	_Label_1749
	.word	-68
	.word	4
	.word	_Label_1750
	.word	-72
	.word	4
	.word	_Label_1751
	.word	-76
	.word	4
	.word	_Label_1752
	.word	-80
	.word	4
	.word	_Label_1753
	.word	-84
	.word	4
	.word	_Label_1754
	.word	-88
	.word	4
	.word	_Label_1755
	.word	-92
	.word	4
	.word	_Label_1756
	.word	-96
	.word	4
	.word	_Label_1757
	.word	-100
	.word	4
	.word	_Label_1758
	.word	-104
	.word	4
	.word	_Label_1759
	.word	-108
	.word	4
	.word	_Label_1760
	.word	-112
	.word	4
	.word	0
_Label_1733:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1734:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1701\0"
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
_Label_4441:
	push	r0
	sub	r1,1,r1
	bne	_Label_4441
	mov	2925,r13		! source line 2925
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2927,r13		! source line 2927
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2928,r13		! source line 2928
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2929,r13		! source line 2929
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1761 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1761  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2930,r13		! source line 2930
	mov	"\0\0AS",r10
!   _temp_1762 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1762) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1764 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1764) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1763 = *_temp_1764  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1762 = _temp_1763  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2931,r13		! source line 2931
	mov	"\0\0AS",r10
!   _temp_1765 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1765) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1767 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1767) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1766 = *_temp_1767  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1765 = _temp_1766  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2932,r13		! source line 2932
	mov	"\0\0AS",r10
!   _temp_1768 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1768) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1770 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1770) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1769 = *_temp_1770  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1768 = _temp_1769  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2932,r13		! source line 2932
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
	.word	_Label_1771
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1772
	.word	8
	.word	4
	.word	_Label_1773
	.word	12
	.word	4
	.word	_Label_1774
	.word	-16
	.word	4
	.word	_Label_1775
	.word	-9
	.word	1
	.word	_Label_1776
	.word	-20
	.word	4
	.word	_Label_1777
	.word	-24
	.word	4
	.word	_Label_1778
	.word	-10
	.word	1
	.word	_Label_1779
	.word	-28
	.word	4
	.word	_Label_1780
	.word	-32
	.word	4
	.word	_Label_1781
	.word	-11
	.word	1
	.word	_Label_1782
	.word	-36
	.word	4
	.word	_Label_1783
	.word	-12
	.word	1
	.word	_Label_1784
	.word	-40
	.word	4
	.word	_Label_1785
	.word	-44
	.word	4
	.word	0
_Label_1771:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1772:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1773:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1775:
	.byte	'C'
	.ascii	"_temp_1769\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1778:
	.byte	'C'
	.ascii	"_temp_1766\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1781:
	.byte	'C'
	.ascii	"_temp_1763\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1783:
	.byte	'C'
	.ascii	"_temp_1761\0"
	.align
_Label_1784:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1785:
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
_Label_4442:
	push	r0
	sub	r1,1,r1
	bne	_Label_4442
	mov	2935,r13		! source line 2935
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1787 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1786 = *_temp_1787  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1786  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2936,r13		! source line 2936
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2937,r13		! source line 2937
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2937,r13		! source line 2937
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
	.word	_Label_1788
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1789
	.word	8
	.word	4
	.word	_Label_1790
	.word	-12
	.word	4
	.word	_Label_1791
	.word	-16
	.word	4
	.word	0
_Label_1788:
	.ascii	"printFCB\0"
	.align
_Label_1789:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1786\0"
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
_Label_4443:
	push	r0
	sub	r1,1,r1
	bne	_Label_4443
	mov	2940,r13		! source line 2940
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1792 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1792  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2941,r13		! source line 2941
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1793 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1793  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2942,r13		! source line 2942
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1794 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1794  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2943,r13		! source line 2943
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2944,r13		! source line 2944
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
	mov	2944,r13		! source line 2944
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
	.word	_Label_1795
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1796
	.word	8
	.word	4
	.word	_Label_1797
	.word	-12
	.word	4
	.word	_Label_1798
	.word	-16
	.word	4
	.word	_Label_1799
	.word	-20
	.word	4
	.word	0
_Label_1795:
	.ascii	"printOpen\0"
	.align
_Label_1796:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1792\0"
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
_Label_4444:
	push	r0
	sub	r1,1,r1
	bne	_Label_4444
	mov	3206,r13		! source line 3206
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3207,r13		! source line 3207
	mov	"\0\0SE",r10
!   _temp_1800 = &_P_Kernel_serialDriver
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
	mov	3207,r13		! source line 3207
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
	.word	_Label_1801
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_1802
	.word	8
	.word	4
	.word	_Label_1803
	.word	-12
	.word	4
	.word	0
_Label_1801:
	.ascii	"SerialHandlerFunction\0"
	.align
_Label_1802:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1800\0"
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
_Label_4445:
	push	r0
	sub	r1,1,r1
	bne	_Label_4445
	mov	3334,r13		! source line 3334
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1804 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1804  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3338,r13		! source line 3338
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	3339,r13		! source line 3339
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	3340,r13		! source line 3340
	mov	"\0\0AS",r10
	mov	3340,r13		! source line 3340
	mov	"\0\0SE",r10
!   _temp_1805 = &_P_Kernel_threadManager
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
	mov	3341,r13		! source line 3341
	mov	"\0\0SE",r10
!   _temp_1806 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1806  sizeInBytes=4
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
	mov	3342,r13		! source line 3342
	mov	"\0\0SE",r10
!   _temp_1807 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1807  sizeInBytes=4
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
	mov	3342,r13		! source line 3342
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
	.word	_Label_1808
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1809
	.word	-12
	.word	4
	.word	_Label_1810
	.word	-16
	.word	4
	.word	_Label_1811
	.word	-20
	.word	4
	.word	_Label_1812
	.word	-24
	.word	4
	.word	_Label_1813
	.word	-28
	.word	4
	.word	0
_Label_1808:
	.ascii	"InitFirstProcess\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1813:
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
_Label_4446:
	push	r0
	sub	r1,1,r1
	bne	_Label_4446
	mov	3348,r13		! source line 3348
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3358,r13		! source line 3358
	mov	"\0\0AS",r10
	mov	3358,r13		! source line 3358
	mov	"\0\0SE",r10
!   _temp_1814 = &_P_Kernel_processManager
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
	mov	3359,r13		! source line 3359
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1815 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_1815 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3360,r13		! source line 3360
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1816 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_1816 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3361,r13		! source line 3361
	mov	"\0\0AS",r10
	mov	3361,r13		! source line 3361
	mov	"\0\0SE",r10
!   _temp_1817 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-60]
!   _temp_1818 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1817  sizeInBytes=4
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
	mov	3362,r13		! source line 3362
	mov	"\0\0AS",r10
	mov	3362,r13		! source line 3362
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1820 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_1819 = _temp_1820		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (newOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1819  sizeInBytes=4
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
	mov	3363,r13		! source line 3363
	mov	"\0\0SE",r10
!   _temp_1821 = &_P_Kernel_fileManager
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
	mov	3364,r13		! source line 3364
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1823 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_1824 = _temp_1823 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1822 = *_temp_1824  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUStack = _temp_1822 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	3365,r13		! source line 3365
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1825 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_1825 [999 ] into _temp_1826
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
!   initSStack = _temp_1826		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	3367,r13		! source line 3367
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	3367,r13		! source line 3367
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! SEND STATEMENT...
	mov	3368,r13		! source line 3368
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1827 = pcb + 32
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
	mov	3369,r13		! source line 3369
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1828 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1828 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_1829 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1829  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3370,r13		! source line 3370
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
	mov	3371,r13		! source line 3371
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	3371,r13		! source line 3371
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
	.word	_Label_1830
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1831
	.word	8
	.word	4
	.word	_Label_1832
	.word	-12
	.word	4
	.word	_Label_1833
	.word	-16
	.word	4
	.word	_Label_1834
	.word	-20
	.word	4
	.word	_Label_1835
	.word	-24
	.word	4
	.word	_Label_1836
	.word	-28
	.word	4
	.word	_Label_1837
	.word	-32
	.word	4
	.word	_Label_1838
	.word	-36
	.word	4
	.word	_Label_1839
	.word	-40
	.word	4
	.word	_Label_1840
	.word	-44
	.word	4
	.word	_Label_1841
	.word	-48
	.word	4
	.word	_Label_1842
	.word	-52
	.word	4
	.word	_Label_1843
	.word	-56
	.word	4
	.word	_Label_1844
	.word	-60
	.word	4
	.word	_Label_1845
	.word	-64
	.word	4
	.word	_Label_1846
	.word	-68
	.word	4
	.word	_Label_1847
	.word	-72
	.word	4
	.word	_Label_1848
	.word	-76
	.word	4
	.word	_Label_1849
	.word	-80
	.word	4
	.word	_Label_1850
	.word	-84
	.word	4
	.word	_Label_1851
	.word	-88
	.word	4
	.word	_Label_1852
	.word	-92
	.word	4
	.word	_Label_1853
	.word	-96
	.word	4
	.word	0
_Label_1830:
	.ascii	"StartUserProcess\0"
	.align
_Label_1831:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1848:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_1849:
	.byte	'P'
	.ascii	"newOpenFile\0"
	.align
_Label_1850:
	.byte	'I'
	.ascii	"PC\0"
	.align
_Label_1851:
	.byte	'I'
	.ascii	"initUStack\0"
	.align
_Label_1852:
	.byte	'I'
	.ascii	"initSStack\0"
	.align
_Label_1853:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1854
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1854:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1855
	.word	_sourceFileName
	.word	127		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1855:
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
_Label_4447:
	push	r0
	sub	r1,1,r1
	bne	_Label_4447
	mov	231,r13		! source line 231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1857		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1857
!	jmp	_Label_1856
_Label_1856:
! THEN...
	mov	233,r13		! source line 233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1858 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1858  sizeInBytes=4
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
_Label_1857:
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
	.word	_Label_1860
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1861
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1862
	.word	12
	.word	4
	.word	_Label_1863
	.word	-12
	.word	4
	.word	_Label_1864
	.word	-16
	.word	4
	.word	0
_Label_1860:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1861:
	.ascii	"Pself\0"
	.align
_Label_1862:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1858\0"
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
_Label_4448:
	push	r0
	sub	r1,1,r1
	bne	_Label_4448
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
!   if count != 2147483647 then goto _Label_1866		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1866
!	jmp	_Label_1865
_Label_1865:
! THEN...
	mov	247,r13		! source line 247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1867 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1867  sizeInBytes=4
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
_Label_1866:
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
!   if count > 0 then goto _Label_1869		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1869
!	jmp	_Label_1868
_Label_1868:
! THEN...
	mov	251,r13		! source line 251
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
!   _temp_1870 = &waitingThreads
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
!   _temp_1871 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1871 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_1872 = &_P_Kernel_readyList
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
_Label_1869:
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
	.word	_Label_1873
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1874
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1875
	.word	-12
	.word	4
	.word	_Label_1876
	.word	-16
	.word	4
	.word	_Label_1877
	.word	-20
	.word	4
	.word	_Label_1878
	.word	-24
	.word	4
	.word	_Label_1879
	.word	-28
	.word	4
	.word	_Label_1880
	.word	-32
	.word	4
	.word	0
_Label_1873:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1874:
	.ascii	"Pself\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1879:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1880:
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
_Label_4449:
	push	r0
	sub	r1,1,r1
	bne	_Label_4449
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
!   if count != -2147483648 then goto _Label_1882		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1882
!	jmp	_Label_1881
_Label_1881:
! THEN...
	mov	265,r13		! source line 265
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1883 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1883  sizeInBytes=4
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
_Label_1882:
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
!   if count >= 0 then goto _Label_1885		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1885
!	jmp	_Label_1884
_Label_1884:
! THEN...
	mov	269,r13		! source line 269
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   _temp_1886 = &waitingThreads
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
_Label_1885:
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
	.word	_Label_1887
	.word	4		! total size of parameters
	.word	20		! frame size = 20
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
	.word	0
_Label_1887:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
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
	.ascii	"_temp_1883\0"
	.align
_Label_1891:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1892
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1892:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1893
	.word	_sourceFileName
	.word	140		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1893:
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
_Label_4450:
	push	r0
	sub	r1,1,r1
	bne	_Label_4450
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
	.word	_Label_1895
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1896
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1897
	.word	-12
	.word	4
	.word	0
_Label_1895:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1896:
	.ascii	"Pself\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1894\0"
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
_Label_4451:
	push	r0
	sub	r1,1,r1
	bne	_Label_4451
	mov	301,r13		! source line 301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1899		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1899
!	jmp	_Label_1898
_Label_1898:
! THEN...
	mov	305,r13		! source line 305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1900 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1900  sizeInBytes=4
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
_Label_1899:
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
!   if heldBy == 0 then goto _Label_1904		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1904
!   _temp_1903 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1905
_Label_1904:
!   _temp_1903 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1905:
!   if _temp_1903 then goto _Label_1902 else goto _Label_1901
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1901
	jmp	_Label_1902
_Label_1901:
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
	jmp	_Label_1906
_Label_1902:
! ELSE...
	mov	311,r13		! source line 311
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   _temp_1907 = &waitingThreads
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
_Label_1906:
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
	.word	_Label_1908
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1909
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1910
	.word	-16
	.word	4
	.word	_Label_1911
	.word	-9
	.word	1
	.word	_Label_1912
	.word	-20
	.word	4
	.word	_Label_1913
	.word	-24
	.word	4
	.word	0
_Label_1908:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1909:
	.ascii	"Pself\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1911:
	.byte	'C'
	.ascii	"_temp_1903\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1913:
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
_Label_4452:
	push	r0
	sub	r1,1,r1
	bne	_Label_4452
	mov	319,r13		! source line 319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1915		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1915
!	jmp	_Label_1914
_Label_1914:
! THEN...
	mov	324,r13		! source line 324
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1916 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1916  sizeInBytes=4
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
_Label_1915:
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
!   _temp_1917 = &waitingThreads
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
!   if t == 0 then goto _Label_1919		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1919
!	jmp	_Label_1918
_Label_1918:
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
!   _temp_1920 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1920 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0SE",r10
!   _temp_1921 = &_P_Kernel_readyList
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
	jmp	_Label_1922
_Label_1919:
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
_Label_1922:
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
	.word	_Label_1923
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1924
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1925
	.word	-12
	.word	4
	.word	_Label_1926
	.word	-16
	.word	4
	.word	_Label_1927
	.word	-20
	.word	4
	.word	_Label_1928
	.word	-24
	.word	4
	.word	_Label_1929
	.word	-28
	.word	4
	.word	_Label_1930
	.word	-32
	.word	4
	.word	0
_Label_1923:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1924:
	.ascii	"Pself\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1929:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1930:
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
_Label_4453:
	push	r0
	sub	r1,1,r1
	bne	_Label_4453
	mov	340,r13		! source line 340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1933		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1933
!	jmp	_Label_1932
_Label_1932:
!   _temp_1931 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1934
_Label_1933:
!   _temp_1931 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1934:
!   ReturnResult: _temp_1931  (sizeInBytes=1)
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
	.word	_Label_1935
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1936
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1937
	.word	-9
	.word	1
	.word	0
_Label_1935:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1936:
	.ascii	"Pself\0"
	.align
_Label_1937:
	.byte	'C'
	.ascii	"_temp_1931\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1938
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1938:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1939
	.word	_sourceFileName
	.word	154		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1939:
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
_Label_4454:
	push	r0
	sub	r1,1,r1
	bne	_Label_4454
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
	.word	_Label_1941
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1942
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1943
	.word	-12
	.word	4
	.word	0
_Label_1941:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1942:
	.ascii	"Pself\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1940\0"
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
_Label_4455:
	push	r0
	sub	r1,1,r1
	bne	_Label_4455
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
!   Retrieve Result: targetName=_temp_1946  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1946 then goto _Label_1945 else goto _Label_1944
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1944
	jmp	_Label_1945
_Label_1944:
! THEN...
	mov	391,r13		! source line 391
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1947 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1947  sizeInBytes=4
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
_Label_1945:
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
!   _temp_1948 = &waitingThreads
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
	.word	_Label_1949
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1950
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1951
	.word	12
	.word	4
	.word	_Label_1952
	.word	-16
	.word	4
	.word	_Label_1953
	.word	-20
	.word	4
	.word	_Label_1954
	.word	-9
	.word	1
	.word	_Label_1955
	.word	-24
	.word	4
	.word	0
_Label_1949:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1950:
	.ascii	"Pself\0"
	.align
_Label_1951:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1954:
	.byte	'C'
	.ascii	"_temp_1946\0"
	.align
_Label_1955:
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
_Label_4456:
	push	r0
	sub	r1,1,r1
	bne	_Label_4456
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
!   Retrieve Result: targetName=_temp_1958  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1958 then goto _Label_1957 else goto _Label_1956
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1956
	jmp	_Label_1957
_Label_1956:
! THEN...
	mov	408,r13		! source line 408
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1959 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1959  sizeInBytes=4
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
_Label_1957:
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
!   _temp_1960 = &waitingThreads
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
!   if t == 0 then goto _Label_1962		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1962
!	jmp	_Label_1961
_Label_1961:
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
!   _temp_1963 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1963 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
!   _temp_1964 = &_P_Kernel_readyList
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
_Label_1962:
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
	.word	_Label_1965
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1966
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1967
	.word	12
	.word	4
	.word	_Label_1968
	.word	-16
	.word	4
	.word	_Label_1969
	.word	-20
	.word	4
	.word	_Label_1970
	.word	-24
	.word	4
	.word	_Label_1971
	.word	-28
	.word	4
	.word	_Label_1972
	.word	-9
	.word	1
	.word	_Label_1973
	.word	-32
	.word	4
	.word	_Label_1974
	.word	-36
	.word	4
	.word	0
_Label_1965:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1966:
	.ascii	"Pself\0"
	.align
_Label_1967:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1972:
	.byte	'C'
	.ascii	"_temp_1958\0"
	.align
_Label_1973:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1974:
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
_Label_4457:
	push	r0
	sub	r1,1,r1
	bne	_Label_4457
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
!   Retrieve Result: targetName=_temp_1977  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1977 then goto _Label_1976 else goto _Label_1975
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1975
	jmp	_Label_1976
_Label_1975:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1978 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1978  sizeInBytes=4
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
_Label_1976:
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
_Label_1979:
!	jmp	_Label_1980
_Label_1980:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_1982 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1983
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1983
	jmp	_Label_1984
_Label_1983:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_1981
! END IF...
_Label_1984:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1985 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1985 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_1986 = &_P_Kernel_readyList
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
	jmp	_Label_1979
_Label_1981:
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
	.word	_Label_1987
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1988
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1989
	.word	12
	.word	4
	.word	_Label_1990
	.word	-16
	.word	4
	.word	_Label_1991
	.word	-20
	.word	4
	.word	_Label_1992
	.word	-24
	.word	4
	.word	_Label_1993
	.word	-28
	.word	4
	.word	_Label_1994
	.word	-9
	.word	1
	.word	_Label_1995
	.word	-32
	.word	4
	.word	_Label_1996
	.word	-36
	.word	4
	.word	0
_Label_1987:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1988:
	.ascii	"Pself\0"
	.align
_Label_1989:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1994:
	.byte	'C'
	.ascii	"_temp_1977\0"
	.align
_Label_1995:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1996:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1997
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
_Label_1997:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1998
	.word	_sourceFileName
	.word	167		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1998:
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
_Label_4458:
	push	r0
	sub	r1,1,r1
	bne	_Label_4458
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
!   _temp_1999 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1999) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1999 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_2000 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_2000 [0 ] into _temp_2001
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
!   Data Move: *_temp_2001 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_2002 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_2002 [999 ] into _temp_2003
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
!   Data Move: *_temp_2003 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_2004 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_2004 [999 ] into _temp_2005
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
!   stackTop = _temp_2005		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_2006 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_2008 = &_temp_2007
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_2008 = _temp_2008 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_2010:
!   Data Move: *_temp_2008 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_2008 = _temp_2008 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_2009 = _temp_2009 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_2009) then goto _Label_2010
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_2010
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_2011 = &_temp_2007
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4459
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4459:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2006 = *_temp_2011  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4460:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4460
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
!   _temp_2012 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_2014 = &_temp_2013
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_2014 = _temp_2014 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_2016:
!   Data Move: *_temp_2014 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2014 = _temp_2014 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2015 = _temp_2015 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2015) then goto _Label_2016
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2016
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_2017 = &_temp_2013
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4461
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4461:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2012 = *_temp_2017  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4462:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4462
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
	.word	_Label_2018
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_2019
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2020
	.word	12
	.word	4
	.word	_Label_2021
	.word	-12
	.word	4
	.word	_Label_2022
	.word	-16
	.word	4
	.word	_Label_2023
	.word	-20
	.word	4
	.word	_Label_2024
	.word	-84
	.word	64
	.word	_Label_2025
	.word	-88
	.word	4
	.word	_Label_2026
	.word	-92
	.word	4
	.word	_Label_2027
	.word	-96
	.word	4
	.word	_Label_2028
	.word	-100
	.word	4
	.word	_Label_2029
	.word	-156
	.word	56
	.word	_Label_2030
	.word	-160
	.word	4
	.word	_Label_2031
	.word	-164
	.word	4
	.word	_Label_2032
	.word	-168
	.word	4
	.word	_Label_2033
	.word	-172
	.word	4
	.word	_Label_2034
	.word	-176
	.word	4
	.word	_Label_2035
	.word	-180
	.word	4
	.word	_Label_2036
	.word	-184
	.word	4
	.word	_Label_2037
	.word	-188
	.word	4
	.word	0
_Label_2018:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2019:
	.ascii	"Pself\0"
	.align
_Label_2020:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_1999\0"
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
_Label_4463:
	push	r0
	sub	r1,1,r1
	bne	_Label_4463
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
!   _temp_2038 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_2038  (sizeInBytes=4)
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
!   _temp_2040 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2039  sizeInBytes=4
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
	.word	_Label_2041
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2042
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2043
	.word	12
	.word	4
	.word	_Label_2044
	.word	16
	.word	4
	.word	_Label_2045
	.word	-12
	.word	4
	.word	_Label_2046
	.word	-16
	.word	4
	.word	_Label_2047
	.word	-20
	.word	4
	.word	_Label_2048
	.word	-24
	.word	4
	.word	_Label_2049
	.word	-28
	.word	4
	.word	0
_Label_2041:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_2042:
	.ascii	"Pself\0"
	.align
_Label_2043:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_2044:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2048:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2049:
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
_Label_4464:
	push	r0
	sub	r1,1,r1
	bne	_Label_4464
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_2052 == _P_Kernel_currentThread then goto _Label_2051		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2051
!	jmp	_Label_2050
_Label_2050:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2053 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2053  sizeInBytes=4
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
_Label_2051:
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
!   _temp_2054 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_2056		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2056
!	jmp	_Label_2055
_Label_2055:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_2058		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_2058
!	jmp	_Label_2057
_Label_2057:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2059 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2059  sizeInBytes=4
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
_Label_2058:
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
!   _temp_2061 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2060  sizeInBytes=4
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
_Label_2056:
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
	.word	_Label_2062
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2063
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2064
	.word	-12
	.word	4
	.word	_Label_2065
	.word	-16
	.word	4
	.word	_Label_2066
	.word	-20
	.word	4
	.word	_Label_2067
	.word	-24
	.word	4
	.word	_Label_2068
	.word	-28
	.word	4
	.word	_Label_2069
	.word	-32
	.word	4
	.word	_Label_2070
	.word	-36
	.word	4
	.word	_Label_2071
	.word	-40
	.word	4
	.word	_Label_2072
	.word	-44
	.word	4
	.word	0
_Label_2062:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_2063:
	.ascii	"Pself\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2070:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_2071:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2072:
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
_Label_4465:
	push	r0
	sub	r1,1,r1
	bne	_Label_4465
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_2074		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2074
!	jmp	_Label_2073
_Label_2073:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2075 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2075  sizeInBytes=4
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
_Label_2074:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_2078 == _P_Kernel_currentThread then goto _Label_2077		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2077
!	jmp	_Label_2076
_Label_2076:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2079 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2079  sizeInBytes=4
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
_Label_2077:
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
!   _temp_2080 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_2081
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_2081
	jmp	_Label_2082
_Label_2081:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2083 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2083  sizeInBytes=4
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
_Label_2082:
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
	.word	_Label_2084
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2085
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2086
	.word	-12
	.word	4
	.word	_Label_2087
	.word	-16
	.word	4
	.word	_Label_2088
	.word	-20
	.word	4
	.word	_Label_2089
	.word	-24
	.word	4
	.word	_Label_2090
	.word	-28
	.word	4
	.word	_Label_2091
	.word	-32
	.word	4
	.word	0
_Label_2084:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_2085:
	.ascii	"Pself\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2091:
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
_Label_4466:
	push	r0
	sub	r1,1,r1
	bne	_Label_4466
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_2095 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_2095 [0 ] into _temp_2096
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
!   Data Move: _temp_2094 = *_temp_2096  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_2094 == 606348324 then goto _Label_2093		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2093
!	jmp	_Label_2092
_Label_2092:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2097 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2097  sizeInBytes=4
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
	jmp	_Label_2098
_Label_2093:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_2102 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_2102 [999 ] into _temp_2103
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
!   Data Move: _temp_2101 = *_temp_2103  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2101 == 606348324 then goto _Label_2100		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2100
!	jmp	_Label_2099
_Label_2099:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2104 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2104  sizeInBytes=4
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
_Label_2100:
! END IF...
_Label_2098:
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
	.word	_Label_2105
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2106
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2107
	.word	-12
	.word	4
	.word	_Label_2108
	.word	-16
	.word	4
	.word	_Label_2109
	.word	-20
	.word	4
	.word	_Label_2110
	.word	-24
	.word	4
	.word	_Label_2111
	.word	-28
	.word	4
	.word	_Label_2112
	.word	-32
	.word	4
	.word	_Label_2113
	.word	-36
	.word	4
	.word	_Label_2114
	.word	-40
	.word	4
	.word	0
_Label_2105:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_2106:
	.ascii	"Pself\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2094\0"
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
_Label_4467:
	push	r0
	sub	r1,1,r1
	bne	_Label_4467
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
!   _temp_2115 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_2115  sizeInBytes=4
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
!   _temp_2116 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_2116  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_2117  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2118 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_2118  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2119 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_2119  sizeInBytes=4
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
!   _temp_2124 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2125 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2124  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_2120:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2125 then goto _Label_2123		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2123
_Label_2121:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2126 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2126  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2127 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2127  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2128 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_2128  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2130 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_2130 [i ] into _temp_2131
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
!   Data Move: _temp_2129 = *_temp_2131  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2129  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2132 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_2132  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2134 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_2134 [i ] into _temp_2135
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
!   Data Move: _temp_2133 = *_temp_2135  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2133  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2136 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2136  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2122:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2120
! END FOR
_Label_2123:
! CALL STATEMENT...
!   _temp_2137 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-116]
!   _temp_2138 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2137  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2138  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_2139 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-108]
!   _temp_2141 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_2141 [0 ] into _temp_2142
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
!   _temp_2140 = _temp_2142		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2139  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2140  sizeInBytes=4
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
	be	_Label_2145
	cmp	r1,2
	be	_Label_2146
	cmp	r1,3
	be	_Label_2147
	cmp	r1,4
	be	_Label_2148
	cmp	r1,5
	be	_Label_2149
	jmp	_Label_2143
! CASE 1...
_Label_2145:
! CALL STATEMENT...
!   _temp_2150 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2150  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_2144
! CASE 2...
_Label_2146:
! CALL STATEMENT...
!   _temp_2151 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2151  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_2144
! CASE 3...
_Label_2147:
! CALL STATEMENT...
!   _temp_2152 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2152  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_2144
! CASE 4...
_Label_2148:
! CALL STATEMENT...
!   _temp_2153 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2153  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_2144
! CASE 5...
_Label_2149:
! CALL STATEMENT...
!   _temp_2154 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2154  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_2144
! DEFAULT CASE...
_Label_2143:
! CALL STATEMENT...
!   _temp_2155 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2155  sizeInBytes=4
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
_Label_2144:
! CALL STATEMENT...
!   _temp_2156 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2156  sizeInBytes=4
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
!   _temp_2157 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2157  sizeInBytes=4
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
!   _temp_2162 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2163 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2162  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_2158:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2163 then goto _Label_2161		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2161
_Label_2159:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2164 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2164  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2165 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2165  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2166 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2166  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2168 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_2168 [i ] into _temp_2169
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
!   Data Move: _temp_2167 = *_temp_2169  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2167  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2170 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2170  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2172 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_2172 [i ] into _temp_2173
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
!   Data Move: _temp_2171 = *_temp_2173  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2171  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2174 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2174  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2160:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2158
! END FOR
_Label_2161:
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
	.word	_Label_2175
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_2176
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2177
	.word	-12
	.word	4
	.word	_Label_2178
	.word	-16
	.word	4
	.word	_Label_2179
	.word	-20
	.word	4
	.word	_Label_2180
	.word	-24
	.word	4
	.word	_Label_2181
	.word	-28
	.word	4
	.word	_Label_2182
	.word	-32
	.word	4
	.word	_Label_2183
	.word	-36
	.word	4
	.word	_Label_2184
	.word	-40
	.word	4
	.word	_Label_2185
	.word	-44
	.word	4
	.word	_Label_2186
	.word	-48
	.word	4
	.word	_Label_2187
	.word	-52
	.word	4
	.word	_Label_2188
	.word	-56
	.word	4
	.word	_Label_2189
	.word	-60
	.word	4
	.word	_Label_2190
	.word	-64
	.word	4
	.word	_Label_2191
	.word	-68
	.word	4
	.word	_Label_2192
	.word	-72
	.word	4
	.word	_Label_2193
	.word	-76
	.word	4
	.word	_Label_2194
	.word	-80
	.word	4
	.word	_Label_2195
	.word	-84
	.word	4
	.word	_Label_2196
	.word	-88
	.word	4
	.word	_Label_2197
	.word	-92
	.word	4
	.word	_Label_2198
	.word	-96
	.word	4
	.word	_Label_2199
	.word	-100
	.word	4
	.word	_Label_2200
	.word	-104
	.word	4
	.word	_Label_2201
	.word	-108
	.word	4
	.word	_Label_2202
	.word	-112
	.word	4
	.word	_Label_2203
	.word	-116
	.word	4
	.word	_Label_2204
	.word	-120
	.word	4
	.word	_Label_2205
	.word	-124
	.word	4
	.word	_Label_2206
	.word	-128
	.word	4
	.word	_Label_2207
	.word	-132
	.word	4
	.word	_Label_2208
	.word	-136
	.word	4
	.word	_Label_2209
	.word	-140
	.word	4
	.word	_Label_2210
	.word	-144
	.word	4
	.word	_Label_2211
	.word	-148
	.word	4
	.word	_Label_2212
	.word	-152
	.word	4
	.word	_Label_2213
	.word	-156
	.word	4
	.word	_Label_2214
	.word	-160
	.word	4
	.word	_Label_2215
	.word	-164
	.word	4
	.word	_Label_2216
	.word	-168
	.word	4
	.word	_Label_2217
	.word	-172
	.word	4
	.word	_Label_2218
	.word	-176
	.word	4
	.word	_Label_2219
	.word	-180
	.word	4
	.word	_Label_2220
	.word	-184
	.word	4
	.word	_Label_2221
	.word	-188
	.word	4
	.word	_Label_2222
	.word	-192
	.word	4
	.word	_Label_2223
	.word	-196
	.word	4
	.word	0
_Label_2175:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2176:
	.ascii	"Pself\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2222:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2223:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_2224
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_2224:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2225
	.word	_sourceFileName
	.word	194		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_2225:
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
_Label_4468:
	push	r0
	sub	r1,1,r1
	bne	_Label_4468
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2226 = _StringConst_83
	set	_StringConst_83,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_2226  sizeInBytes=4
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
!   _temp_2227 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_2229 = &_temp_2228
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_2229 = _temp_2229 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2231 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_4469:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4469
!   _temp_2231 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_2233:
!   Data Move: *_temp_2229 = _temp_2231  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_4470:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4470
!   _temp_2229 = _temp_2229 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_2230 = _temp_2230 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_2230) then goto _Label_2233
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_2233
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_2234 = &_temp_2228
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4471
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4471:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2227 = *_temp_2234  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4472:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4472
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
!   _temp_2240 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2241 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2240  (sizeInBytes=4)
	load	[r14+-72],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_2236:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2241 then goto _Label_2239		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2239
_Label_2237:
	mov	702,r13		! source line 702
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_2242 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-64]
!   _temp_2243 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_2243 [i ] into _temp_2244
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
!   Prepare Argument: offset=12  value=_temp_2242  sizeInBytes=4
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
!   _temp_2245 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_2245 [i ] into _temp_2246
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
!   _temp_2247 = _temp_2246 + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_2247 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0SE",r10
!   _temp_2249 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_2249 [i ] into _temp_2250
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
!   _temp_2248 = _temp_2250		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_2251 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2248  sizeInBytes=4
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
_Label_2238:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_2236
! END FOR
_Label_2239:
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
!   _temp_2253 = &threadManagerLock
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
!   _temp_2255 = &aThreadBecameFree
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
	.word	_Label_2256
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_2257
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2258
	.word	-12
	.word	4
	.word	_Label_2259
	.word	-16
	.word	4
	.word	_Label_2260
	.word	-20
	.word	4
	.word	_Label_2261
	.word	-24
	.word	4
	.word	_Label_2262
	.word	-28
	.word	4
	.word	_Label_2263
	.word	-32
	.word	4
	.word	_Label_2264
	.word	-36
	.word	4
	.word	_Label_2265
	.word	-40
	.word	4
	.word	_Label_2266
	.word	-44
	.word	4
	.word	_Label_2267
	.word	-48
	.word	4
	.word	_Label_2268
	.word	-52
	.word	4
	.word	_Label_2269
	.word	-56
	.word	4
	.word	_Label_2270
	.word	-60
	.word	4
	.word	_Label_2271
	.word	-64
	.word	4
	.word	_Label_2272
	.word	-68
	.word	4
	.word	_Label_2273
	.word	-72
	.word	4
	.word	_Label_2274
	.word	-76
	.word	4
	.word	_Label_2275
	.word	-80
	.word	4
	.word	_Label_2276
	.word	-84
	.word	4
	.word	_Label_2277
	.word	-4248
	.word	4164
	.word	_Label_2278
	.word	-4252
	.word	4
	.word	_Label_2279
	.word	-4256
	.word	4
	.word	_Label_2280
	.word	-45900
	.word	41644
	.word	_Label_2281
	.word	-45904
	.word	4
	.word	_Label_2282
	.word	-45908
	.word	4
	.word	_Label_2283
	.word	-45912
	.word	4
	.word	0
_Label_2256:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2257:
	.ascii	"Pself\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2283:
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
_Label_4473:
	push	r0
	sub	r1,1,r1
	bne	_Label_4473
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
!   _temp_2284 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2284  sizeInBytes=4
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
!   _temp_2289 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2290 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2289  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_2285:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2290 then goto _Label_2288		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2288
_Label_2286:
	mov	727,r13		! source line 727
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2291 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2291  sizeInBytes=4
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
!   _temp_2292 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2292  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2294 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2294 [i ] into _temp_2295
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
!   _temp_2293 = _temp_2295		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2293  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CA",r10
	call	_function_197_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_2287:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2285
! END FOR
_Label_2288:
! CALL STATEMENT...
!   _temp_2296 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2296  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0SE",r10
!   _temp_2297 = _function_196_PrintObjectAddr
	set	_function_196_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2298 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2297  sizeInBytes=4
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
	.word	_Label_2299
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2300
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2301
	.word	-12
	.word	4
	.word	_Label_2302
	.word	-16
	.word	4
	.word	_Label_2303
	.word	-20
	.word	4
	.word	_Label_2304
	.word	-24
	.word	4
	.word	_Label_2305
	.word	-28
	.word	4
	.word	_Label_2306
	.word	-32
	.word	4
	.word	_Label_2307
	.word	-36
	.word	4
	.word	_Label_2308
	.word	-40
	.word	4
	.word	_Label_2309
	.word	-44
	.word	4
	.word	_Label_2310
	.word	-48
	.word	4
	.word	_Label_2311
	.word	-52
	.word	4
	.word	_Label_2312
	.word	-56
	.word	4
	.word	_Label_2313
	.word	-60
	.word	4
	.word	0
_Label_2299:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2300:
	.ascii	"Pself\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2312:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2313:
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
_Label_4474:
	push	r0
	sub	r1,1,r1
	bne	_Label_4474
	mov	741,r13		! source line 741
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_2314 = &threadManagerLock
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
_Label_2315:
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_2318 = &freeList
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
!   if result==true then goto _Label_2316 else goto _Label_2317
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2317
	jmp	_Label_2316
_Label_2316:
	mov	751,r13		! source line 751
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0SE",r10
!   _temp_2319 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2320 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2319  sizeInBytes=4
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
	jmp	_Label_2315
_Label_2317:
! ASSIGNMENT STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0AS",r10
	mov	754,r13		! source line 754
	mov	"\0\0SE",r10
!   _temp_2321 = &freeList
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
!   _temp_2322 = avaiThread + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2322 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0SE",r10
!   _temp_2323 = &threadManagerLock
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
	.word	_Label_2324
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2325
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2326
	.word	-12
	.word	4
	.word	_Label_2327
	.word	-16
	.word	4
	.word	_Label_2328
	.word	-20
	.word	4
	.word	_Label_2329
	.word	-24
	.word	4
	.word	_Label_2330
	.word	-28
	.word	4
	.word	_Label_2331
	.word	-32
	.word	4
	.word	_Label_2332
	.word	-36
	.word	4
	.word	_Label_2333
	.word	-40
	.word	4
	.word	0
_Label_2324:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2325:
	.ascii	"Pself\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2333:
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
_Label_4475:
	push	r0
	sub	r1,1,r1
	bne	_Label_4475
	mov	762,r13		! source line 762
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0SE",r10
!   _temp_2334 = &threadManagerLock
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
!   _temp_2335 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2335 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_2336 = &freeList
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
!   _temp_2337 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2338 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2337  sizeInBytes=4
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
!   _temp_2339 = &threadManagerLock
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
	.word	_Label_2340
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2341
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2342
	.word	12
	.word	4
	.word	_Label_2343
	.word	-12
	.word	4
	.word	_Label_2344
	.word	-16
	.word	4
	.word	_Label_2345
	.word	-20
	.word	4
	.word	_Label_2346
	.word	-24
	.word	4
	.word	_Label_2347
	.word	-28
	.word	4
	.word	_Label_2348
	.word	-32
	.word	4
	.word	0
_Label_2340:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2341:
	.ascii	"Pself\0"
	.align
_Label_2342:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2349
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2349:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2350
	.word	_sourceFileName
	.word	215		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2350:
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
_Label_4476:
	push	r0
	sub	r1,1,r1
	bne	_Label_4476
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
_Label_4477:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4477
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_2352 = &addrSpace
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
!   _temp_2353 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2355 = &_temp_2354
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2355 = _temp_2355 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2357:
!   Data Move: *_temp_2355 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2355 = _temp_2355 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2356 = _temp_2356 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2356) then goto _Label_2357
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2357
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2358 = &_temp_2354
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4478
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4478:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2353 = *_temp_2358  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4479:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4479
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
	.word	_Label_2359
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2360
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2361
	.word	-12
	.word	4
	.word	_Label_2362
	.word	-16
	.word	4
	.word	_Label_2363
	.word	-20
	.word	4
	.word	_Label_2364
	.word	-64
	.word	44
	.word	_Label_2365
	.word	-68
	.word	4
	.word	_Label_2366
	.word	-72
	.word	4
	.word	_Label_2367
	.word	-76
	.word	4
	.word	0
_Label_2359:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2360:
	.ascii	"Pself\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2351\0"
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
_Label_4480:
	push	r0
	sub	r1,1,r1
	bne	_Label_4480
	mov	798,r13		! source line 798
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2368) then goto _runtimeErrorNullPointer
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
!   _temp_2369 = &addrSpace
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
!   _temp_2370 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2370  sizeInBytes=4
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
!   _temp_2371 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2371  sizeInBytes=4
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
!   _temp_2376 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2377 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2376  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-60]
_Label_2372:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2377 then goto _Label_2375		
	load	[r14+-60],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2375
_Label_2373:
	mov	810,r13		! source line 810
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	811,r13		! source line 811
	mov	"\0\0IF",r10
!   _temp_2381 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Move address of _temp_2381 [i ] into _temp_2382
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
!   Data Move: _temp_2380 = *_temp_2382  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2380 == 0 then goto _Label_2379		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2379
!	jmp	_Label_2378
_Label_2378:
! THEN...
	mov	812,r13		! source line 812
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0SE",r10
!   _temp_2384 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_2384 [i ] into _temp_2385
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
!   Data Move: _temp_2383 = *_temp_2385  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2383) then goto _runtimeErrorNullPointer
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
_Label_2379:
!   Increment the FOR-LOOP index variable and jump back
_Label_2374:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2372
! END FOR
_Label_2375:
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
	.word	_Label_2386
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2387
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2388
	.word	-12
	.word	4
	.word	_Label_2389
	.word	-16
	.word	4
	.word	_Label_2390
	.word	-20
	.word	4
	.word	_Label_2391
	.word	-24
	.word	4
	.word	_Label_2392
	.word	-28
	.word	4
	.word	_Label_2393
	.word	-32
	.word	4
	.word	_Label_2394
	.word	-36
	.word	4
	.word	_Label_2395
	.word	-40
	.word	4
	.word	_Label_2396
	.word	-44
	.word	4
	.word	_Label_2397
	.word	-48
	.word	4
	.word	_Label_2398
	.word	-52
	.word	4
	.word	_Label_2399
	.word	-56
	.word	4
	.word	_Label_2400
	.word	-60
	.word	4
	.word	0
_Label_2386:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2387:
	.ascii	"Pself\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2400:
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
_Label_4481:
	push	r0
	sub	r1,1,r1
	bne	_Label_4481
	mov	821,r13		! source line 821
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2401 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2401  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2402  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	826,r13		! source line 826
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2403 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2403  sizeInBytes=4
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
!   _temp_2404 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2404  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	829,r13		! source line 829
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	830,r13		! source line 830
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2406		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2406
!	jmp	_Label_2405
_Label_2405:
! THEN...
	mov	831,r13		! source line 831
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2407 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2407  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2408
_Label_2406:
! ELSE...
	mov	832,r13		! source line 832
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2410		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2410
!	jmp	_Label_2409
_Label_2409:
! THEN...
	mov	833,r13		! source line 833
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2411 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2411  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	833,r13		! source line 833
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2412
_Label_2410:
! ELSE...
	mov	834,r13		! source line 834
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	834,r13		! source line 834
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2414		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2414
!	jmp	_Label_2413
_Label_2413:
! THEN...
	mov	835,r13		! source line 835
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2415 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2415  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2416
_Label_2414:
! ELSE...
	mov	837,r13		! source line 837
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2417 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2417  sizeInBytes=4
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
_Label_2416:
! END IF...
_Label_2412:
! END IF...
_Label_2408:
! CALL STATEMENT...
!   _temp_2418 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2418  sizeInBytes=4
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
!   _temp_2419 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2419  sizeInBytes=4
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
	.word	_Label_2420
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2421
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2422
	.word	-12
	.word	4
	.word	_Label_2423
	.word	-16
	.word	4
	.word	_Label_2424
	.word	-20
	.word	4
	.word	_Label_2425
	.word	-24
	.word	4
	.word	_Label_2426
	.word	-28
	.word	4
	.word	_Label_2427
	.word	-32
	.word	4
	.word	_Label_2428
	.word	-36
	.word	4
	.word	_Label_2429
	.word	-40
	.word	4
	.word	_Label_2430
	.word	-44
	.word	4
	.word	_Label_2431
	.word	-48
	.word	4
	.word	0
_Label_2420:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2421:
	.ascii	"Pself\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2432
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
_Label_2432:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2433
	.word	_sourceFileName
	.word	235		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2433:
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
_Label_4482:
	push	r0
	sub	r1,1,r1
	bne	_Label_4482
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
!   _temp_2435 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1948]
!   NEW ARRAY Constructor...
!   _temp_2437 = &_temp_2436
	add	r14,-1944,r1
	store	r1,[r14+-260]
!   _temp_2437 = _temp_2437 + 4
	load	[r14+-260],r1
	add	r1,4,r1
	store	r1,[r14+-260]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2439 = zeros  (sizeInBytes=168)
	add	r14,-252,r4
	mov	42,r3
_Label_4483:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4483
!   _temp_2439 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-252]
	mov	10,r1
	store	r1,[r14+-256]
_Label_2441:
!   Data Move: *_temp_2437 = _temp_2439  (sizeInBytes=168)
	add	r14,-252,r5
	load	[r14+-260],r4
	mov	42,r3
_Label_4484:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4484
!   _temp_2437 = _temp_2437 + 168
	load	[r14+-260],r1
	add	r1,168,r1
	store	r1,[r14+-260]
!   _temp_2438 = _temp_2438 + -1
	load	[r14+-256],r1
	add	r1,-1,r1
	store	r1,[r14+-256]
!   if intNotZero (_temp_2438) then goto _Label_2441
	load	[r14+-256],r1
	cmp	r1,r0
	bne	_Label_2441
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1944]
!   _temp_2442 = &_temp_2436
	add	r14,-1944,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	load	[r14+-1948],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4485
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4485:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2435 = *_temp_2442  (sizeInBytes=1684)
	load	[r14+-80],r5
	load	[r14+-1948],r4
	mov	421,r3
_Label_4486:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4486
! FOR STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2447 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2448 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2447  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-1956]
_Label_2443:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2448 then goto _Label_2446		
	load	[r14+-1956],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2446
_Label_2444:
	mov	865,r13		! source line 865
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0SE",r10
!   _temp_2449 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_2449 [i ] into _temp_2450
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
!   _temp_2451 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_2451 [i ] into _temp_2452
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
!   _temp_2453 = _temp_2452 + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_2453 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0SE",r10
!   _temp_2455 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2455 [i ] into _temp_2456
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
!   _temp_2454 = _temp_2456		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_2457 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2454  sizeInBytes=4
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
_Label_2445:
!   i = i + 1
	load	[r14+-1956],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1956]
	jmp	_Label_2443
! END FOR
_Label_2446:
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
!   _temp_2459 = &processManagerLock
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
!   _temp_2461 = &aProcessBecameFree
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
!   _temp_2463 = &aProcessDied
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
	.word	_Label_2464
	.word	4		! total size of parameters
	.word	1956		! frame size = 1956
	.word	_Label_2465
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2466
	.word	-12
	.word	4
	.word	_Label_2467
	.word	-16
	.word	4
	.word	_Label_2468
	.word	-20
	.word	4
	.word	_Label_2469
	.word	-24
	.word	4
	.word	_Label_2470
	.word	-28
	.word	4
	.word	_Label_2471
	.word	-32
	.word	4
	.word	_Label_2472
	.word	-36
	.word	4
	.word	_Label_2473
	.word	-40
	.word	4
	.word	_Label_2474
	.word	-44
	.word	4
	.word	_Label_2475
	.word	-48
	.word	4
	.word	_Label_2476
	.word	-52
	.word	4
	.word	_Label_2477
	.word	-56
	.word	4
	.word	_Label_2478
	.word	-60
	.word	4
	.word	_Label_2479
	.word	-64
	.word	4
	.word	_Label_2480
	.word	-68
	.word	4
	.word	_Label_2481
	.word	-72
	.word	4
	.word	_Label_2482
	.word	-76
	.word	4
	.word	_Label_2483
	.word	-80
	.word	4
	.word	_Label_2484
	.word	-84
	.word	4
	.word	_Label_2485
	.word	-252
	.word	168
	.word	_Label_2486
	.word	-256
	.word	4
	.word	_Label_2487
	.word	-260
	.word	4
	.word	_Label_2488
	.word	-1944
	.word	1684
	.word	_Label_2489
	.word	-1948
	.word	4
	.word	_Label_2490
	.word	-1952
	.word	4
	.word	_Label_2491
	.word	-1956
	.word	4
	.word	0
_Label_2464:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2465:
	.ascii	"Pself\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2491:
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
_Label_4487:
	push	r0
	sub	r1,1,r1
	bne	_Label_4487
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
!   _temp_2492 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2492  sizeInBytes=4
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
!   _temp_2497 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2498 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2497  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2493:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2498 then goto _Label_2496		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2496
_Label_2494:
	mov	893,r13		! source line 893
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2499 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2499  sizeInBytes=4
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
!   _temp_2500 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2500  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	896,r13		! source line 896
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_2501 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2501 [i ] into _temp_2502
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
_Label_2495:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2493
! END FOR
_Label_2496:
! CALL STATEMENT...
!   _temp_2503 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2503  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	899,r13		! source line 899
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_2504 = _function_196_PrintObjectAddr
	set	_function_196_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2505 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2504  sizeInBytes=4
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
	.word	_Label_2506
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2507
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2508
	.word	-12
	.word	4
	.word	_Label_2509
	.word	-16
	.word	4
	.word	_Label_2510
	.word	-20
	.word	4
	.word	_Label_2511
	.word	-24
	.word	4
	.word	_Label_2512
	.word	-28
	.word	4
	.word	_Label_2513
	.word	-32
	.word	4
	.word	_Label_2514
	.word	-36
	.word	4
	.word	_Label_2515
	.word	-40
	.word	4
	.word	_Label_2516
	.word	-44
	.word	4
	.word	_Label_2517
	.word	-48
	.word	4
	.word	_Label_2518
	.word	-52
	.word	4
	.word	_Label_2519
	.word	-56
	.word	4
	.word	0
_Label_2506:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2507:
	.ascii	"Pself\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2518:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2519:
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
_Label_4488:
	push	r0
	sub	r1,1,r1
	bne	_Label_4488
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
!   _temp_2520 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2520  sizeInBytes=4
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
!   _temp_2525 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2526 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2525  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2521:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2526 then goto _Label_2524		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2524
_Label_2522:
	mov	916,r13		! source line 916
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2527 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2527  sizeInBytes=4
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
!   _temp_2528 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2528 [i ] into _temp_2529
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
_Label_2523:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2521
! END FOR
_Label_2524:
! CALL STATEMENT...
!   _temp_2530 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2530  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	921,r13		! source line 921
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0SE",r10
!   _temp_2531 = _function_196_PrintObjectAddr
	set	_function_196_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2532 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2531  sizeInBytes=4
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
	.word	_Label_2533
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2534
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2535
	.word	-12
	.word	4
	.word	_Label_2536
	.word	-16
	.word	4
	.word	_Label_2537
	.word	-20
	.word	4
	.word	_Label_2538
	.word	-24
	.word	4
	.word	_Label_2539
	.word	-28
	.word	4
	.word	_Label_2540
	.word	-32
	.word	4
	.word	_Label_2541
	.word	-36
	.word	4
	.word	_Label_2542
	.word	-40
	.word	4
	.word	_Label_2543
	.word	-44
	.word	4
	.word	_Label_2544
	.word	-48
	.word	4
	.word	_Label_2545
	.word	-52
	.word	4
	.word	0
_Label_2533:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2534:
	.ascii	"Pself\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2544:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2545:
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
_Label_4489:
	push	r0
	sub	r1,1,r1
	bne	_Label_4489
	mov	929,r13		! source line 929
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0SE",r10
!   _temp_2546 = &processManagerLock
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
_Label_2547:
	mov	937,r13		! source line 937
	mov	"\0\0SE",r10
!   _temp_2550 = &freeList
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
!   if result==true then goto _Label_2548 else goto _Label_2549
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2549
	jmp	_Label_2548
_Label_2548:
	mov	937,r13		! source line 937
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0SE",r10
!   _temp_2551 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2552 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2551  sizeInBytes=4
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
	jmp	_Label_2547
_Label_2549:
! ASSIGNMENT STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0AS",r10
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_2553 = &freeList
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
!   _temp_2554 = nextProcess + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2554 = nextPid  (sizeInBytes=4)
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
!   _temp_2555 = nextProcess + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2555 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0SE",r10
!   _temp_2556 = &processManagerLock
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
	.word	_Label_2557
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2558
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2559
	.word	-12
	.word	4
	.word	_Label_2560
	.word	-16
	.word	4
	.word	_Label_2561
	.word	-20
	.word	4
	.word	_Label_2562
	.word	-24
	.word	4
	.word	_Label_2563
	.word	-28
	.word	4
	.word	_Label_2564
	.word	-32
	.word	4
	.word	_Label_2565
	.word	-36
	.word	4
	.word	_Label_2566
	.word	-40
	.word	4
	.word	_Label_2567
	.word	-44
	.word	4
	.word	0
_Label_2557:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2558:
	.ascii	"Pself\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2567:
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
_Label_4490:
	push	r0
	sub	r1,1,r1
	bne	_Label_4490
	mov	950,r13		! source line 950
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0SE",r10
!   _temp_2568 = &processManagerLock
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
!   _temp_2569 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2569 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_2570 = &freeList
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
!   _temp_2571 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2572 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2571  sizeInBytes=4
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
!   _temp_2573 = &processManagerLock
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
	.word	_Label_2574
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2575
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2576
	.word	12
	.word	4
	.word	_Label_2577
	.word	-12
	.word	4
	.word	_Label_2578
	.word	-16
	.word	4
	.word	_Label_2579
	.word	-20
	.word	4
	.word	_Label_2580
	.word	-24
	.word	4
	.word	_Label_2581
	.word	-28
	.word	4
	.word	_Label_2582
	.word	-32
	.word	4
	.word	0
_Label_2574:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2575:
	.ascii	"Pself\0"
	.align
_Label_2576:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2568\0"
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
_Label_4491:
	push	r0
	sub	r1,1,r1
	bne	_Label_4491
	mov	964,r13		! source line 964
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0SE",r10
!   _temp_2583 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-244]
!   _temp_2584 = _temp_2583 + 1688
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
!   _temp_2589 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2590 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-232]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2589  (sizeInBytes=4)
	load	[r14+-236],r1
	store	r1,[r14+-248]
_Label_2585:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2590 then goto _Label_2588		
	load	[r14+-248],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2588
_Label_2586:
	mov	973,r13		! source line 973
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0IF",r10
!   _temp_2594 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-224]
!   _temp_2595 = _temp_2594 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Move address of _temp_2595 [i ] into _temp_2596
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
!   _temp_2597 = _temp_2596 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
!   Data Move: _temp_2593 = *_temp_2597  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2599 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_2598 = *_temp_2599  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if _temp_2593 != _temp_2598 then goto _Label_2592		(int)
	load	[r14+-228],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bne	_Label_2592
!	jmp	_Label_2591
_Label_2591:
! THEN...
	mov	975,r13		! source line 975
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
!   _temp_2600 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-200]
!   _temp_2601 = _temp_2600 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Move address of _temp_2601 [i ] into _temp_2602
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
!   parentPCB = _temp_2602		(4 bytes)
	load	[r14+-192],r1
	store	r1,[r14+-252]
! END IF...
_Label_2592:
! IF STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0IF",r10
!   _temp_2607 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_2608 = _temp_2607 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_2608 [i ] into _temp_2609
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
!   _temp_2610 = _temp_2609 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2606 = *_temp_2610  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_2606 != 2 then goto _Label_2604		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2604
!	jmp	_Label_2605
_Label_2605:
!   _temp_2612 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_2613 = _temp_2612 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_2613 [i ] into _temp_2614
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
!   _temp_2615 = _temp_2614 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_2611 = *_temp_2615  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2617 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_2616 = *_temp_2617  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_2611 != _temp_2616 then goto _Label_2604		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_2604
!	jmp	_Label_2603
_Label_2603:
! THEN...
	mov	978,r13		! source line 978
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0AS",r10
!   _temp_2618 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_2619 = _temp_2618 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2619 [i ] into _temp_2620
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
!   _temp_2621 = _temp_2620 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_2621 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_2623 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_2624 = _temp_2623 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_2624 [i ] into _temp_2625
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
!   _temp_2622 = _temp_2625		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_2626 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_2627 = _temp_2626 + 1724
	load	[r14+-108],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2622  sizeInBytes=4
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
!   _temp_2629 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_2630 = _temp_2629 + 1688
	load	[r14+-96],r1
	add	r1,1688,r1
	store	r1,[r14+-92]
!   _temp_2628 = _temp_2630		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_2631 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2632 = _temp_2631 + 1708
	load	[r14+-88],r1
	add	r1,1708,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_2628  sizeInBytes=4
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
_Label_2604:
!   Increment the FOR-LOOP index variable and jump back
_Label_2587:
!   i = i + 1
	load	[r14+-248],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
	jmp	_Label_2585
! END FOR
_Label_2588:
! IF STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0IF",r10
!   if intIsZero (parentPCB) then goto _Label_2634
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_2634
!	jmp	_Label_2635
_Label_2635:
!   if intIsZero (parentPCB) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2637 = parentPCB + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2636 = *_temp_2637  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2636 != 1 then goto _Label_2634		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2634
!	jmp	_Label_2633
_Label_2633:
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
!   _temp_2638 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_2638 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0SE",r10
!   _temp_2640 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2641 = _temp_2640 + 1688
	load	[r14+-64],r1
	add	r1,1688,r1
	store	r1,[r14+-60]
!   _temp_2639 = _temp_2641		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2642 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_2643 = _temp_2642 + 1736
	load	[r14+-56],r1
	add	r1,1736,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2639  sizeInBytes=4
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
	jmp	_Label_2644
_Label_2634:
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
!   _temp_2645 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2645 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0SE",r10
!   _temp_2646 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2647 = _temp_2646 + 1724
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
!   _temp_2649 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2650 = _temp_2649 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2648 = _temp_2650		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2651 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2652 = _temp_2651 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2648  sizeInBytes=4
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
_Label_2644:
! SEND STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0SE",r10
!   _temp_2653 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2654 = _temp_2653 + 1688
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
	.word	_Label_2655
	.word	8		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_2656
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2657
	.word	12
	.word	4
	.word	_Label_2658
	.word	-12
	.word	4
	.word	_Label_2659
	.word	-16
	.word	4
	.word	_Label_2660
	.word	-20
	.word	4
	.word	_Label_2661
	.word	-24
	.word	4
	.word	_Label_2662
	.word	-28
	.word	4
	.word	_Label_2663
	.word	-32
	.word	4
	.word	_Label_2664
	.word	-36
	.word	4
	.word	_Label_2665
	.word	-40
	.word	4
	.word	_Label_2666
	.word	-44
	.word	4
	.word	_Label_2667
	.word	-48
	.word	4
	.word	_Label_2668
	.word	-52
	.word	4
	.word	_Label_2669
	.word	-56
	.word	4
	.word	_Label_2670
	.word	-60
	.word	4
	.word	_Label_2671
	.word	-64
	.word	4
	.word	_Label_2672
	.word	-68
	.word	4
	.word	_Label_2673
	.word	-72
	.word	4
	.word	_Label_2674
	.word	-76
	.word	4
	.word	_Label_2675
	.word	-80
	.word	4
	.word	_Label_2676
	.word	-84
	.word	4
	.word	_Label_2677
	.word	-88
	.word	4
	.word	_Label_2678
	.word	-92
	.word	4
	.word	_Label_2679
	.word	-96
	.word	4
	.word	_Label_2680
	.word	-100
	.word	4
	.word	_Label_2681
	.word	-104
	.word	4
	.word	_Label_2682
	.word	-108
	.word	4
	.word	_Label_2683
	.word	-112
	.word	4
	.word	_Label_2684
	.word	-116
	.word	4
	.word	_Label_2685
	.word	-120
	.word	4
	.word	_Label_2686
	.word	-124
	.word	4
	.word	_Label_2687
	.word	-128
	.word	4
	.word	_Label_2688
	.word	-132
	.word	4
	.word	_Label_2689
	.word	-136
	.word	4
	.word	_Label_2690
	.word	-140
	.word	4
	.word	_Label_2691
	.word	-144
	.word	4
	.word	_Label_2692
	.word	-148
	.word	4
	.word	_Label_2693
	.word	-152
	.word	4
	.word	_Label_2694
	.word	-156
	.word	4
	.word	_Label_2695
	.word	-160
	.word	4
	.word	_Label_2696
	.word	-164
	.word	4
	.word	_Label_2697
	.word	-168
	.word	4
	.word	_Label_2698
	.word	-172
	.word	4
	.word	_Label_2699
	.word	-176
	.word	4
	.word	_Label_2700
	.word	-180
	.word	4
	.word	_Label_2701
	.word	-184
	.word	4
	.word	_Label_2702
	.word	-188
	.word	4
	.word	_Label_2703
	.word	-192
	.word	4
	.word	_Label_2704
	.word	-196
	.word	4
	.word	_Label_2705
	.word	-200
	.word	4
	.word	_Label_2706
	.word	-204
	.word	4
	.word	_Label_2707
	.word	-208
	.word	4
	.word	_Label_2708
	.word	-212
	.word	4
	.word	_Label_2709
	.word	-216
	.word	4
	.word	_Label_2710
	.word	-220
	.word	4
	.word	_Label_2711
	.word	-224
	.word	4
	.word	_Label_2712
	.word	-228
	.word	4
	.word	_Label_2713
	.word	-232
	.word	4
	.word	_Label_2714
	.word	-236
	.word	4
	.word	_Label_2715
	.word	-240
	.word	4
	.word	_Label_2716
	.word	-244
	.word	4
	.word	_Label_2717
	.word	-248
	.word	4
	.word	_Label_2718
	.word	-252
	.word	4
	.word	0
_Label_2655:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2656:
	.ascii	"Pself\0"
	.align
_Label_2657:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2717:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2718:
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
_Label_4492:
	push	r0
	sub	r1,1,r1
	bne	_Label_4492
	mov	999,r13		! source line 999
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0SE",r10
!   _temp_2719 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2720 = _temp_2719 + 1688
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
_Label_2721:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2725 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2724 = *_temp_2725  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2724 == 2 then goto _Label_2723		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2723
!	jmp	_Label_2722
_Label_2722:
	mov	1007,r13		! source line 1007
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0SE",r10
!   _temp_2727 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_2728 = _temp_2727 + 1688
	load	[r14+-68],r1
	add	r1,1688,r1
	store	r1,[r14+-64]
!   _temp_2726 = _temp_2728		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_2729 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_2730 = _temp_2729 + 1736
	load	[r14+-60],r1
	add	r1,1736,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_2726  sizeInBytes=4
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
	jmp	_Label_2721
_Label_2723:
! ASSIGNMENT STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2731 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: procExitStaus = *_temp_2731  (sizeInBytes=4)
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
!   _temp_2732 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2732 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_2733 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2734 = _temp_2733 + 1724
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
!   _temp_2736 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2737 = _temp_2736 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2735 = _temp_2737		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2738 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2739 = _temp_2738 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2735  sizeInBytes=4
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
!   _temp_2740 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2741 = _temp_2740 + 1688
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
	.word	_Label_2742
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_2743
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2744
	.word	12
	.word	4
	.word	_Label_2745
	.word	-12
	.word	4
	.word	_Label_2746
	.word	-16
	.word	4
	.word	_Label_2747
	.word	-20
	.word	4
	.word	_Label_2748
	.word	-24
	.word	4
	.word	_Label_2749
	.word	-28
	.word	4
	.word	_Label_2750
	.word	-32
	.word	4
	.word	_Label_2751
	.word	-36
	.word	4
	.word	_Label_2752
	.word	-40
	.word	4
	.word	_Label_2753
	.word	-44
	.word	4
	.word	_Label_2754
	.word	-48
	.word	4
	.word	_Label_2755
	.word	-52
	.word	4
	.word	_Label_2756
	.word	-56
	.word	4
	.word	_Label_2757
	.word	-60
	.word	4
	.word	_Label_2758
	.word	-64
	.word	4
	.word	_Label_2759
	.word	-68
	.word	4
	.word	_Label_2760
	.word	-72
	.word	4
	.word	_Label_2761
	.word	-76
	.word	4
	.word	_Label_2762
	.word	-80
	.word	4
	.word	_Label_2763
	.word	-84
	.word	4
	.word	_Label_2764
	.word	-88
	.word	4
	.word	_Label_2765
	.word	-92
	.word	4
	.word	0
_Label_2742:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2743:
	.ascii	"Pself\0"
	.align
_Label_2744:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2765:
	.byte	'I'
	.ascii	"procExitStaus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2766
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2766:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2767
	.word	_sourceFileName
	.word	258		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2767:
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
_Label_4493:
	push	r0
	sub	r1,1,r1
	bne	_Label_4493
	mov	1078,r13		! source line 1078
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2768 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2768  sizeInBytes=4
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
!   _temp_2770 = &framesInUse
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
!   _temp_2772 = &frameManagerLock
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
!   _temp_2774 = &newFramesAvailable
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
!   _temp_2779 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2780 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2779  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2775:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2780 then goto _Label_2778		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2778
_Label_2776:
	mov	1097,r13		! source line 1097
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2783 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2783) then goto _Label_2782
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2782
!	jmp	_Label_2781
_Label_2781:
! THEN...
	mov	1101,r13		! source line 1101
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2784 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2784  sizeInBytes=4
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
_Label_2782:
!   Increment the FOR-LOOP index variable and jump back
_Label_2777:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2775
! END FOR
_Label_2778:
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
	.word	_Label_2785
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2786
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2787
	.word	-12
	.word	4
	.word	_Label_2788
	.word	-16
	.word	4
	.word	_Label_2789
	.word	-20
	.word	4
	.word	_Label_2790
	.word	-24
	.word	4
	.word	_Label_2791
	.word	-28
	.word	4
	.word	_Label_2792
	.word	-32
	.word	4
	.word	_Label_2793
	.word	-36
	.word	4
	.word	_Label_2794
	.word	-40
	.word	4
	.word	_Label_2795
	.word	-44
	.word	4
	.word	_Label_2796
	.word	-48
	.word	4
	.word	_Label_2797
	.word	-52
	.word	4
	.word	_Label_2798
	.word	-56
	.word	4
	.word	0
_Label_2785:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2786:
	.ascii	"Pself\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2798:
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
_Label_4494:
	push	r0
	sub	r1,1,r1
	bne	_Label_4494
	mov	1108,r13		! source line 1108
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0SE",r10
!   _temp_2799 = &frameManagerLock
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
!   _temp_2800 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2800  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1113,r13		! source line 1113
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2801 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2801  sizeInBytes=4
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
!   _temp_2802 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2802  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1115,r13		! source line 1115
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1116,r13		! source line 1116
	mov	"\0\0SE",r10
!   _temp_2803 = &framesInUse
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
!   _temp_2804 = &frameManagerLock
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
	.word	_Label_2805
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2806
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2807
	.word	-12
	.word	4
	.word	_Label_2808
	.word	-16
	.word	4
	.word	_Label_2809
	.word	-20
	.word	4
	.word	_Label_2810
	.word	-24
	.word	4
	.word	_Label_2811
	.word	-28
	.word	4
	.word	_Label_2812
	.word	-32
	.word	4
	.word	0
_Label_2805:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2806:
	.ascii	"Pself\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2799\0"
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
_Label_4495:
	push	r0
	sub	r1,1,r1
	bne	_Label_4495
	mov	1122,r13		! source line 1122
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0SE",r10
!   _temp_2813 = &frameManagerLock
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
_Label_2814:
!   if numberFreeFrames >= 1 then goto _Label_2816		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2816
!	jmp	_Label_2815
_Label_2815:
	mov	1133,r13		! source line 1133
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
!   _temp_2817 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2818 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2817  sizeInBytes=4
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
	jmp	_Label_2814
_Label_2816:
! ASSIGNMENT STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0AS",r10
	mov	1138,r13		! source line 1138
	mov	"\0\0SE",r10
!   _temp_2819 = &framesInUse
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
!   _temp_2820 = &frameManagerLock
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
!   _temp_2821 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2821		(int)
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
	.word	_Label_2822
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2823
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2824
	.word	-12
	.word	4
	.word	_Label_2825
	.word	-16
	.word	4
	.word	_Label_2826
	.word	-20
	.word	4
	.word	_Label_2827
	.word	-24
	.word	4
	.word	_Label_2828
	.word	-28
	.word	4
	.word	_Label_2829
	.word	-32
	.word	4
	.word	_Label_2830
	.word	-36
	.word	4
	.word	_Label_2831
	.word	-40
	.word	4
	.word	0
_Label_2822:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2823:
	.ascii	"Pself\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2830:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2831:
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
_Label_4496:
	push	r0
	sub	r1,1,r1
	bne	_Label_4496
	mov	1152,r13		! source line 1152
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_2832 = &frameManagerLock
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
_Label_2833:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2835		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2835
!	jmp	_Label_2834
_Label_2834:
	mov	1159,r13		! source line 1159
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0SE",r10
!   _temp_2836 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2837 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2836  sizeInBytes=4
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
	jmp	_Label_2833
_Label_2835:
! FOR STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2842 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2843 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2842  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_2838:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2843 then goto _Label_2841		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2841
_Label_2839:
	mov	1162,r13		! source line 1162
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0AS",r10
	mov	1163,r13		! source line 1163
	mov	"\0\0SE",r10
!   _temp_2844 = &framesInUse
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
!   _temp_2845 = f * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2845		(int)
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
_Label_2840:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2838
! END FOR
_Label_2841:
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
!   _temp_2846 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2846 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0SE",r10
!   _temp_2847 = &frameManagerLock
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
	.word	_Label_2848
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2849
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2850
	.word	12
	.word	4
	.word	_Label_2851
	.word	16
	.word	4
	.word	_Label_2852
	.word	-12
	.word	4
	.word	_Label_2853
	.word	-16
	.word	4
	.word	_Label_2854
	.word	-20
	.word	4
	.word	_Label_2855
	.word	-24
	.word	4
	.word	_Label_2856
	.word	-28
	.word	4
	.word	_Label_2857
	.word	-32
	.word	4
	.word	_Label_2858
	.word	-36
	.word	4
	.word	_Label_2859
	.word	-40
	.word	4
	.word	_Label_2860
	.word	-44
	.word	4
	.word	_Label_2861
	.word	-48
	.word	4
	.word	_Label_2862
	.word	-52
	.word	4
	.word	_Label_2863
	.word	-56
	.word	4
	.word	0
_Label_2848:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2849:
	.ascii	"Pself\0"
	.align
_Label_2850:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2851:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2861:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2862:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2863:
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
_Label_4497:
	push	r0
	sub	r1,1,r1
	bne	_Label_4497
	mov	1174,r13		! source line 1174
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0SE",r10
!   _temp_2864 = &frameManagerLock
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
!   _temp_2869 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2872 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2871 = *_temp_2872  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2870 = _temp_2871 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2869  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2865:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2870 then goto _Label_2868		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2868
_Label_2866:
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
!   _temp_2873 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_2873 div 8192		(int)
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
!   _temp_2874 = &framesInUse
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
_Label_2867:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2865
! END FOR
_Label_2868:
! ASSIGNMENT STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2876 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2875 = *_temp_2876  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2875		(int)
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
!   _temp_2877 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2878 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2877  sizeInBytes=4
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
!   _temp_2879 = &frameManagerLock
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
	.word	_Label_2880
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2881
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2882
	.word	12
	.word	4
	.word	_Label_2883
	.word	-12
	.word	4
	.word	_Label_2884
	.word	-16
	.word	4
	.word	_Label_2885
	.word	-20
	.word	4
	.word	_Label_2886
	.word	-24
	.word	4
	.word	_Label_2887
	.word	-28
	.word	4
	.word	_Label_2888
	.word	-32
	.word	4
	.word	_Label_2889
	.word	-36
	.word	4
	.word	_Label_2890
	.word	-40
	.word	4
	.word	_Label_2891
	.word	-44
	.word	4
	.word	_Label_2892
	.word	-48
	.word	4
	.word	_Label_2893
	.word	-52
	.word	4
	.word	_Label_2894
	.word	-56
	.word	4
	.word	_Label_2895
	.word	-60
	.word	4
	.word	_Label_2896
	.word	-64
	.word	4
	.word	_Label_2897
	.word	-68
	.word	4
	.word	0
_Label_2880:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2881:
	.ascii	"Pself\0"
	.align
_Label_2882:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2895:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2896:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2897:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2898
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
_Label_2898:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2899
	.word	_sourceFileName
	.word	277		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2899:
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
_Label_4498:
	push	r0
	sub	r1,1,r1
	bne	_Label_4498
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
!   _temp_2900 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2902 = &_temp_2901
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2902 = _temp_2902 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2904:
!   Data Move: *_temp_2902 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2902 = _temp_2902 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2903 = _temp_2903 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2903) then goto _Label_2904
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2904
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2905 = &_temp_2901
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4499
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4499:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2900 = *_temp_2905  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4500:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4500
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
	.word	_Label_2906
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2907
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2908
	.word	-12
	.word	4
	.word	_Label_2909
	.word	-16
	.word	4
	.word	_Label_2910
	.word	-20
	.word	4
	.word	_Label_2911
	.word	-104
	.word	84
	.word	_Label_2912
	.word	-108
	.word	4
	.word	0
_Label_2906:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2907:
	.ascii	"Pself\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2900\0"
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
_Label_4501:
	push	r0
	sub	r1,1,r1
	bne	_Label_4501
	mov	1209,r13		! source line 1209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2913 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2913  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1214,r13		! source line 1214
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2914 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2914  sizeInBytes=4
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
!   _temp_2919 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2920 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2919  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2915:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2920 then goto _Label_2918		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2918
_Label_2916:
	mov	1216,r13		! source line 1216
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2921 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2921  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1217,r13		! source line 1217
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2923 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2923 [i ] into _temp_2924
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
!   _temp_2922 = _temp_2924		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2922  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2925 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2925  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2927 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2927 [i ] into _temp_2928
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
!   Data Move: _temp_2926 = *_temp_2928  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2926  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1220,r13		! source line 1220
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2929 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2929  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1221,r13		! source line 1221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2930 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2930  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2931 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2931  sizeInBytes=4
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
!   if intIsZero (_temp_2933) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2932  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2932  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2934 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2934  sizeInBytes=4
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
!   if intIsZero (_temp_2938) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2937  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2937) then goto _Label_2936
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2936
!	jmp	_Label_2935
_Label_2935:
! THEN...
	mov	1227,r13		! source line 1227
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1227,r13		! source line 1227
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2940) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2939  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2939  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2941
_Label_2936:
! ELSE...
	mov	1229,r13		! source line 1229
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2942 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2942  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2941:
! CALL STATEMENT...
!   _temp_2943 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2943  sizeInBytes=4
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
!   if intIsZero (_temp_2946) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2944 else goto _Label_2945
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2945
	jmp	_Label_2944
_Label_2944:
! THEN...
	mov	1233,r13		! source line 1233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2947 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2947  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2948
_Label_2945:
! ELSE...
	mov	1235,r13		! source line 1235
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2949 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2949  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2948:
! CALL STATEMENT...
!   _temp_2950 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2950  sizeInBytes=4
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
!   if intIsZero (_temp_2953) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2951 else goto _Label_2952
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2952
	jmp	_Label_2951
_Label_2951:
! THEN...
	mov	1239,r13		! source line 1239
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2954 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2954  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2955
_Label_2952:
! ELSE...
	mov	1241,r13		! source line 1241
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2956 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2956  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2955:
! CALL STATEMENT...
!   _temp_2957 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2957  sizeInBytes=4
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
!   if intIsZero (_temp_2960) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2958 else goto _Label_2959
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2959
	jmp	_Label_2958
_Label_2958:
! THEN...
	mov	1245,r13		! source line 1245
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2961 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2961  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2962
_Label_2959:
! ELSE...
	mov	1247,r13		! source line 1247
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2963 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2963  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2962:
! CALL STATEMENT...
!   _temp_2964 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2964  sizeInBytes=4
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
!   if intIsZero (_temp_2967) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2965 else goto _Label_2966
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2966
	jmp	_Label_2965
_Label_2965:
! THEN...
	mov	1251,r13		! source line 1251
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2968 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2968  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2969
_Label_2966:
! ELSE...
	mov	1253,r13		! source line 1253
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2970 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2970  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2969:
! CALL STATEMENT...
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2917:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2915
! END FOR
_Label_2918:
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
	.word	_Label_2971
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2972
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2973
	.word	-12
	.word	4
	.word	_Label_2974
	.word	-16
	.word	4
	.word	_Label_2975
	.word	-20
	.word	4
	.word	_Label_2976
	.word	-24
	.word	4
	.word	_Label_2977
	.word	-28
	.word	4
	.word	_Label_2978
	.word	-32
	.word	4
	.word	_Label_2979
	.word	-36
	.word	4
	.word	_Label_2980
	.word	-40
	.word	4
	.word	_Label_2981
	.word	-44
	.word	4
	.word	_Label_2982
	.word	-48
	.word	4
	.word	_Label_2983
	.word	-52
	.word	4
	.word	_Label_2984
	.word	-56
	.word	4
	.word	_Label_2985
	.word	-60
	.word	4
	.word	_Label_2986
	.word	-64
	.word	4
	.word	_Label_2987
	.word	-68
	.word	4
	.word	_Label_2988
	.word	-72
	.word	4
	.word	_Label_2989
	.word	-76
	.word	4
	.word	_Label_2990
	.word	-80
	.word	4
	.word	_Label_2991
	.word	-84
	.word	4
	.word	_Label_2992
	.word	-88
	.word	4
	.word	_Label_2993
	.word	-92
	.word	4
	.word	_Label_2994
	.word	-96
	.word	4
	.word	_Label_2995
	.word	-100
	.word	4
	.word	_Label_2996
	.word	-104
	.word	4
	.word	_Label_2997
	.word	-108
	.word	4
	.word	_Label_2998
	.word	-112
	.word	4
	.word	_Label_2999
	.word	-116
	.word	4
	.word	_Label_3000
	.word	-120
	.word	4
	.word	_Label_3001
	.word	-124
	.word	4
	.word	_Label_3002
	.word	-128
	.word	4
	.word	_Label_3003
	.word	-132
	.word	4
	.word	_Label_3004
	.word	-136
	.word	4
	.word	_Label_3005
	.word	-140
	.word	4
	.word	_Label_3006
	.word	-144
	.word	4
	.word	_Label_3007
	.word	-148
	.word	4
	.word	_Label_3008
	.word	-152
	.word	4
	.word	_Label_3009
	.word	-156
	.word	4
	.word	_Label_3010
	.word	-160
	.word	4
	.word	_Label_3011
	.word	-164
	.word	4
	.word	_Label_3012
	.word	-168
	.word	4
	.word	0
_Label_2971:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2972:
	.ascii	"Pself\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_3012:
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
_Label_4502:
	push	r0
	sub	r1,1,r1
	bne	_Label_4502
	mov	1261,r13		! source line 1261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0RE",r10
!   _temp_3015 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3015 [entry ] into _temp_3016
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
!   Data Move: _temp_3014 = *_temp_3016  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3013 = _temp_3014 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3013  (sizeInBytes=4)
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
	.word	_Label_3017
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3018
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3019
	.word	12
	.word	4
	.word	_Label_3020
	.word	-12
	.word	4
	.word	_Label_3021
	.word	-16
	.word	4
	.word	_Label_3022
	.word	-20
	.word	4
	.word	_Label_3023
	.word	-24
	.word	4
	.word	0
_Label_3017:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_3018:
	.ascii	"Pself\0"
	.align
_Label_3019:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_3013\0"
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
_Label_4503:
	push	r0
	sub	r1,1,r1
	bne	_Label_4503
	mov	1271,r13		! source line 1271
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0RE",r10
!   _temp_3026 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3026 [entry ] into _temp_3027
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
!   Data Move: _temp_3025 = *_temp_3027  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3024 = _temp_3025 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3024  (sizeInBytes=4)
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
	.word	_Label_3028
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3029
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3030
	.word	12
	.word	4
	.word	_Label_3031
	.word	-12
	.word	4
	.word	_Label_3032
	.word	-16
	.word	4
	.word	_Label_3033
	.word	-20
	.word	4
	.word	_Label_3034
	.word	-24
	.word	4
	.word	0
_Label_3028:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_3029:
	.ascii	"Pself\0"
	.align
_Label_3030:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3024\0"
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
_Label_4504:
	push	r0
	sub	r1,1,r1
	bne	_Label_4504
	mov	1280,r13		! source line 1280
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0AS",r10
!   _temp_3035 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_3035 [entry ] into _temp_3036
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
!   _temp_3040 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3040 [entry ] into _temp_3041
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
!   Data Move: _temp_3039 = *_temp_3041  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3038 = _temp_3039 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_3037 = _temp_3038 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3036 = _temp_3037  (sizeInBytes=4)
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
	.word	_Label_3042
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3043
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3044
	.word	12
	.word	4
	.word	_Label_3045
	.word	16
	.word	4
	.word	_Label_3046
	.word	-12
	.word	4
	.word	_Label_3047
	.word	-16
	.word	4
	.word	_Label_3048
	.word	-20
	.word	4
	.word	_Label_3049
	.word	-24
	.word	4
	.word	_Label_3050
	.word	-28
	.word	4
	.word	_Label_3051
	.word	-32
	.word	4
	.word	_Label_3052
	.word	-36
	.word	4
	.word	0
_Label_3042:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_3043:
	.ascii	"Pself\0"
	.align
_Label_3044:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3045:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3035\0"
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
_Label_4505:
	push	r0
	sub	r1,1,r1
	bne	_Label_4505
	mov	1290,r13		! source line 1290
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0RE",r10
!   _temp_3056 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3056 [entry ] into _temp_3057
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
!   Data Move: _temp_3055 = *_temp_3057  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3054 = _temp_3055 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3054) then goto _Label_3058
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3058
!   _temp_3053 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3059
_Label_3058:
!   _temp_3053 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3059:
!   ReturnResult: _temp_3053  (sizeInBytes=1)
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
	.word	_Label_3060
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3061
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3062
	.word	12
	.word	4
	.word	_Label_3063
	.word	-16
	.word	4
	.word	_Label_3064
	.word	-20
	.word	4
	.word	_Label_3065
	.word	-24
	.word	4
	.word	_Label_3066
	.word	-28
	.word	4
	.word	_Label_3067
	.word	-9
	.word	1
	.word	0
_Label_3060:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_3061:
	.ascii	"Pself\0"
	.align
_Label_3062:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3067:
	.byte	'C'
	.ascii	"_temp_3053\0"
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
_Label_4506:
	push	r0
	sub	r1,1,r1
	bne	_Label_4506
	mov	1299,r13		! source line 1299
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0RE",r10
!   _temp_3071 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3071 [entry ] into _temp_3072
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
!   Data Move: _temp_3070 = *_temp_3072  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3069 = _temp_3070 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3069) then goto _Label_3073
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3073
!   _temp_3068 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3074
_Label_3073:
!   _temp_3068 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3074:
!   ReturnResult: _temp_3068  (sizeInBytes=1)
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
	.word	_Label_3075
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3076
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3077
	.word	12
	.word	4
	.word	_Label_3078
	.word	-16
	.word	4
	.word	_Label_3079
	.word	-20
	.word	4
	.word	_Label_3080
	.word	-24
	.word	4
	.word	_Label_3081
	.word	-28
	.word	4
	.word	_Label_3082
	.word	-9
	.word	1
	.word	0
_Label_3075:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_3076:
	.ascii	"Pself\0"
	.align
_Label_3077:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3082:
	.byte	'C'
	.ascii	"_temp_3068\0"
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
_Label_4507:
	push	r0
	sub	r1,1,r1
	bne	_Label_4507
	mov	1308,r13		! source line 1308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0RE",r10
!   _temp_3086 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3086 [entry ] into _temp_3087
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
!   Data Move: _temp_3085 = *_temp_3087  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3084 = _temp_3085 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3084) then goto _Label_3088
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3088
!   _temp_3083 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3089
_Label_3088:
!   _temp_3083 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3089:
!   ReturnResult: _temp_3083  (sizeInBytes=1)
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
	.word	_Label_3090
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3091
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3092
	.word	12
	.word	4
	.word	_Label_3093
	.word	-16
	.word	4
	.word	_Label_3094
	.word	-20
	.word	4
	.word	_Label_3095
	.word	-24
	.word	4
	.word	_Label_3096
	.word	-28
	.word	4
	.word	_Label_3097
	.word	-9
	.word	1
	.word	0
_Label_3090:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_3091:
	.ascii	"Pself\0"
	.align
_Label_3092:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3097:
	.byte	'C'
	.ascii	"_temp_3083\0"
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
_Label_4508:
	push	r0
	sub	r1,1,r1
	bne	_Label_4508
	mov	1317,r13		! source line 1317
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1321,r13		! source line 1321
	mov	"\0\0RE",r10
!   _temp_3101 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3101 [entry ] into _temp_3102
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
!   Data Move: _temp_3100 = *_temp_3102  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3099 = _temp_3100 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3099) then goto _Label_3103
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3103
!   _temp_3098 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3104
_Label_3103:
!   _temp_3098 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3104:
!   ReturnResult: _temp_3098  (sizeInBytes=1)
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
	.word	_Label_3105
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3106
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3107
	.word	12
	.word	4
	.word	_Label_3108
	.word	-16
	.word	4
	.word	_Label_3109
	.word	-20
	.word	4
	.word	_Label_3110
	.word	-24
	.word	4
	.word	_Label_3111
	.word	-28
	.word	4
	.word	_Label_3112
	.word	-9
	.word	1
	.word	0
_Label_3105:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_3106:
	.ascii	"Pself\0"
	.align
_Label_3107:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3112:
	.byte	'C'
	.ascii	"_temp_3098\0"
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
_Label_4509:
	push	r0
	sub	r1,1,r1
	bne	_Label_4509
	mov	1326,r13		! source line 1326
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0AS",r10
!   _temp_3113 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3113 [entry ] into _temp_3114
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
!   _temp_3117 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3117 [entry ] into _temp_3118
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
!   Data Move: _temp_3116 = *_temp_3118  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3115 = _temp_3116 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3114 = _temp_3115  (sizeInBytes=4)
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
	.word	_Label_3119
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3120
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3121
	.word	12
	.word	4
	.word	_Label_3122
	.word	-12
	.word	4
	.word	_Label_3123
	.word	-16
	.word	4
	.word	_Label_3124
	.word	-20
	.word	4
	.word	_Label_3125
	.word	-24
	.word	4
	.word	_Label_3126
	.word	-28
	.word	4
	.word	_Label_3127
	.word	-32
	.word	4
	.word	0
_Label_3119:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_3120:
	.ascii	"Pself\0"
	.align
_Label_3121:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3123:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3113\0"
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
_Label_4510:
	push	r0
	sub	r1,1,r1
	bne	_Label_4510
	mov	1335,r13		! source line 1335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0AS",r10
!   _temp_3128 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3128 [entry ] into _temp_3129
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
!   _temp_3132 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3132 [entry ] into _temp_3133
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
!   Data Move: _temp_3131 = *_temp_3133  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3130 = _temp_3131 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3129 = _temp_3130  (sizeInBytes=4)
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
	.word	_Label_3134
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3135
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3136
	.word	12
	.word	4
	.word	_Label_3137
	.word	-12
	.word	4
	.word	_Label_3138
	.word	-16
	.word	4
	.word	_Label_3139
	.word	-20
	.word	4
	.word	_Label_3140
	.word	-24
	.word	4
	.word	_Label_3141
	.word	-28
	.word	4
	.word	_Label_3142
	.word	-32
	.word	4
	.word	0
_Label_3134:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_3135:
	.ascii	"Pself\0"
	.align
_Label_3136:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3131\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3128\0"
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
_Label_4511:
	push	r0
	sub	r1,1,r1
	bne	_Label_4511
	mov	1344,r13		! source line 1344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1348,r13		! source line 1348
	mov	"\0\0AS",r10
!   _temp_3143 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3143 [entry ] into _temp_3144
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
!   _temp_3147 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3147 [entry ] into _temp_3148
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
!   Data Move: _temp_3146 = *_temp_3148  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3145 = _temp_3146 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3144 = _temp_3145  (sizeInBytes=4)
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
	.word	_Label_3149
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3150
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3151
	.word	12
	.word	4
	.word	_Label_3152
	.word	-12
	.word	4
	.word	_Label_3153
	.word	-16
	.word	4
	.word	_Label_3154
	.word	-20
	.word	4
	.word	_Label_3155
	.word	-24
	.word	4
	.word	_Label_3156
	.word	-28
	.word	4
	.word	_Label_3157
	.word	-32
	.word	4
	.word	0
_Label_3149:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_3150:
	.ascii	"Pself\0"
	.align
_Label_3151:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3148\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3147\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3146\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3143\0"
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
_Label_4512:
	push	r0
	sub	r1,1,r1
	bne	_Label_4512
	mov	1353,r13		! source line 1353
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0AS",r10
!   _temp_3158 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3158 [entry ] into _temp_3159
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
!   _temp_3162 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3162 [entry ] into _temp_3163
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
!   Data Move: _temp_3161 = *_temp_3163  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3160 = _temp_3161 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3159 = _temp_3160  (sizeInBytes=4)
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
	.word	_Label_3164
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3165
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3166
	.word	12
	.word	4
	.word	_Label_3167
	.word	-12
	.word	4
	.word	_Label_3168
	.word	-16
	.word	4
	.word	_Label_3169
	.word	-20
	.word	4
	.word	_Label_3170
	.word	-24
	.word	4
	.word	_Label_3171
	.word	-28
	.word	4
	.word	_Label_3172
	.word	-32
	.word	4
	.word	0
_Label_3164:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_3165:
	.ascii	"Pself\0"
	.align
_Label_3166:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3163\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3162\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3158\0"
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
_Label_4513:
	push	r0
	sub	r1,1,r1
	bne	_Label_4513
	mov	1362,r13		! source line 1362
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0AS",r10
!   _temp_3173 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3173 [entry ] into _temp_3174
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
!   _temp_3177 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3177 [entry ] into _temp_3178
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
!   Data Move: _temp_3176 = *_temp_3178  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3175 = _temp_3176 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3174 = _temp_3175  (sizeInBytes=4)
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
	.word	_Label_3179
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3180
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3181
	.word	12
	.word	4
	.word	_Label_3182
	.word	-12
	.word	4
	.word	_Label_3183
	.word	-16
	.word	4
	.word	_Label_3184
	.word	-20
	.word	4
	.word	_Label_3185
	.word	-24
	.word	4
	.word	_Label_3186
	.word	-28
	.word	4
	.word	_Label_3187
	.word	-32
	.word	4
	.word	0
_Label_3179:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_3180:
	.ascii	"Pself\0"
	.align
_Label_3181:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3184:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3185:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3186:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3187:
	.byte	'?'
	.ascii	"_temp_3173\0"
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
_Label_4514:
	push	r0
	sub	r1,1,r1
	bne	_Label_4514
	mov	1371,r13		! source line 1371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0AS",r10
!   _temp_3188 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3188 [entry ] into _temp_3189
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
!   _temp_3192 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3192 [entry ] into _temp_3193
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
!   Data Move: _temp_3191 = *_temp_3193  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3190 = _temp_3191 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3189 = _temp_3190  (sizeInBytes=4)
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
	.word	_Label_3194
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3195
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3196
	.word	12
	.word	4
	.word	_Label_3197
	.word	-12
	.word	4
	.word	_Label_3198
	.word	-16
	.word	4
	.word	_Label_3199
	.word	-20
	.word	4
	.word	_Label_3200
	.word	-24
	.word	4
	.word	_Label_3201
	.word	-28
	.word	4
	.word	_Label_3202
	.word	-32
	.word	4
	.word	0
_Label_3194:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_3195:
	.ascii	"Pself\0"
	.align
_Label_3196:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3192\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3200:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3201:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3202:
	.byte	'?'
	.ascii	"_temp_3188\0"
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
_Label_4515:
	push	r0
	sub	r1,1,r1
	bne	_Label_4515
	mov	1380,r13		! source line 1380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0AS",r10
!   _temp_3203 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3203 [entry ] into _temp_3204
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
!   _temp_3207 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3207 [entry ] into _temp_3208
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
!   Data Move: _temp_3206 = *_temp_3208  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3205 = _temp_3206 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3204 = _temp_3205  (sizeInBytes=4)
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
	.word	_Label_3209
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3210
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3211
	.word	12
	.word	4
	.word	_Label_3212
	.word	-12
	.word	4
	.word	_Label_3213
	.word	-16
	.word	4
	.word	_Label_3214
	.word	-20
	.word	4
	.word	_Label_3215
	.word	-24
	.word	4
	.word	_Label_3216
	.word	-28
	.word	4
	.word	_Label_3217
	.word	-32
	.word	4
	.word	0
_Label_3209:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_3210:
	.ascii	"Pself\0"
	.align
_Label_3211:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3212:
	.byte	'?'
	.ascii	"_temp_3208\0"
	.align
_Label_3213:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3214:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3215:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3216:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3217:
	.byte	'?'
	.ascii	"_temp_3203\0"
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
_Label_4516:
	push	r0
	sub	r1,1,r1
	bne	_Label_4516
	mov	1389,r13		! source line 1389
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0AS",r10
!   _temp_3218 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3218 [entry ] into _temp_3219
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
!   _temp_3222 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3222 [entry ] into _temp_3223
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
!   Data Move: _temp_3221 = *_temp_3223  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3220 = _temp_3221 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3219 = _temp_3220  (sizeInBytes=4)
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
	.word	_Label_3224
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3225
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3226
	.word	12
	.word	4
	.word	_Label_3227
	.word	-12
	.word	4
	.word	_Label_3228
	.word	-16
	.word	4
	.word	_Label_3229
	.word	-20
	.word	4
	.word	_Label_3230
	.word	-24
	.word	4
	.word	_Label_3231
	.word	-28
	.word	4
	.word	_Label_3232
	.word	-32
	.word	4
	.word	0
_Label_3224:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_3225:
	.ascii	"Pself\0"
	.align
_Label_3226:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3232:
	.byte	'?'
	.ascii	"_temp_3218\0"
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
_Label_4517:
	push	r0
	sub	r1,1,r1
	bne	_Label_4517
	mov	1398,r13		! source line 1398
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3234 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3234 [0 ] into _temp_3235
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
!   _temp_3233 = _temp_3235		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_3236 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3233  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3236  sizeInBytes=4
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
	.word	_Label_3237
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3238
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3239
	.word	-12
	.word	4
	.word	_Label_3240
	.word	-16
	.word	4
	.word	_Label_3241
	.word	-20
	.word	4
	.word	_Label_3242
	.word	-24
	.word	4
	.word	0
_Label_3237:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_3238:
	.ascii	"Pself\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3233\0"
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
_Label_4518:
	push	r0
	sub	r1,1,r1
	bne	_Label_4518
	mov	1409,r13		! source line 1409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3243
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3243
	jmp	_Label_3244
_Label_3243:
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
	jmp	_Label_3245
_Label_3244:
! ELSE...
	mov	1426,r13		! source line 1426
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3247		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3247
!	jmp	_Label_3246
_Label_3246:
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
_Label_3247:
! END IF...
_Label_3245:
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
_Label_3248:
!	jmp	_Label_3249
_Label_3249:
	mov	1433,r13		! source line 1433
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3252		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3252
!	jmp	_Label_3251
_Label_3251:
! THEN...
	mov	1435,r13		! source line 1435
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3253 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3253  sizeInBytes=4
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
_Label_3252:
! IF STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0IF",r10
	mov	1438,r13		! source line 1438
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3257) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3256  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3256 then goto _Label_3255 else goto _Label_3254
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3254
	jmp	_Label_3255
_Label_3254:
! THEN...
	mov	1439,r13		! source line 1439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3258 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3258  sizeInBytes=4
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
_Label_3255:
! ASSIGNMENT STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0AS",r10
	mov	1442,r13		! source line 1442
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3260) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3259  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_3259 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0WH",r10
_Label_3261:
!   if offset >= 8192 then goto _Label_3263		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3263
!	jmp	_Label_3262
_Label_3262:
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
!   Data Move: _temp_3264 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_3264  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3266		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3266
!	jmp	_Label_3265
_Label_3265:
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
_Label_3266:
! END WHILE...
	jmp	_Label_3261
_Label_3263:
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
	jmp	_Label_3248
_Label_3250:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_3267
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_3268
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3269
	.word	12
	.word	4
	.word	_Label_3270
	.word	16
	.word	4
	.word	_Label_3271
	.word	20
	.word	4
	.word	_Label_3272
	.word	-9
	.word	1
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
	.word	-10
	.word	1
	.word	_Label_3278
	.word	-32
	.word	4
	.word	_Label_3279
	.word	-36
	.word	4
	.word	_Label_3280
	.word	-40
	.word	4
	.word	_Label_3281
	.word	-44
	.word	4
	.word	_Label_3282
	.word	-48
	.word	4
	.word	0
_Label_3267:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_3268:
	.ascii	"Pself\0"
	.align
_Label_3269:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3270:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3271:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3272:
	.byte	'C'
	.ascii	"_temp_3264\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3260\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3259\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3258\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3277:
	.byte	'C'
	.ascii	"_temp_3256\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3253\0"
	.align
_Label_3279:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3280:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3281:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3282:
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
_Label_4519:
	push	r0
	sub	r1,1,r1
	bne	_Label_4519
	mov	1463,r13		! source line 1463
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3283
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3283
	jmp	_Label_3284
_Label_3283:
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
	jmp	_Label_3285
_Label_3284:
! ELSE...
	mov	1476,r13		! source line 1476
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3287		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3287
!	jmp	_Label_3286
_Label_3286:
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
_Label_3287:
! END IF...
_Label_3285:
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
_Label_3288:
!	jmp	_Label_3289
_Label_3289:
	mov	1481,r13		! source line 1481
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3294		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3294
	jmp	_Label_3291
_Label_3294:
	mov	1483,r13		! source line 1483
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3296) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3295  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_3295 then goto _Label_3293 else goto _Label_3291
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_3291
	jmp	_Label_3293
_Label_3293:
	mov	1484,r13		! source line 1484
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3298) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3297  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3297 then goto _Label_3292 else goto _Label_3291
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3291
	jmp	_Label_3292
_Label_3291:
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
_Label_3292:
! ASSIGNMENT STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0AS",r10
	mov	1487,r13		! source line 1487
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3300) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3299  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_3299 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0WH",r10
_Label_3301:
!   if offset >= 8192 then goto _Label_3303		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3303
!	jmp	_Label_3302
_Label_3302:
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
!   Data Move: _temp_3304 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_3304  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3306		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3306
!	jmp	_Label_3305
_Label_3305:
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
_Label_3306:
! END WHILE...
	jmp	_Label_3301
_Label_3303:
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
	jmp	_Label_3288
_Label_3290:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_3307
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3308
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3309
	.word	12
	.word	4
	.word	_Label_3310
	.word	16
	.word	4
	.word	_Label_3311
	.word	20
	.word	4
	.word	_Label_3312
	.word	-9
	.word	1
	.word	_Label_3313
	.word	-16
	.word	4
	.word	_Label_3314
	.word	-20
	.word	4
	.word	_Label_3315
	.word	-24
	.word	4
	.word	_Label_3316
	.word	-10
	.word	1
	.word	_Label_3317
	.word	-28
	.word	4
	.word	_Label_3318
	.word	-11
	.word	1
	.word	_Label_3319
	.word	-32
	.word	4
	.word	_Label_3320
	.word	-36
	.word	4
	.word	_Label_3321
	.word	-40
	.word	4
	.word	_Label_3322
	.word	-44
	.word	4
	.word	0
_Label_3307:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_3308:
	.ascii	"Pself\0"
	.align
_Label_3309:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3310:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3311:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3312:
	.byte	'C'
	.ascii	"_temp_3304\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3299\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3298\0"
	.align
_Label_3316:
	.byte	'C'
	.ascii	"_temp_3297\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3318:
	.byte	'C'
	.ascii	"_temp_3295\0"
	.align
_Label_3319:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3320:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3321:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3322:
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
_Label_4520:
	push	r0
	sub	r1,1,r1
	bne	_Label_4520
	mov	1505,r13		! source line 1505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0IF",r10
	mov	1529,r13		! source line 1529
	mov	"\0\0SE",r10
!   _temp_3326 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3327) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3326  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3325  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_3325 >= 4 then goto _Label_3324		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3324
!	jmp	_Label_3323
_Label_3323:
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
_Label_3324:
! IF STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3329		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3329
!	jmp	_Label_3328
_Label_3328:
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
_Label_3329:
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
!   _temp_3332 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3331 = _temp_3332 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3333 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3334) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3331  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3333  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3330  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3330  (sizeInBytes=4)
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
	.word	_Label_3335
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3336
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3337
	.word	12
	.word	4
	.word	_Label_3338
	.word	16
	.word	4
	.word	_Label_3339
	.word	20
	.word	4
	.word	_Label_3340
	.word	-12
	.word	4
	.word	_Label_3341
	.word	-16
	.word	4
	.word	_Label_3342
	.word	-20
	.word	4
	.word	_Label_3343
	.word	-24
	.word	4
	.word	_Label_3344
	.word	-28
	.word	4
	.word	_Label_3345
	.word	-32
	.word	4
	.word	_Label_3346
	.word	-36
	.word	4
	.word	_Label_3347
	.word	-40
	.word	4
	.word	_Label_3348
	.word	-44
	.word	4
	.word	0
_Label_3335:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3336:
	.ascii	"Pself\0"
	.align
_Label_3337:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3338:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3339:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3334\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3333\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3332\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3331\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3330\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3327\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3326\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3325\0"
	.align
_Label_3348:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3349
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3349:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3350
	.word	_sourceFileName
	.word	311		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3350:
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
_Label_4521:
	push	r0
	sub	r1,1,r1
	bne	_Label_4521
	mov	2361,r13		! source line 2361
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3351 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3351  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2362,r13		! source line 2362
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2369,r13		! source line 2369
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
	mov	2370,r13		! source line 2370
	mov	"\0\0SE",r10
!   _temp_3353 = &semUsedInSynchMethods
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
	mov	2371,r13		! source line 2371
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
	mov	2372,r13		! source line 2372
	mov	"\0\0SE",r10
!   _temp_3355 = &diskBusy
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
	mov	2372,r13		! source line 2372
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
	.word	_Label_3356
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3357
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3358
	.word	-12
	.word	4
	.word	_Label_3359
	.word	-16
	.word	4
	.word	_Label_3360
	.word	-20
	.word	4
	.word	_Label_3361
	.word	-24
	.word	4
	.word	_Label_3362
	.word	-28
	.word	4
	.word	0
_Label_3356:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3357:
	.ascii	"Pself\0"
	.align
_Label_3358:
	.byte	'?'
	.ascii	"_temp_3355\0"
	.align
_Label_3359:
	.byte	'?'
	.ascii	"_temp_3354\0"
	.align
_Label_3360:
	.byte	'?'
	.ascii	"_temp_3353\0"
	.align
_Label_3361:
	.byte	'?'
	.ascii	"_temp_3352\0"
	.align
_Label_3362:
	.byte	'?'
	.ascii	"_temp_3351\0"
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
_Label_4522:
	push	r0
	sub	r1,1,r1
	bne	_Label_4522
	mov	2377,r13		! source line 2377
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0SE",r10
!   _temp_3363 = &diskBusy
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
	mov	2391,r13		! source line 2391
	mov	"\0\0WH",r10
_Label_3364:
!	jmp	_Label_3365
_Label_3365:
	mov	2391,r13		! source line 2391
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0SE",r10
!   _temp_3367 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3368) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3367  sizeInBytes=4
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
	mov	2395,r13		! source line 2395
	mov	"\0\0SE",r10
!   _temp_3369 = &semUsedInSynchMethods
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
	mov	2398,r13		! source line 2398
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3378 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3372
	cmp	r1,2
	be	_Label_3373
	cmp	r1,3
	be	_Label_3374
	cmp	r1,4
	be	_Label_3375
	cmp	r1,5
	be	_Label_3376
	cmp	r1,6
	be	_Label_3377
	jmp	_Label_3370
! CASE 1...
_Label_3372:
! SEND STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0SE",r10
!   _temp_3379 = &diskBusy
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
	mov	2401,r13		! source line 2401
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3373:
! CALL STATEMENT...
!   _temp_3380 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3380  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2403,r13		! source line 2403
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3374:
! CALL STATEMENT...
!   _temp_3381 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3381  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2405,r13		! source line 2405
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3375:
! CALL STATEMENT...
!   _temp_3382 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3382  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2407,r13		! source line 2407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3376:
! BREAK STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0BR",r10
	jmp	_Label_3371
! CASE 6...
_Label_3377:
! CALL STATEMENT...
!   _temp_3383 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3383  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2413,r13		! source line 2413
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3370:
! CALL STATEMENT...
!   _temp_3384 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3384  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2415,r13		! source line 2415
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3371:
! END WHILE...
	jmp	_Label_3364
_Label_3366:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3385
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3386
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3387
	.word	12
	.word	4
	.word	_Label_3388
	.word	16
	.word	4
	.word	_Label_3389
	.word	20
	.word	4
	.word	_Label_3390
	.word	-12
	.word	4
	.word	_Label_3391
	.word	-16
	.word	4
	.word	_Label_3392
	.word	-20
	.word	4
	.word	_Label_3393
	.word	-24
	.word	4
	.word	_Label_3394
	.word	-28
	.word	4
	.word	_Label_3395
	.word	-32
	.word	4
	.word	_Label_3396
	.word	-36
	.word	4
	.word	_Label_3397
	.word	-40
	.word	4
	.word	_Label_3398
	.word	-44
	.word	4
	.word	_Label_3399
	.word	-48
	.word	4
	.word	_Label_3400
	.word	-52
	.word	4
	.word	0
_Label_3385:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3386:
	.ascii	"Pself\0"
	.align
_Label_3387:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3388:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3389:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3390:
	.byte	'?'
	.ascii	"_temp_3384\0"
	.align
_Label_3391:
	.byte	'?'
	.ascii	"_temp_3383\0"
	.align
_Label_3392:
	.byte	'?'
	.ascii	"_temp_3382\0"
	.align
_Label_3393:
	.byte	'?'
	.ascii	"_temp_3381\0"
	.align
_Label_3394:
	.byte	'?'
	.ascii	"_temp_3380\0"
	.align
_Label_3395:
	.byte	'?'
	.ascii	"_temp_3379\0"
	.align
_Label_3396:
	.byte	'?'
	.ascii	"_temp_3378\0"
	.align
_Label_3397:
	.byte	'?'
	.ascii	"_temp_3369\0"
	.align
_Label_3398:
	.byte	'?'
	.ascii	"_temp_3368\0"
	.align
_Label_3399:
	.byte	'?'
	.ascii	"_temp_3367\0"
	.align
_Label_3400:
	.byte	'?'
	.ascii	"_temp_3363\0"
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
	mov	2424,r13		! source line 2424
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2442,r13		! source line 2442
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
	mov	2443,r13		! source line 2443
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
	mov	2444,r13		! source line 2444
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
	mov	2445,r13		! source line 2445
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
	mov	2445,r13		! source line 2445
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
	.word	_Label_3401
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3402
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3403
	.word	12
	.word	4
	.word	_Label_3404
	.word	16
	.word	4
	.word	_Label_3405
	.word	20
	.word	4
	.word	_Label_3406
	.word	24
	.word	4
	.word	0
_Label_3401:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3402:
	.ascii	"Pself\0"
	.align
_Label_3403:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3404:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3405:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3406:
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
_Label_4523:
	push	r0
	sub	r1,1,r1
	bne	_Label_4523
	mov	2450,r13		! source line 2450
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0SE",r10
!   _temp_3407 = &diskBusy
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
	mov	2463,r13		! source line 2463
	mov	"\0\0WH",r10
_Label_3408:
!	jmp	_Label_3409
_Label_3409:
	mov	2463,r13		! source line 2463
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0SE",r10
!   _temp_3411 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3412) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3411  sizeInBytes=4
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
	mov	2466,r13		! source line 2466
	mov	"\0\0SE",r10
!   _temp_3413 = &semUsedInSynchMethods
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
	mov	2469,r13		! source line 2469
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3422 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3416
	cmp	r1,2
	be	_Label_3417
	cmp	r1,3
	be	_Label_3418
	cmp	r1,4
	be	_Label_3419
	cmp	r1,5
	be	_Label_3420
	cmp	r1,6
	be	_Label_3421
	jmp	_Label_3414
! CASE 1...
_Label_3416:
! SEND STATEMENT...
	mov	2471,r13		! source line 2471
	mov	"\0\0SE",r10
!   _temp_3423 = &diskBusy
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
	mov	2472,r13		! source line 2472
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3417:
! CALL STATEMENT...
!   _temp_3424 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3424  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2474,r13		! source line 2474
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3418:
! CALL STATEMENT...
!   _temp_3425 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3425  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2476,r13		! source line 2476
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3419:
! CALL STATEMENT...
!   _temp_3426 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3426  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2478,r13		! source line 2478
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3420:
! BREAK STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0BR",r10
	jmp	_Label_3415
! CASE 6...
_Label_3421:
! CALL STATEMENT...
!   _temp_3427 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3427  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2484,r13		! source line 2484
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3414:
! CALL STATEMENT...
!   _temp_3428 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3428  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2486,r13		! source line 2486
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3415:
! END WHILE...
	jmp	_Label_3408
_Label_3410:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3429
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3430
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3431
	.word	12
	.word	4
	.word	_Label_3432
	.word	16
	.word	4
	.word	_Label_3433
	.word	20
	.word	4
	.word	_Label_3434
	.word	-12
	.word	4
	.word	_Label_3435
	.word	-16
	.word	4
	.word	_Label_3436
	.word	-20
	.word	4
	.word	_Label_3437
	.word	-24
	.word	4
	.word	_Label_3438
	.word	-28
	.word	4
	.word	_Label_3439
	.word	-32
	.word	4
	.word	_Label_3440
	.word	-36
	.word	4
	.word	_Label_3441
	.word	-40
	.word	4
	.word	_Label_3442
	.word	-44
	.word	4
	.word	_Label_3443
	.word	-48
	.word	4
	.word	_Label_3444
	.word	-52
	.word	4
	.word	0
_Label_3429:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3430:
	.ascii	"Pself\0"
	.align
_Label_3431:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3432:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3433:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3434:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3435:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3436:
	.byte	'?'
	.ascii	"_temp_3426\0"
	.align
_Label_3437:
	.byte	'?'
	.ascii	"_temp_3425\0"
	.align
_Label_3438:
	.byte	'?'
	.ascii	"_temp_3424\0"
	.align
_Label_3439:
	.byte	'?'
	.ascii	"_temp_3423\0"
	.align
_Label_3440:
	.byte	'?'
	.ascii	"_temp_3422\0"
	.align
_Label_3441:
	.byte	'?'
	.ascii	"_temp_3413\0"
	.align
_Label_3442:
	.byte	'?'
	.ascii	"_temp_3412\0"
	.align
_Label_3443:
	.byte	'?'
	.ascii	"_temp_3411\0"
	.align
_Label_3444:
	.byte	'?'
	.ascii	"_temp_3407\0"
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
	mov	2495,r13		! source line 2495
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2512,r13		! source line 2512
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
	mov	2513,r13		! source line 2513
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
	mov	2514,r13		! source line 2514
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
	mov	2515,r13		! source line 2515
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
	mov	2515,r13		! source line 2515
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
	.word	_Label_3445
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3446
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3447
	.word	12
	.word	4
	.word	_Label_3448
	.word	16
	.word	4
	.word	_Label_3449
	.word	20
	.word	4
	.word	_Label_3450
	.word	24
	.word	4
	.word	0
_Label_3445:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3446:
	.ascii	"Pself\0"
	.align
_Label_3447:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3448:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3449:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3450:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3451
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
_Label_3451:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3452
	.word	_sourceFileName
	.word	334		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3452:
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
_Label_4524:
	push	r0
	sub	r1,1,r1
	bne	_Label_4524
	mov	2526,r13		! source line 2526
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3453 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3453  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2533,r13		! source line 2533
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2534,r13		! source line 2534
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
	mov	2535,r13		! source line 2535
	mov	"\0\0SE",r10
!   _temp_3455 = &fileManagerLock
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
	mov	2538,r13		! source line 2538
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
	mov	2539,r13		! source line 2539
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
	mov	2540,r13		! source line 2540
	mov	"\0\0SE",r10
!   _temp_3458 = &anFCBBecameFree
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
	mov	2541,r13		! source line 2541
	mov	"\0\0AS",r10
!   _temp_3459 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3461 = &_temp_3460
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3461 = _temp_3461 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3463 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4525:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4525
!   _temp_3463 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3465:
!   Data Move: *_temp_3461 = _temp_3463  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4526:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4526
!   _temp_3461 = _temp_3461 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3462 = _temp_3462 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3462) then goto _Label_3465
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3465
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3466 = &_temp_3460
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4527
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4527:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3459 = *_temp_3466  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4528:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4528
! FOR STATEMENT...
	mov	2543,r13		! source line 2543
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3471 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3472 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3471  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3467:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3472 then goto _Label_3470		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3470
_Label_3468:
	mov	2543,r13		! source line 2543
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0AS",r10
!   _temp_3473 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3473 [i ] into _temp_3474
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
!   _temp_3475 = _temp_3474 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3475 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0SE",r10
!   _temp_3476 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3476 [i ] into _temp_3477
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
	mov	2546,r13		! source line 2546
	mov	"\0\0SE",r10
!   _temp_3479 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3479 [i ] into _temp_3480
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
!   _temp_3478 = _temp_3480		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3481 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3478  sizeInBytes=4
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
_Label_3469:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3467
! END FOR
_Label_3470:
! ASSIGNMENT STATEMENT...
	mov	2550,r13		! source line 2550
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
	mov	2551,r13		! source line 2551
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
	mov	2552,r13		! source line 2552
	mov	"\0\0SE",r10
!   _temp_3484 = &anOpenFileBecameFree
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
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
!   _temp_3485 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3487 = &_temp_3486
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3487 = _temp_3487 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3489 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4529:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4529
!   _temp_3489 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3491:
!   Data Move: *_temp_3487 = _temp_3489  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4530:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4530
!   _temp_3487 = _temp_3487 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3488 = _temp_3488 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3488) then goto _Label_3491
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3491
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3492 = &_temp_3486
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4531
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4531:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3485 = *_temp_3492  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4532:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4532
! FOR STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3497 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3498 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3497  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3493:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3498 then goto _Label_3496		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3496
_Label_3494:
	mov	2555,r13		! source line 2555
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0AS",r10
!   _temp_3499 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3499 [i ] into _temp_3500
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
!   _temp_3501 = _temp_3500 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3501 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0SE",r10
!   _temp_3503 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3503 [i ] into _temp_3504
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
!   _temp_3502 = _temp_3504		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3505 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3502  sizeInBytes=4
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
_Label_3495:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3493
! END FOR
_Label_3496:
! ASSIGNMENT STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4533:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4533
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2562,r13		! source line 2562
	mov	"\0\0AS",r10
!   _temp_3507 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3508 = _temp_3507 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3508 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
	mov	2567,r13		! source line 2567
	mov	"\0\0SE",r10
!   _temp_3509 = &_P_Kernel_frameManager
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
	mov	2568,r13		! source line 2568
	mov	"\0\0SE",r10
!   _temp_3510 = &_P_Kernel_diskDriver
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
	mov	2568,r13		! source line 2568
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
	.word	_Label_3511
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3512
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3513
	.word	-12
	.word	4
	.word	_Label_3514
	.word	-16
	.word	4
	.word	_Label_3515
	.word	-20
	.word	4
	.word	_Label_3516
	.word	-24
	.word	4
	.word	_Label_3517
	.word	-28
	.word	4
	.word	_Label_3518
	.word	-32
	.word	4
	.word	_Label_3519
	.word	-36
	.word	4
	.word	_Label_3520
	.word	-40
	.word	4
	.word	_Label_3521
	.word	-44
	.word	4
	.word	_Label_3522
	.word	-48
	.word	4
	.word	_Label_3523
	.word	-52
	.word	4
	.word	_Label_3524
	.word	-56
	.word	4
	.word	_Label_3525
	.word	-60
	.word	4
	.word	_Label_3526
	.word	-64
	.word	4
	.word	_Label_3527
	.word	-68
	.word	4
	.word	_Label_3528
	.word	-72
	.word	4
	.word	_Label_3529
	.word	-100
	.word	28
	.word	_Label_3530
	.word	-104
	.word	4
	.word	_Label_3531
	.word	-108
	.word	4
	.word	_Label_3532
	.word	-392
	.word	284
	.word	_Label_3533
	.word	-396
	.word	4
	.word	_Label_3534
	.word	-400
	.word	4
	.word	_Label_3535
	.word	-404
	.word	4
	.word	_Label_3536
	.word	-408
	.word	4
	.word	_Label_3537
	.word	-412
	.word	4
	.word	_Label_3538
	.word	-416
	.word	4
	.word	_Label_3539
	.word	-420
	.word	4
	.word	_Label_3540
	.word	-424
	.word	4
	.word	_Label_3541
	.word	-428
	.word	4
	.word	_Label_3542
	.word	-432
	.word	4
	.word	_Label_3543
	.word	-436
	.word	4
	.word	_Label_3544
	.word	-440
	.word	4
	.word	_Label_3545
	.word	-444
	.word	4
	.word	_Label_3546
	.word	-448
	.word	4
	.word	_Label_3547
	.word	-452
	.word	4
	.word	_Label_3548
	.word	-456
	.word	4
	.word	_Label_3549
	.word	-460
	.word	4
	.word	_Label_3550
	.word	-500
	.word	40
	.word	_Label_3551
	.word	-504
	.word	4
	.word	_Label_3552
	.word	-508
	.word	4
	.word	_Label_3553
	.word	-912
	.word	404
	.word	_Label_3554
	.word	-916
	.word	4
	.word	_Label_3555
	.word	-920
	.word	4
	.word	_Label_3556
	.word	-924
	.word	4
	.word	_Label_3557
	.word	-928
	.word	4
	.word	_Label_3558
	.word	-932
	.word	4
	.word	_Label_3559
	.word	-936
	.word	4
	.word	_Label_3560
	.word	-940
	.word	4
	.word	_Label_3561
	.word	-944
	.word	4
	.word	0
_Label_3511:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3512:
	.ascii	"Pself\0"
	.align
_Label_3513:
	.byte	'?'
	.ascii	"_temp_3510\0"
	.align
_Label_3514:
	.byte	'?'
	.ascii	"_temp_3509\0"
	.align
_Label_3515:
	.byte	'?'
	.ascii	"_temp_3508\0"
	.align
_Label_3516:
	.byte	'?'
	.ascii	"_temp_3507\0"
	.align
_Label_3517:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3518:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3519:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3520:
	.byte	'?'
	.ascii	"_temp_3503\0"
	.align
_Label_3521:
	.byte	'?'
	.ascii	"_temp_3502\0"
	.align
_Label_3522:
	.byte	'?'
	.ascii	"_temp_3501\0"
	.align
_Label_3523:
	.byte	'?'
	.ascii	"_temp_3500\0"
	.align
_Label_3524:
	.byte	'?'
	.ascii	"_temp_3499\0"
	.align
_Label_3525:
	.byte	'?'
	.ascii	"_temp_3498\0"
	.align
_Label_3526:
	.byte	'?'
	.ascii	"_temp_3497\0"
	.align
_Label_3527:
	.byte	'?'
	.ascii	"_temp_3492\0"
	.align
_Label_3528:
	.byte	'?'
	.ascii	"_temp_3490\0"
	.align
_Label_3529:
	.byte	'?'
	.ascii	"_temp_3489\0"
	.align
_Label_3530:
	.byte	'?'
	.ascii	"_temp_3488\0"
	.align
_Label_3531:
	.byte	'?'
	.ascii	"_temp_3487\0"
	.align
_Label_3532:
	.byte	'?'
	.ascii	"_temp_3486\0"
	.align
_Label_3533:
	.byte	'?'
	.ascii	"_temp_3485\0"
	.align
_Label_3534:
	.byte	'?'
	.ascii	"_temp_3484\0"
	.align
_Label_3535:
	.byte	'?'
	.ascii	"_temp_3483\0"
	.align
_Label_3536:
	.byte	'?'
	.ascii	"_temp_3482\0"
	.align
_Label_3537:
	.byte	'?'
	.ascii	"_temp_3481\0"
	.align
_Label_3538:
	.byte	'?'
	.ascii	"_temp_3480\0"
	.align
_Label_3539:
	.byte	'?'
	.ascii	"_temp_3479\0"
	.align
_Label_3540:
	.byte	'?'
	.ascii	"_temp_3478\0"
	.align
_Label_3541:
	.byte	'?'
	.ascii	"_temp_3477\0"
	.align
_Label_3542:
	.byte	'?'
	.ascii	"_temp_3476\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3475\0"
	.align
_Label_3544:
	.byte	'?'
	.ascii	"_temp_3474\0"
	.align
_Label_3545:
	.byte	'?'
	.ascii	"_temp_3473\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3472\0"
	.align
_Label_3547:
	.byte	'?'
	.ascii	"_temp_3471\0"
	.align
_Label_3548:
	.byte	'?'
	.ascii	"_temp_3466\0"
	.align
_Label_3549:
	.byte	'?'
	.ascii	"_temp_3464\0"
	.align
_Label_3550:
	.byte	'?'
	.ascii	"_temp_3463\0"
	.align
_Label_3551:
	.byte	'?'
	.ascii	"_temp_3462\0"
	.align
_Label_3552:
	.byte	'?'
	.ascii	"_temp_3461\0"
	.align
_Label_3553:
	.byte	'?'
	.ascii	"_temp_3460\0"
	.align
_Label_3554:
	.byte	'?'
	.ascii	"_temp_3459\0"
	.align
_Label_3555:
	.byte	'?'
	.ascii	"_temp_3458\0"
	.align
_Label_3556:
	.byte	'?'
	.ascii	"_temp_3457\0"
	.align
_Label_3557:
	.byte	'?'
	.ascii	"_temp_3456\0"
	.align
_Label_3558:
	.byte	'?'
	.ascii	"_temp_3455\0"
	.align
_Label_3559:
	.byte	'?'
	.ascii	"_temp_3454\0"
	.align
_Label_3560:
	.byte	'?'
	.ascii	"_temp_3453\0"
	.align
_Label_3561:
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
_Label_4534:
	push	r0
	sub	r1,1,r1
	bne	_Label_4534
	mov	2575,r13		! source line 2575
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0SE",r10
!   _temp_3562 = &fileManagerLock
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
!   _temp_3563 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3563  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2578,r13		! source line 2578
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2579,r13		! source line 2579
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3568 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3569 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3568  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3564:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3569 then goto _Label_3567		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3567
_Label_3565:
	mov	2579,r13		! source line 2579
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3570 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3570  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2580,r13		! source line 2580
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2581,r13		! source line 2581
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3571 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3571  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2582,r13		! source line 2582
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0SE",r10
!   _temp_3572 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3572 [i ] into _temp_3573
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
_Label_3566:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3564
! END FOR
_Label_3567:
! CALL STATEMENT...
!   _temp_3574 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3574  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2585,r13		! source line 2585
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0SE",r10
!   _temp_3575 = _function_192_printFCB
	set	_function_192_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3576 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3575  sizeInBytes=4
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
	mov	2587,r13		! source line 2587
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3577 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3577  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2588,r13		! source line 2588
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3582 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3583 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3582  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3578:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3583 then goto _Label_3581		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3581
_Label_3579:
	mov	2589,r13		! source line 2589
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3584 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3584  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2590,r13		! source line 2590
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2591,r13		! source line 2591
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3585 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3585  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2592,r13		! source line 2592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3587 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3587 [i ] into _temp_3588
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
!   _temp_3586 = _temp_3588		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3586  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2593,r13		! source line 2593
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3589 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3589  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2594,r13		! source line 2594
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0SE",r10
!   _temp_3590 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3590 [i ] into _temp_3591
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
_Label_3580:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3578
! END FOR
_Label_3581:
! CALL STATEMENT...
!   _temp_3592 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3592  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2597,r13		! source line 2597
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0SE",r10
!   _temp_3593 = _function_191_printOpen
	set	_function_191_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3594 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3593  sizeInBytes=4
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
	mov	2599,r13		! source line 2599
	mov	"\0\0SE",r10
!   _temp_3595 = &fileManagerLock
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
	mov	2599,r13		! source line 2599
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
	.word	_Label_3596
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3597
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3598
	.word	-12
	.word	4
	.word	_Label_3599
	.word	-16
	.word	4
	.word	_Label_3600
	.word	-20
	.word	4
	.word	_Label_3601
	.word	-24
	.word	4
	.word	_Label_3602
	.word	-28
	.word	4
	.word	_Label_3603
	.word	-32
	.word	4
	.word	_Label_3604
	.word	-36
	.word	4
	.word	_Label_3605
	.word	-40
	.word	4
	.word	_Label_3606
	.word	-44
	.word	4
	.word	_Label_3607
	.word	-48
	.word	4
	.word	_Label_3608
	.word	-52
	.word	4
	.word	_Label_3609
	.word	-56
	.word	4
	.word	_Label_3610
	.word	-60
	.word	4
	.word	_Label_3611
	.word	-64
	.word	4
	.word	_Label_3612
	.word	-68
	.word	4
	.word	_Label_3613
	.word	-72
	.word	4
	.word	_Label_3614
	.word	-76
	.word	4
	.word	_Label_3615
	.word	-80
	.word	4
	.word	_Label_3616
	.word	-84
	.word	4
	.word	_Label_3617
	.word	-88
	.word	4
	.word	_Label_3618
	.word	-92
	.word	4
	.word	_Label_3619
	.word	-96
	.word	4
	.word	_Label_3620
	.word	-100
	.word	4
	.word	_Label_3621
	.word	-104
	.word	4
	.word	_Label_3622
	.word	-108
	.word	4
	.word	_Label_3623
	.word	-112
	.word	4
	.word	_Label_3624
	.word	-116
	.word	4
	.word	0
_Label_3596:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3597:
	.ascii	"Pself\0"
	.align
_Label_3598:
	.byte	'?'
	.ascii	"_temp_3595\0"
	.align
_Label_3599:
	.byte	'?'
	.ascii	"_temp_3594\0"
	.align
_Label_3600:
	.byte	'?'
	.ascii	"_temp_3593\0"
	.align
_Label_3601:
	.byte	'?'
	.ascii	"_temp_3592\0"
	.align
_Label_3602:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3603:
	.byte	'?'
	.ascii	"_temp_3590\0"
	.align
_Label_3604:
	.byte	'?'
	.ascii	"_temp_3589\0"
	.align
_Label_3605:
	.byte	'?'
	.ascii	"_temp_3588\0"
	.align
_Label_3606:
	.byte	'?'
	.ascii	"_temp_3587\0"
	.align
_Label_3607:
	.byte	'?'
	.ascii	"_temp_3586\0"
	.align
_Label_3608:
	.byte	'?'
	.ascii	"_temp_3585\0"
	.align
_Label_3609:
	.byte	'?'
	.ascii	"_temp_3584\0"
	.align
_Label_3610:
	.byte	'?'
	.ascii	"_temp_3583\0"
	.align
_Label_3611:
	.byte	'?'
	.ascii	"_temp_3582\0"
	.align
_Label_3612:
	.byte	'?'
	.ascii	"_temp_3577\0"
	.align
_Label_3613:
	.byte	'?'
	.ascii	"_temp_3576\0"
	.align
_Label_3614:
	.byte	'?'
	.ascii	"_temp_3575\0"
	.align
_Label_3615:
	.byte	'?'
	.ascii	"_temp_3574\0"
	.align
_Label_3616:
	.byte	'?'
	.ascii	"_temp_3573\0"
	.align
_Label_3617:
	.byte	'?'
	.ascii	"_temp_3572\0"
	.align
_Label_3618:
	.byte	'?'
	.ascii	"_temp_3571\0"
	.align
_Label_3619:
	.byte	'?'
	.ascii	"_temp_3570\0"
	.align
_Label_3620:
	.byte	'?'
	.ascii	"_temp_3569\0"
	.align
_Label_3621:
	.byte	'?'
	.ascii	"_temp_3568\0"
	.align
_Label_3622:
	.byte	'?'
	.ascii	"_temp_3563\0"
	.align
_Label_3623:
	.byte	'?'
	.ascii	"_temp_3562\0"
	.align
_Label_3624:
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
_Label_4535:
	push	r0
	sub	r1,1,r1
	bne	_Label_4535
	mov	2604,r13		! source line 2604
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0AS",r10
	mov	2620,r13		! source line 2620
	mov	"\0\0SE",r10
!   _temp_3625 = &_P_Kernel_fileManager
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
	mov	2621,r13		! source line 2621
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3626
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3626
	jmp	_Label_3627
_Label_3626:
! THEN...
	mov	2622,r13		! source line 2622
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3627:
! SEND STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0SE",r10
!   _temp_3628 = &fileManagerLock
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
	mov	2627,r13		! source line 2627
	mov	"\0\0WH",r10
_Label_3629:
	mov	2627,r13		! source line 2627
	mov	"\0\0SE",r10
!   _temp_3632 = &openFileFreeList
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
!   if result==true then goto _Label_3630 else goto _Label_3631
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3631
	jmp	_Label_3630
_Label_3630:
	mov	2627,r13		! source line 2627
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0SE",r10
!   _temp_3633 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3634 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3633  sizeInBytes=4
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
	jmp	_Label_3629
_Label_3631:
! ASSIGNMENT STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0AS",r10
	mov	2630,r13		! source line 2630
	mov	"\0\0SE",r10
!   _temp_3635 = &openFileFreeList
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
	mov	2633,r13		! source line 2633
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3636 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3636 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3637 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3637 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3638 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3638 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0SE",r10
!   _temp_3639 = &fileManagerLock
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
	mov	2640,r13		! source line 2640
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
	.word	_Label_3640
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3641
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3642
	.word	12
	.word	4
	.word	_Label_3643
	.word	-12
	.word	4
	.word	_Label_3644
	.word	-16
	.word	4
	.word	_Label_3645
	.word	-20
	.word	4
	.word	_Label_3646
	.word	-24
	.word	4
	.word	_Label_3647
	.word	-28
	.word	4
	.word	_Label_3648
	.word	-32
	.word	4
	.word	_Label_3649
	.word	-36
	.word	4
	.word	_Label_3650
	.word	-40
	.word	4
	.word	_Label_3651
	.word	-44
	.word	4
	.word	_Label_3652
	.word	-48
	.word	4
	.word	_Label_3653
	.word	-52
	.word	4
	.word	_Label_3654
	.word	-56
	.word	4
	.word	0
_Label_3640:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3641:
	.ascii	"Pself\0"
	.align
_Label_3642:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3643:
	.byte	'?'
	.ascii	"_temp_3639\0"
	.align
_Label_3644:
	.byte	'?'
	.ascii	"_temp_3638\0"
	.align
_Label_3645:
	.byte	'?'
	.ascii	"_temp_3637\0"
	.align
_Label_3646:
	.byte	'?'
	.ascii	"_temp_3636\0"
	.align
_Label_3647:
	.byte	'?'
	.ascii	"_temp_3635\0"
	.align
_Label_3648:
	.byte	'?'
	.ascii	"_temp_3634\0"
	.align
_Label_3649:
	.byte	'?'
	.ascii	"_temp_3633\0"
	.align
_Label_3650:
	.byte	'?'
	.ascii	"_temp_3632\0"
	.align
_Label_3651:
	.byte	'?'
	.ascii	"_temp_3628\0"
	.align
_Label_3652:
	.byte	'?'
	.ascii	"_temp_3625\0"
	.align
_Label_3653:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3654:
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
_Label_4536:
	push	r0
	sub	r1,1,r1
	bne	_Label_4536
	mov	2645,r13		! source line 2645
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2670,r13		! source line 2670
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2673,r13		! source line 2673
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
	mov	2674,r13		! source line 2674
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3656		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3656
!	jmp	_Label_3655
_Label_3655:
! THEN...
	mov	2676,r13		! source line 2676
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3657 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3657  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2676,r13		! source line 2676
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3656:
! ASSIGNMENT STATEMENT...
	mov	2680,r13		! source line 2680
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
	mov	2681,r13		! source line 2681
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2682,r13		! source line 2682
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
	mov	2683,r13		! source line 2683
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2686,r13		! source line 2686
	mov	"\0\0WH",r10
_Label_3658:
!   if numFiles <= 0 then goto _Label_3660		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3660
!	jmp	_Label_3659
_Label_3659:
	mov	2686,r13		! source line 2686
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3661 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3661  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2687,r13		! source line 2687
	mov	"\0\0CA",r10
	call	_function_193_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3662 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3662  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2689,r13		! source line 2689
	mov	"\0\0CA",r10
	call	_function_193_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3663 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3663  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2691,r13		! source line 2691
	mov	"\0\0CA",r10
	call	_function_193_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3667 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3667 then goto _Label_3665		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3665
!	jmp	_Label_3666
_Label_3666:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3669
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
!   _temp_3668 = _temp_3669		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3668  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2694,r13		! source line 2694
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3664 else goto _Label_3665
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3665
	jmp	_Label_3664
_Label_3664:
! THEN...
	mov	2695,r13		! source line 2695
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0BR",r10
	jmp	_Label_3660
! END IF...
_Label_3665:
! ASSIGNMENT STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2698,r13		! source line 2698
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3658
_Label_3660:
! IF STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3671		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3671
!	jmp	_Label_3670
_Label_3670:
! THEN...
	mov	2703,r13		! source line 2703
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3671:
! SEND STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0SE",r10
!   _temp_3672 = &fileManagerLock
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
	mov	2708,r13		! source line 2708
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3677 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3678 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3677  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3673:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3678 then goto _Label_3676		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3676
_Label_3674:
	mov	2708,r13		! source line 2708
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2709,r13		! source line 2709
	mov	"\0\0AS",r10
!   _temp_3679 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3679 [i ] into _temp_3680
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
!   fcb = _temp_3680		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3684 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3683 = *_temp_3684  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3683 != start then goto _Label_3682		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3682
!	jmp	_Label_3681
_Label_3681:
! THEN...
	mov	2711,r13		! source line 2711
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3685 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3688 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3687 = *_temp_3688  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3686 = _temp_3687 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3685 = _temp_3686  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0SE",r10
!   _temp_3689 = &fileManagerLock
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
	mov	2713,r13		! source line 2713
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3682:
!   Increment the FOR-LOOP index variable and jump back
_Label_3675:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3673
! END FOR
_Label_3676:
! WHILE STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0WH",r10
_Label_3690:
	mov	2718,r13		! source line 2718
	mov	"\0\0SE",r10
!   _temp_3693 = &fcbFreeList
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
!   if result==true then goto _Label_3691 else goto _Label_3692
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3692
	jmp	_Label_3691
_Label_3691:
	mov	2718,r13		! source line 2718
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2719,r13		! source line 2719
	mov	"\0\0SE",r10
!   _temp_3694 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3695 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3694  sizeInBytes=4
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
	jmp	_Label_3690
_Label_3692:
! ASSIGNMENT STATEMENT...
	mov	2721,r13		! source line 2721
	mov	"\0\0AS",r10
	mov	2721,r13		! source line 2721
	mov	"\0\0SE",r10
!   _temp_3696 = &fcbFreeList
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
	mov	2724,r13		! source line 2724
	mov	"\0\0SE",r10
!   _temp_3697 = &fileManagerLock
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
	mov	2727,r13		! source line 2727
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3698 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3698 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3699 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3699 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3700 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3700 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3705 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3704 = *_temp_3705  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3704 < 0 then goto _Label_3703		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3703
	jmp	_Label_3701
_Label_3703:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3706 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3706 ) then goto _Label_3702		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3702
!	jmp	_Label_3701
_Label_3701:
! THEN...
	mov	2731,r13		! source line 2731
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3707 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3707  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2731,r13		! source line 2731
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3702:
! RETURN STATEMENT...
	mov	2733,r13		! source line 2733
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
	.word	_Label_3708
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3709
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3710
	.word	12
	.word	4
	.word	_Label_3711
	.word	-12
	.word	4
	.word	_Label_3712
	.word	-16
	.word	4
	.word	_Label_3713
	.word	-20
	.word	4
	.word	_Label_3714
	.word	-24
	.word	4
	.word	_Label_3715
	.word	-28
	.word	4
	.word	_Label_3716
	.word	-32
	.word	4
	.word	_Label_3717
	.word	-36
	.word	4
	.word	_Label_3718
	.word	-40
	.word	4
	.word	_Label_3719
	.word	-44
	.word	4
	.word	_Label_3720
	.word	-48
	.word	4
	.word	_Label_3721
	.word	-52
	.word	4
	.word	_Label_3722
	.word	-56
	.word	4
	.word	_Label_3723
	.word	-60
	.word	4
	.word	_Label_3724
	.word	-64
	.word	4
	.word	_Label_3725
	.word	-68
	.word	4
	.word	_Label_3726
	.word	-72
	.word	4
	.word	_Label_3727
	.word	-76
	.word	4
	.word	_Label_3728
	.word	-80
	.word	4
	.word	_Label_3729
	.word	-84
	.word	4
	.word	_Label_3730
	.word	-88
	.word	4
	.word	_Label_3731
	.word	-92
	.word	4
	.word	_Label_3732
	.word	-96
	.word	4
	.word	_Label_3733
	.word	-100
	.word	4
	.word	_Label_3734
	.word	-104
	.word	4
	.word	_Label_3735
	.word	-108
	.word	4
	.word	_Label_3736
	.word	-112
	.word	4
	.word	_Label_3737
	.word	-116
	.word	4
	.word	_Label_3738
	.word	-120
	.word	4
	.word	_Label_3739
	.word	-124
	.word	4
	.word	_Label_3740
	.word	-128
	.word	4
	.word	_Label_3741
	.word	-132
	.word	4
	.word	_Label_3742
	.word	-136
	.word	4
	.word	_Label_3743
	.word	-140
	.word	4
	.word	_Label_3744
	.word	-144
	.word	4
	.word	_Label_3745
	.word	-148
	.word	4
	.word	_Label_3746
	.word	-152
	.word	4
	.word	_Label_3747
	.word	-156
	.word	4
	.word	_Label_3748
	.word	-160
	.word	4
	.word	0
_Label_3708:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3709:
	.ascii	"Pself\0"
	.align
_Label_3710:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3711:
	.byte	'?'
	.ascii	"_temp_3707\0"
	.align
_Label_3712:
	.byte	'?'
	.ascii	"_temp_3706\0"
	.align
_Label_3713:
	.byte	'?'
	.ascii	"_temp_3705\0"
	.align
_Label_3714:
	.byte	'?'
	.ascii	"_temp_3704\0"
	.align
_Label_3715:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3716:
	.byte	'?'
	.ascii	"_temp_3699\0"
	.align
_Label_3717:
	.byte	'?'
	.ascii	"_temp_3698\0"
	.align
_Label_3718:
	.byte	'?'
	.ascii	"_temp_3697\0"
	.align
_Label_3719:
	.byte	'?'
	.ascii	"_temp_3696\0"
	.align
_Label_3720:
	.byte	'?'
	.ascii	"_temp_3695\0"
	.align
_Label_3721:
	.byte	'?'
	.ascii	"_temp_3694\0"
	.align
_Label_3722:
	.byte	'?'
	.ascii	"_temp_3693\0"
	.align
_Label_3723:
	.byte	'?'
	.ascii	"_temp_3689\0"
	.align
_Label_3724:
	.byte	'?'
	.ascii	"_temp_3688\0"
	.align
_Label_3725:
	.byte	'?'
	.ascii	"_temp_3687\0"
	.align
_Label_3726:
	.byte	'?'
	.ascii	"_temp_3686\0"
	.align
_Label_3727:
	.byte	'?'
	.ascii	"_temp_3685\0"
	.align
_Label_3728:
	.byte	'?'
	.ascii	"_temp_3684\0"
	.align
_Label_3729:
	.byte	'?'
	.ascii	"_temp_3683\0"
	.align
_Label_3730:
	.byte	'?'
	.ascii	"_temp_3680\0"
	.align
_Label_3731:
	.byte	'?'
	.ascii	"_temp_3679\0"
	.align
_Label_3732:
	.byte	'?'
	.ascii	"_temp_3678\0"
	.align
_Label_3733:
	.byte	'?'
	.ascii	"_temp_3677\0"
	.align
_Label_3734:
	.byte	'?'
	.ascii	"_temp_3672\0"
	.align
_Label_3735:
	.byte	'?'
	.ascii	"_temp_3669\0"
	.align
_Label_3736:
	.byte	'?'
	.ascii	"_temp_3668\0"
	.align
_Label_3737:
	.byte	'?'
	.ascii	"_temp_3667\0"
	.align
_Label_3738:
	.byte	'?'
	.ascii	"_temp_3663\0"
	.align
_Label_3739:
	.byte	'?'
	.ascii	"_temp_3662\0"
	.align
_Label_3740:
	.byte	'?'
	.ascii	"_temp_3661\0"
	.align
_Label_3741:
	.byte	'?'
	.ascii	"_temp_3657\0"
	.align
_Label_3742:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3743:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3744:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3745:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3746:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3747:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3748:
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
_Label_4537:
	push	r0
	sub	r1,1,r1
	bne	_Label_4537
	mov	2746,r13		! source line 2746
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0IF",r10
!   _temp_3751 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3751 then goto _Label_3750		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3750
!	jmp	_Label_3749
_Label_3749:
! THEN...
	mov	2749,r13		! source line 2749
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2749,r13		! source line 2749
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3750:
! SEND STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0SE",r10
!   _temp_3752 = &fileManagerLock
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
	mov	2752,r13		! source line 2752
	mov	"\0\0SE",r10
!   _temp_3753 = &_P_Kernel_fileManager
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
	mov	2753,r13		! source line 2753
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3754 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3754  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2754,r13		! source line 2754
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3755 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3758 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3757 = *_temp_3758  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3756 = _temp_3757 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3755 = _temp_3756  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3762 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3761 = *_temp_3762  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3761 > 0 then goto _Label_3760		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3760
!	jmp	_Label_3759
_Label_3759:
! THEN...
	mov	2756,r13		! source line 2756
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0SE",r10
!   _temp_3763 = &openFileFreeList
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
	mov	2757,r13		! source line 2757
	mov	"\0\0SE",r10
!   _temp_3764 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3765 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3764  sizeInBytes=4
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
	mov	2758,r13		! source line 2758
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3766 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3769 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3768 = *_temp_3769  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3767 = _temp_3768 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3766 = _temp_3767  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3773 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3772 = *_temp_3773  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3772 > 0 then goto _Label_3771		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3771
!	jmp	_Label_3770
_Label_3770:
! THEN...
	mov	2760,r13		! source line 2760
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2760,r13		! source line 2760
	mov	"\0\0SE",r10
!   _temp_3774 = &fcbFreeList
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
	mov	2761,r13		! source line 2761
	mov	"\0\0SE",r10
!   _temp_3775 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3776 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3775  sizeInBytes=4
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
_Label_3771:
! END IF...
_Label_3760:
! SEND STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0SE",r10
!   _temp_3777 = &fileManagerLock
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
	mov	2764,r13		! source line 2764
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
	.word	_Label_3778
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3779
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3780
	.word	12
	.word	4
	.word	_Label_3781
	.word	-12
	.word	4
	.word	_Label_3782
	.word	-16
	.word	4
	.word	_Label_3783
	.word	-20
	.word	4
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
	.word	_Label_3789
	.word	-44
	.word	4
	.word	_Label_3790
	.word	-48
	.word	4
	.word	_Label_3791
	.word	-52
	.word	4
	.word	_Label_3792
	.word	-56
	.word	4
	.word	_Label_3793
	.word	-60
	.word	4
	.word	_Label_3794
	.word	-64
	.word	4
	.word	_Label_3795
	.word	-68
	.word	4
	.word	_Label_3796
	.word	-72
	.word	4
	.word	_Label_3797
	.word	-76
	.word	4
	.word	_Label_3798
	.word	-80
	.word	4
	.word	_Label_3799
	.word	-84
	.word	4
	.word	_Label_3800
	.word	-88
	.word	4
	.word	_Label_3801
	.word	-92
	.word	4
	.word	_Label_3802
	.word	-96
	.word	4
	.word	_Label_3803
	.word	-100
	.word	4
	.word	_Label_3804
	.word	-104
	.word	4
	.word	0
_Label_3778:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3779:
	.ascii	"Pself\0"
	.align
_Label_3780:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3781:
	.byte	'?'
	.ascii	"_temp_3777\0"
	.align
_Label_3782:
	.byte	'?'
	.ascii	"_temp_3776\0"
	.align
_Label_3783:
	.byte	'?'
	.ascii	"_temp_3775\0"
	.align
_Label_3784:
	.byte	'?'
	.ascii	"_temp_3774\0"
	.align
_Label_3785:
	.byte	'?'
	.ascii	"_temp_3773\0"
	.align
_Label_3786:
	.byte	'?'
	.ascii	"_temp_3772\0"
	.align
_Label_3787:
	.byte	'?'
	.ascii	"_temp_3769\0"
	.align
_Label_3788:
	.byte	'?'
	.ascii	"_temp_3768\0"
	.align
_Label_3789:
	.byte	'?'
	.ascii	"_temp_3767\0"
	.align
_Label_3790:
	.byte	'?'
	.ascii	"_temp_3766\0"
	.align
_Label_3791:
	.byte	'?'
	.ascii	"_temp_3765\0"
	.align
_Label_3792:
	.byte	'?'
	.ascii	"_temp_3764\0"
	.align
_Label_3793:
	.byte	'?'
	.ascii	"_temp_3763\0"
	.align
_Label_3794:
	.byte	'?'
	.ascii	"_temp_3762\0"
	.align
_Label_3795:
	.byte	'?'
	.ascii	"_temp_3761\0"
	.align
_Label_3796:
	.byte	'?'
	.ascii	"_temp_3758\0"
	.align
_Label_3797:
	.byte	'?'
	.ascii	"_temp_3757\0"
	.align
_Label_3798:
	.byte	'?'
	.ascii	"_temp_3756\0"
	.align
_Label_3799:
	.byte	'?'
	.ascii	"_temp_3755\0"
	.align
_Label_3800:
	.byte	'?'
	.ascii	"_temp_3754\0"
	.align
_Label_3801:
	.byte	'?'
	.ascii	"_temp_3753\0"
	.align
_Label_3802:
	.byte	'?'
	.ascii	"_temp_3752\0"
	.align
_Label_3803:
	.byte	'?'
	.ascii	"_temp_3751\0"
	.align
_Label_3804:
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
_Label_4538:
	push	r0
	sub	r1,1,r1
	bne	_Label_4538
	mov	2769,r13		! source line 2769
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3808 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3807 = *_temp_3808  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3807) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3809 = _temp_3807 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3809 ) then goto _Label_3806		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3806
!	jmp	_Label_3805
_Label_3805:
! THEN...
	mov	2775,r13		! source line 2775
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3814 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3813 = *_temp_3814  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3813) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3815 = _temp_3813 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3812 = *_temp_3815  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3812 >= 0 then goto _Label_3811		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3811
!	jmp	_Label_3810
_Label_3810:
! THEN...
	mov	2776,r13		! source line 2776
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3816 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3816  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2776,r13		! source line 2776
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3811:
! ASSIGNMENT STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3818 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3817 = *_temp_3818  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3817) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3819 = _temp_3817 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3819 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2779,r13		! source line 2779
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3823 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3822 = *_temp_3823  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3822) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3824 = _temp_3822 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3821 = *_temp_3824  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3827 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3826 = *_temp_3827  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3826) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3828 = _temp_3826 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3825 = *_temp_3828  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3820 = _temp_3821 + _temp_3825		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3831 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3830 = *_temp_3831  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3830) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3832 = _temp_3830 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3829 = *_temp_3832  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3833 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3820  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3829  sizeInBytes=4
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
_Label_3806:
! RETURN STATEMENT...
	mov	2774,r13		! source line 2774
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
	.word	_Label_3834
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3836
	.word	12
	.word	4
	.word	_Label_3837
	.word	-12
	.word	4
	.word	_Label_3838
	.word	-16
	.word	4
	.word	_Label_3839
	.word	-20
	.word	4
	.word	_Label_3840
	.word	-24
	.word	4
	.word	_Label_3841
	.word	-28
	.word	4
	.word	_Label_3842
	.word	-32
	.word	4
	.word	_Label_3843
	.word	-36
	.word	4
	.word	_Label_3844
	.word	-40
	.word	4
	.word	_Label_3845
	.word	-44
	.word	4
	.word	_Label_3846
	.word	-48
	.word	4
	.word	_Label_3847
	.word	-52
	.word	4
	.word	_Label_3848
	.word	-56
	.word	4
	.word	_Label_3849
	.word	-60
	.word	4
	.word	_Label_3850
	.word	-64
	.word	4
	.word	_Label_3851
	.word	-68
	.word	4
	.word	_Label_3852
	.word	-72
	.word	4
	.word	_Label_3853
	.word	-76
	.word	4
	.word	_Label_3854
	.word	-80
	.word	4
	.word	_Label_3855
	.word	-84
	.word	4
	.word	_Label_3856
	.word	-88
	.word	4
	.word	_Label_3857
	.word	-92
	.word	4
	.word	_Label_3858
	.word	-96
	.word	4
	.word	_Label_3859
	.word	-100
	.word	4
	.word	_Label_3860
	.word	-104
	.word	4
	.word	_Label_3861
	.word	-108
	.word	4
	.word	0
_Label_3834:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3835:
	.ascii	"Pself\0"
	.align
_Label_3836:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3837:
	.byte	'?'
	.ascii	"_temp_3833\0"
	.align
_Label_3838:
	.byte	'?'
	.ascii	"_temp_3832\0"
	.align
_Label_3839:
	.byte	'?'
	.ascii	"_temp_3831\0"
	.align
_Label_3840:
	.byte	'?'
	.ascii	"_temp_3830\0"
	.align
_Label_3841:
	.byte	'?'
	.ascii	"_temp_3829\0"
	.align
_Label_3842:
	.byte	'?'
	.ascii	"_temp_3828\0"
	.align
_Label_3843:
	.byte	'?'
	.ascii	"_temp_3827\0"
	.align
_Label_3844:
	.byte	'?'
	.ascii	"_temp_3826\0"
	.align
_Label_3845:
	.byte	'?'
	.ascii	"_temp_3825\0"
	.align
_Label_3846:
	.byte	'?'
	.ascii	"_temp_3824\0"
	.align
_Label_3847:
	.byte	'?'
	.ascii	"_temp_3823\0"
	.align
_Label_3848:
	.byte	'?'
	.ascii	"_temp_3822\0"
	.align
_Label_3849:
	.byte	'?'
	.ascii	"_temp_3821\0"
	.align
_Label_3850:
	.byte	'?'
	.ascii	"_temp_3820\0"
	.align
_Label_3851:
	.byte	'?'
	.ascii	"_temp_3819\0"
	.align
_Label_3852:
	.byte	'?'
	.ascii	"_temp_3818\0"
	.align
_Label_3853:
	.byte	'?'
	.ascii	"_temp_3817\0"
	.align
_Label_3854:
	.byte	'?'
	.ascii	"_temp_3816\0"
	.align
_Label_3855:
	.byte	'?'
	.ascii	"_temp_3815\0"
	.align
_Label_3856:
	.byte	'?'
	.ascii	"_temp_3814\0"
	.align
_Label_3857:
	.byte	'?'
	.ascii	"_temp_3813\0"
	.align
_Label_3858:
	.byte	'?'
	.ascii	"_temp_3812\0"
	.align
_Label_3859:
	.byte	'?'
	.ascii	"_temp_3809\0"
	.align
_Label_3860:
	.byte	'?'
	.ascii	"_temp_3808\0"
	.align
_Label_3861:
	.byte	'?'
	.ascii	"_temp_3807\0"
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
_Label_4539:
	push	r0
	sub	r1,1,r1
	bne	_Label_4539
	mov	2788,r13		! source line 2788
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2803,r13		! source line 2803
	mov	"\0\0SE",r10
!   _temp_3862 = &fileManagerLock
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
	mov	2804,r13		! source line 2804
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3868		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3868
!   _temp_3867 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3869
_Label_3868:
!   _temp_3867 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3869:
!   if _temp_3867 then goto _Label_3866 else goto _Label_3863
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3863
	jmp	_Label_3866
_Label_3866:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3872 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3871 = *_temp_3872  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3871 == 0 then goto _Label_3873		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3873
!   _temp_3870 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3874
_Label_3873:
!   _temp_3870 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3874:
!   if _temp_3870 then goto _Label_3865 else goto _Label_3863
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3863
	jmp	_Label_3865
_Label_3865:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3877 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3876 = *_temp_3877  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3876) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3878 = _temp_3876 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3875 = *_temp_3878  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3875 >= 0 then goto _Label_3864		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3864
!	jmp	_Label_3863
_Label_3863:
! THEN...
	mov	2805,r13		! source line 2805
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3879 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3879  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2805,r13		! source line 2805
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3864:
! ASSIGNMENT STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3880 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3880  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0WH",r10
_Label_3881:
!   if numBytes <= 0 then goto _Label_3883		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3883
!	jmp	_Label_3882
_Label_3882:
	mov	2808,r13		! source line 2808
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2817,r13		! source line 2817
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
	mov	2818,r13		! source line 2818
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
	mov	2822,r13		! source line 2822
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3887 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3886 = *_temp_3887  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3886 == sector then goto _Label_3885		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3885
!	jmp	_Label_3884
_Label_3884:
! THEN...
	mov	2823,r13		! source line 2823
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3888) then goto _runtimeErrorNullPointer
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
	mov	2825,r13		! source line 2825
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3891 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3890 = *_temp_3891  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3889 = sector + _temp_3890		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3893 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3892 = *_temp_3893  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3894 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3889  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3892  sizeInBytes=4
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
	mov	2828,r13		! source line 2828
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3895 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3895 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3896 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3896 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3885:
! ASSIGNMENT STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3898 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3897 = *_temp_3898  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3897 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0AS",r10
!   _temp_3899 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3899  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2832,r13		! source line 2832
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
	mov	2836,r13		! source line 2836
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2839,r13		! source line 2839
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3881
_Label_3883:
! SEND STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0SE",r10
!   _temp_3900 = &fileManagerLock
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
	mov	2847,r13		! source line 2847
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
	.word	_Label_3901
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3902
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3903
	.word	12
	.word	4
	.word	_Label_3904
	.word	16
	.word	4
	.word	_Label_3905
	.word	20
	.word	4
	.word	_Label_3906
	.word	24
	.word	4
	.word	_Label_3907
	.word	-16
	.word	4
	.word	_Label_3908
	.word	-20
	.word	4
	.word	_Label_3909
	.word	-24
	.word	4
	.word	_Label_3910
	.word	-28
	.word	4
	.word	_Label_3911
	.word	-32
	.word	4
	.word	_Label_3912
	.word	-36
	.word	4
	.word	_Label_3913
	.word	-40
	.word	4
	.word	_Label_3914
	.word	-44
	.word	4
	.word	_Label_3915
	.word	-48
	.word	4
	.word	_Label_3916
	.word	-52
	.word	4
	.word	_Label_3917
	.word	-56
	.word	4
	.word	_Label_3918
	.word	-60
	.word	4
	.word	_Label_3919
	.word	-64
	.word	4
	.word	_Label_3920
	.word	-68
	.word	4
	.word	_Label_3921
	.word	-72
	.word	4
	.word	_Label_3922
	.word	-76
	.word	4
	.word	_Label_3923
	.word	-80
	.word	4
	.word	_Label_3924
	.word	-84
	.word	4
	.word	_Label_3925
	.word	-88
	.word	4
	.word	_Label_3926
	.word	-92
	.word	4
	.word	_Label_3927
	.word	-96
	.word	4
	.word	_Label_3928
	.word	-100
	.word	4
	.word	_Label_3929
	.word	-104
	.word	4
	.word	_Label_3930
	.word	-9
	.word	1
	.word	_Label_3931
	.word	-10
	.word	1
	.word	_Label_3932
	.word	-108
	.word	4
	.word	_Label_3933
	.word	-112
	.word	4
	.word	_Label_3934
	.word	-116
	.word	4
	.word	_Label_3935
	.word	-120
	.word	4
	.word	_Label_3936
	.word	-124
	.word	4
	.word	_Label_3937
	.word	-128
	.word	4
	.word	0
_Label_3901:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3902:
	.ascii	"Pself\0"
	.align
_Label_3903:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3904:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3905:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3906:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3907:
	.byte	'?'
	.ascii	"_temp_3900\0"
	.align
_Label_3908:
	.byte	'?'
	.ascii	"_temp_3899\0"
	.align
_Label_3909:
	.byte	'?'
	.ascii	"_temp_3898\0"
	.align
_Label_3910:
	.byte	'?'
	.ascii	"_temp_3897\0"
	.align
_Label_3911:
	.byte	'?'
	.ascii	"_temp_3896\0"
	.align
_Label_3912:
	.byte	'?'
	.ascii	"_temp_3895\0"
	.align
_Label_3913:
	.byte	'?'
	.ascii	"_temp_3894\0"
	.align
_Label_3914:
	.byte	'?'
	.ascii	"_temp_3893\0"
	.align
_Label_3915:
	.byte	'?'
	.ascii	"_temp_3892\0"
	.align
_Label_3916:
	.byte	'?'
	.ascii	"_temp_3891\0"
	.align
_Label_3917:
	.byte	'?'
	.ascii	"_temp_3890\0"
	.align
_Label_3918:
	.byte	'?'
	.ascii	"_temp_3889\0"
	.align
_Label_3919:
	.byte	'?'
	.ascii	"_temp_3888\0"
	.align
_Label_3920:
	.byte	'?'
	.ascii	"_temp_3887\0"
	.align
_Label_3921:
	.byte	'?'
	.ascii	"_temp_3886\0"
	.align
_Label_3922:
	.byte	'?'
	.ascii	"_temp_3880\0"
	.align
_Label_3923:
	.byte	'?'
	.ascii	"_temp_3879\0"
	.align
_Label_3924:
	.byte	'?'
	.ascii	"_temp_3878\0"
	.align
_Label_3925:
	.byte	'?'
	.ascii	"_temp_3877\0"
	.align
_Label_3926:
	.byte	'?'
	.ascii	"_temp_3876\0"
	.align
_Label_3927:
	.byte	'?'
	.ascii	"_temp_3875\0"
	.align
_Label_3928:
	.byte	'?'
	.ascii	"_temp_3872\0"
	.align
_Label_3929:
	.byte	'?'
	.ascii	"_temp_3871\0"
	.align
_Label_3930:
	.byte	'C'
	.ascii	"_temp_3870\0"
	.align
_Label_3931:
	.byte	'C'
	.ascii	"_temp_3867\0"
	.align
_Label_3932:
	.byte	'?'
	.ascii	"_temp_3862\0"
	.align
_Label_3933:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3934:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3935:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3936:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3937:
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
_Label_4540:
	push	r0
	sub	r1,1,r1
	bne	_Label_4540
	mov	2852,r13		! source line 2852
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0SE",r10
!   _temp_3938 = &fileManagerLock
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
	mov	2869,r13		! source line 2869
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3944		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3944
!   _temp_3943 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3945
_Label_3944:
!   _temp_3943 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3945:
!   if _temp_3943 then goto _Label_3942 else goto _Label_3939
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3939
	jmp	_Label_3942
_Label_3942:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3948 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3947 = *_temp_3948  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3947 == 0 then goto _Label_3949		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3949
!   _temp_3946 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3950
_Label_3949:
!   _temp_3946 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3950:
!   if _temp_3946 then goto _Label_3941 else goto _Label_3939
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3939
	jmp	_Label_3941
_Label_3941:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3953 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3952 = *_temp_3953  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3952) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3954 = _temp_3952 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3951 = *_temp_3954  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3951 >= 0 then goto _Label_3940		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3940
!	jmp	_Label_3939
_Label_3939:
! THEN...
	mov	2870,r13		! source line 2870
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3955 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3955  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2870,r13		! source line 2870
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3940:
! ASSIGNMENT STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3956 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3956  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0WH",r10
_Label_3957:
!   if numBytes <= 0 then goto _Label_3959		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3959
!	jmp	_Label_3958
_Label_3958:
	mov	2873,r13		! source line 2873
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2882,r13		! source line 2882
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
	mov	2883,r13		! source line 2883
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
	mov	2887,r13		! source line 2887
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3963 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3962 = *_temp_3963  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3962 == sector then goto _Label_3961		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3961
!	jmp	_Label_3960
_Label_3960:
! THEN...
	mov	2889,r13		! source line 2889
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2889,r13		! source line 2889
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3964) then goto _runtimeErrorNullPointer
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
_Label_3961:
! ASSIGNMENT STATEMENT...
	mov	2891,r13		! source line 2891
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3966 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3965 = *_temp_3966  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3965 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2892,r13		! source line 2892
	mov	"\0\0AS",r10
!   _temp_3967 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3967  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2892,r13		! source line 2892
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2893,r13		! source line 2893
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3971 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3970 = *_temp_3971  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3970 != sector then goto _Label_3969		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3969
!	jmp	_Label_3968
_Label_3968:
	jmp	_Label_3972
_Label_3969:
! ELSE...
	mov	2895,r13		! source line 2895
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2895,r13		! source line 2895
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3975
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3975
	jmp	_Label_3974
_Label_3975:
!   if bytesToMove != 8192 then goto _Label_3974		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3974
!	jmp	_Label_3973
_Label_3973:
	jmp	_Label_3976
_Label_3974:
! ELSE...
	mov	2899,r13		! source line 2899
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3979 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3978 = *_temp_3979  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3977 = sector + _temp_3978		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3981 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3980 = *_temp_3981  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3982 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3977  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3980  sizeInBytes=4
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
_Label_3976:
! END IF...
_Label_3972:
! ASSIGNMENT STATEMENT...
	mov	2903,r13		! source line 2903
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3983 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3983 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2904,r13		! source line 2904
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3984 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3984 = 1  (sizeInBytes=1)
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
	mov	2908,r13		! source line 2908
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2909,r13		! source line 2909
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2910,r13		! source line 2910
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3957
_Label_3959:
! SEND STATEMENT...
	mov	2918,r13		! source line 2918
	mov	"\0\0SE",r10
!   _temp_3985 = &fileManagerLock
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
	mov	2920,r13		! source line 2920
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
	.word	_Label_3986
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3987
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3988
	.word	12
	.word	4
	.word	_Label_3989
	.word	16
	.word	4
	.word	_Label_3990
	.word	20
	.word	4
	.word	_Label_3991
	.word	24
	.word	4
	.word	_Label_3992
	.word	-16
	.word	4
	.word	_Label_3993
	.word	-20
	.word	4
	.word	_Label_3994
	.word	-24
	.word	4
	.word	_Label_3995
	.word	-28
	.word	4
	.word	_Label_3996
	.word	-32
	.word	4
	.word	_Label_3997
	.word	-36
	.word	4
	.word	_Label_3998
	.word	-40
	.word	4
	.word	_Label_3999
	.word	-44
	.word	4
	.word	_Label_4000
	.word	-48
	.word	4
	.word	_Label_4001
	.word	-52
	.word	4
	.word	_Label_4002
	.word	-56
	.word	4
	.word	_Label_4003
	.word	-60
	.word	4
	.word	_Label_4004
	.word	-64
	.word	4
	.word	_Label_4005
	.word	-68
	.word	4
	.word	_Label_4006
	.word	-72
	.word	4
	.word	_Label_4007
	.word	-76
	.word	4
	.word	_Label_4008
	.word	-80
	.word	4
	.word	_Label_4009
	.word	-84
	.word	4
	.word	_Label_4010
	.word	-88
	.word	4
	.word	_Label_4011
	.word	-92
	.word	4
	.word	_Label_4012
	.word	-96
	.word	4
	.word	_Label_4013
	.word	-100
	.word	4
	.word	_Label_4014
	.word	-104
	.word	4
	.word	_Label_4015
	.word	-108
	.word	4
	.word	_Label_4016
	.word	-112
	.word	4
	.word	_Label_4017
	.word	-9
	.word	1
	.word	_Label_4018
	.word	-10
	.word	1
	.word	_Label_4019
	.word	-116
	.word	4
	.word	_Label_4020
	.word	-120
	.word	4
	.word	_Label_4021
	.word	-124
	.word	4
	.word	_Label_4022
	.word	-128
	.word	4
	.word	_Label_4023
	.word	-132
	.word	4
	.word	_Label_4024
	.word	-136
	.word	4
	.word	0
_Label_3986:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3987:
	.ascii	"Pself\0"
	.align
_Label_3988:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3989:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3990:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3991:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3992:
	.byte	'?'
	.ascii	"_temp_3985\0"
	.align
_Label_3993:
	.byte	'?'
	.ascii	"_temp_3984\0"
	.align
_Label_3994:
	.byte	'?'
	.ascii	"_temp_3983\0"
	.align
_Label_3995:
	.byte	'?'
	.ascii	"_temp_3982\0"
	.align
_Label_3996:
	.byte	'?'
	.ascii	"_temp_3981\0"
	.align
_Label_3997:
	.byte	'?'
	.ascii	"_temp_3980\0"
	.align
_Label_3998:
	.byte	'?'
	.ascii	"_temp_3979\0"
	.align
_Label_3999:
	.byte	'?'
	.ascii	"_temp_3978\0"
	.align
_Label_4000:
	.byte	'?'
	.ascii	"_temp_3977\0"
	.align
_Label_4001:
	.byte	'?'
	.ascii	"_temp_3971\0"
	.align
_Label_4002:
	.byte	'?'
	.ascii	"_temp_3970\0"
	.align
_Label_4003:
	.byte	'?'
	.ascii	"_temp_3967\0"
	.align
_Label_4004:
	.byte	'?'
	.ascii	"_temp_3966\0"
	.align
_Label_4005:
	.byte	'?'
	.ascii	"_temp_3965\0"
	.align
_Label_4006:
	.byte	'?'
	.ascii	"_temp_3964\0"
	.align
_Label_4007:
	.byte	'?'
	.ascii	"_temp_3963\0"
	.align
_Label_4008:
	.byte	'?'
	.ascii	"_temp_3962\0"
	.align
_Label_4009:
	.byte	'?'
	.ascii	"_temp_3956\0"
	.align
_Label_4010:
	.byte	'?'
	.ascii	"_temp_3955\0"
	.align
_Label_4011:
	.byte	'?'
	.ascii	"_temp_3954\0"
	.align
_Label_4012:
	.byte	'?'
	.ascii	"_temp_3953\0"
	.align
_Label_4013:
	.byte	'?'
	.ascii	"_temp_3952\0"
	.align
_Label_4014:
	.byte	'?'
	.ascii	"_temp_3951\0"
	.align
_Label_4015:
	.byte	'?'
	.ascii	"_temp_3948\0"
	.align
_Label_4016:
	.byte	'?'
	.ascii	"_temp_3947\0"
	.align
_Label_4017:
	.byte	'C'
	.ascii	"_temp_3946\0"
	.align
_Label_4018:
	.byte	'C'
	.ascii	"_temp_3943\0"
	.align
_Label_4019:
	.byte	'?'
	.ascii	"_temp_3938\0"
	.align
_Label_4020:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_4021:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_4022:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_4023:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_4024:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_4025
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_4025:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4026
	.word	_sourceFileName
	.word	359		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_4026:
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
_Label_4541:
	push	r0
	sub	r1,1,r1
	bne	_Label_4541
	mov	2956,r13		! source line 2956
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2957,r13		! source line 2957
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2958,r13		! source line 2958
	mov	"\0\0AS",r10
	mov	2958,r13		! source line 2958
	mov	"\0\0SE",r10
!   _temp_4027 = &_P_Kernel_frameManager
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
	mov	2959,r13		! source line 2959
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2960,r13		! source line 2960
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2961,r13		! source line 2961
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2961,r13		! source line 2961
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
	.word	_Label_4028
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_4029
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4030
	.word	-12
	.word	4
	.word	0
_Label_4028:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4029:
	.ascii	"Pself\0"
	.align
_Label_4030:
	.byte	'?'
	.ascii	"_temp_4027\0"
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
_Label_4542:
	push	r0
	sub	r1,1,r1
	bne	_Label_4542
	mov	2966,r13		! source line 2966
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4031 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_4031  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2967,r13		! source line 2967
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2968,r13		! source line 2968
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4032 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_4032  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2969,r13		! source line 2969
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2970,r13		! source line 2970
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4033 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_4033  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2971,r13		! source line 2971
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2972,r13		! source line 2972
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4034 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4034  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2973,r13		! source line 2973
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2974,r13		! source line 2974
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4035 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4035  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2975,r13		! source line 2975
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2976,r13		! source line 2976
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_4036 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4036  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2977,r13		! source line 2977
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2978,r13		! source line 2978
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2979,r13		! source line 2979
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2979,r13		! source line 2979
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
	.word	_Label_4037
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_4038
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4039
	.word	-12
	.word	4
	.word	_Label_4040
	.word	-16
	.word	4
	.word	_Label_4041
	.word	-20
	.word	4
	.word	_Label_4042
	.word	-24
	.word	4
	.word	_Label_4043
	.word	-28
	.word	4
	.word	_Label_4044
	.word	-32
	.word	4
	.word	0
_Label_4037:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4038:
	.ascii	"Pself\0"
	.align
_Label_4039:
	.byte	'?'
	.ascii	"_temp_4036\0"
	.align
_Label_4040:
	.byte	'?'
	.ascii	"_temp_4035\0"
	.align
_Label_4041:
	.byte	'?'
	.ascii	"_temp_4034\0"
	.align
_Label_4042:
	.byte	'?'
	.ascii	"_temp_4033\0"
	.align
_Label_4043:
	.byte	'?'
	.ascii	"_temp_4032\0"
	.align
_Label_4044:
	.byte	'?'
	.ascii	"_temp_4031\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_4045
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_4045:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4046
	.word	_sourceFileName
	.word	376		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_4046:
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
_Label_4543:
	push	r0
	sub	r1,1,r1
	bne	_Label_4543
	mov	2990,r13		! source line 2990
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4047 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4047  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2991,r13		! source line 2991
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2992,r13		! source line 2992
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4048 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4048  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2993,r13		! source line 2993
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2994,r13		! source line 2994
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_4050		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4050
!	jmp	_Label_4049
_Label_4049:
! THEN...
	mov	2995,r13		! source line 2995
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2995,r13		! source line 2995
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
	jmp	_Label_4051
_Label_4050:
! ELSE...
	mov	2997,r13		! source line 2997
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_4052 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4052  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2997,r13		! source line 2997
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_4051:
! RETURN STATEMENT...
	mov	2994,r13		! source line 2994
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
	.word	_Label_4053
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_4054
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4055
	.word	-12
	.word	4
	.word	_Label_4056
	.word	-16
	.word	4
	.word	_Label_4057
	.word	-20
	.word	4
	.word	0
_Label_4053:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4054:
	.ascii	"Pself\0"
	.align
_Label_4055:
	.byte	'?'
	.ascii	"_temp_4052\0"
	.align
_Label_4056:
	.byte	'?'
	.ascii	"_temp_4048\0"
	.align
_Label_4057:
	.byte	'?'
	.ascii	"_temp_4047\0"
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
_Label_4544:
	push	r0
	sub	r1,1,r1
	bne	_Label_4544
	mov	3003,r13		! source line 3003
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3013,r13		! source line 3013
	mov	"\0\0SE",r10
!   _temp_4058 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_4059 = _temp_4058 + 4
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
	mov	3014,r13		! source line 3014
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3015,r13		! source line 3015
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
	mov	3016,r13		! source line 3016
	mov	"\0\0SE",r10
!   _temp_4060 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_4061 = _temp_4060 + 4
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
	mov	3017,r13		! source line 3017
	mov	"\0\0RE",r10
	mov	3017,r13		! source line 3017
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_4064 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_4063  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_4062  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_4062  (sizeInBytes=1)
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
	.word	_Label_4065
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_4066
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4067
	.word	12
	.word	4
	.word	_Label_4068
	.word	16
	.word	4
	.word	_Label_4069
	.word	-16
	.word	4
	.word	_Label_4070
	.word	-20
	.word	4
	.word	_Label_4071
	.word	-9
	.word	1
	.word	_Label_4072
	.word	-24
	.word	4
	.word	_Label_4073
	.word	-28
	.word	4
	.word	_Label_4074
	.word	-32
	.word	4
	.word	_Label_4075
	.word	-36
	.word	4
	.word	_Label_4076
	.word	-40
	.word	4
	.word	0
_Label_4065:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_4066:
	.ascii	"Pself\0"
	.align
_Label_4067:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_4068:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4069:
	.byte	'?'
	.ascii	"_temp_4064\0"
	.align
_Label_4070:
	.byte	'?'
	.ascii	"_temp_4063\0"
	.align
_Label_4071:
	.byte	'C'
	.ascii	"_temp_4062\0"
	.align
_Label_4072:
	.byte	'?'
	.ascii	"_temp_4061\0"
	.align
_Label_4073:
	.byte	'?'
	.ascii	"_temp_4060\0"
	.align
_Label_4074:
	.byte	'?'
	.ascii	"_temp_4059\0"
	.align
_Label_4075:
	.byte	'?'
	.ascii	"_temp_4058\0"
	.align
_Label_4076:
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
_Label_4545:
	push	r0
	sub	r1,1,r1
	bne	_Label_4545
	mov	3022,r13		! source line 3022
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3027,r13		! source line 3027
	mov	"\0\0IF",r10
	mov	3027,r13		! source line 3027
	mov	"\0\0SE",r10
!   _temp_4080 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_4081) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4080  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_4079  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4079 then goto _Label_4078 else goto _Label_4077
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4077
	jmp	_Label_4078
_Label_4077:
! THEN...
	mov	3028,r13		! source line 3028
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4082 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4082  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3028,r13		! source line 3028
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4078:
! RETURN STATEMENT...
	mov	3030,r13		! source line 3030
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
	.word	_Label_4083
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_4084
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4085
	.word	-16
	.word	4
	.word	_Label_4086
	.word	-20
	.word	4
	.word	_Label_4087
	.word	-24
	.word	4
	.word	_Label_4088
	.word	-9
	.word	1
	.word	_Label_4089
	.word	-28
	.word	4
	.word	0
_Label_4083:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_4084:
	.ascii	"Pself\0"
	.align
_Label_4085:
	.byte	'?'
	.ascii	"_temp_4082\0"
	.align
_Label_4086:
	.byte	'?'
	.ascii	"_temp_4081\0"
	.align
_Label_4087:
	.byte	'?'
	.ascii	"_temp_4080\0"
	.align
_Label_4088:
	.byte	'C'
	.ascii	"_temp_4079\0"
	.align
_Label_4089:
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
_Label_4546:
	push	r0
	sub	r1,1,r1
	bne	_Label_4546
	mov	3035,r13		! source line 3035
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3061,r13		! source line 3061
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4093 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_4092 = *_temp_4093  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_4092) then goto _Label_4091
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_4091
!	jmp	_Label_4090
_Label_4090:
! THEN...
	mov	3062,r13		! source line 3062
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4094 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_4094  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3062,r13		! source line 3062
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4091:
! IF STATEMENT...
	mov	3066,r13		! source line 3066
	mov	"\0\0IF",r10
	mov	3066,r13		! source line 3066
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_4098) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4097  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_4097 == 1112300152 then goto _Label_4096		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_4096
!	jmp	_Label_4095
_Label_4095:
! THEN...
	mov	3067,r13		! source line 3067
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4099 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_4099  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3067,r13		! source line 3067
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3068,r13		! source line 3068
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4096:
! ASSIGNMENT STATEMENT...
	mov	3072,r13		! source line 3072
	mov	"\0\0AS",r10
	mov	3072,r13		! source line 3072
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_4100) then goto _runtimeErrorNullPointer
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
	mov	3073,r13		! source line 3073
	mov	"\0\0AS",r10
	mov	3073,r13		! source line 3073
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_4101) then goto _runtimeErrorNullPointer
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
	mov	3074,r13		! source line 3074
	mov	"\0\0AS",r10
	mov	3074,r13		! source line 3074
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_4102) then goto _runtimeErrorNullPointer
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
	mov	3075,r13		! source line 3075
	mov	"\0\0AS",r10
	mov	3075,r13		! source line 3075
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_4103) then goto _runtimeErrorNullPointer
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
	mov	3076,r13		! source line 3076
	mov	"\0\0AS",r10
	mov	3076,r13		! source line 3076
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_4104) then goto _runtimeErrorNullPointer
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
	mov	3077,r13		! source line 3077
	mov	"\0\0AS",r10
	mov	3077,r13		! source line 3077
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_4105) then goto _runtimeErrorNullPointer
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
	mov	3080,r13		! source line 3080
	mov	"\0\0IF",r10
!   _temp_4108 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_4108) then goto _Label_4107
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_4107
!	jmp	_Label_4106
_Label_4106:
! THEN...
	mov	3081,r13		! source line 3081
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4109 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_4109  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3081,r13		! source line 3081
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3082,r13		! source line 3082
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4107:
! ASSIGNMENT STATEMENT...
	mov	3084,r13		! source line 3084
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
	mov	3088,r13		! source line 3088
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_4111
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_4111
!	jmp	_Label_4110
_Label_4110:
! THEN...
	mov	3089,r13		! source line 3089
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4112 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_4112  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3089,r13		! source line 3089
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3090,r13		! source line 3090
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
! IF STATEMENT...
	mov	3094,r13		! source line 3094
	mov	"\0\0IF",r10
!   _temp_4115 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_4115) then goto _Label_4114
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_4114
!	jmp	_Label_4113
_Label_4113:
! THEN...
	mov	3095,r13		! source line 3095
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4116 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_4116  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3095,r13		! source line 3095
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3096,r13		! source line 3096
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4114:
! IF STATEMENT...
	mov	3098,r13		! source line 3098
	mov	"\0\0IF",r10
!   _temp_4119 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_4119 then goto _Label_4118		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_4118
!	jmp	_Label_4117
_Label_4117:
! THEN...
	mov	3099,r13		! source line 3099
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4120 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_4120  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3099,r13		! source line 3099
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3100,r13		! source line 3100
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
! ASSIGNMENT STATEMENT...
	mov	3102,r13		! source line 3102
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
	mov	3105,r13		! source line 3105
	mov	"\0\0IF",r10
!   _temp_4123 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_4123) then goto _Label_4122
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_4122
!	jmp	_Label_4121
_Label_4121:
! THEN...
	mov	3106,r13		! source line 3106
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4124 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_4124  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3106,r13		! source line 3106
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3107,r13		! source line 3107
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
! IF STATEMENT...
	mov	3109,r13		! source line 3109
	mov	"\0\0IF",r10
!   _temp_4127 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_4127 then goto _Label_4126		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_4126
!	jmp	_Label_4125
_Label_4125:
! THEN...
	mov	3110,r13		! source line 3110
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4128 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_4128  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3110,r13		! source line 3110
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3111,r13		! source line 3111
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
! ASSIGNMENT STATEMENT...
	mov	3113,r13		! source line 3113
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
	mov	3116,r13		! source line 3116
	mov	"\0\0AS",r10
!   _temp_4131 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_4130 = _temp_4131 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_4129 = _temp_4130 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_4129 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3131,r13		! source line 3131
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_4133		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4133
!	jmp	_Label_4132
_Label_4132:
! THEN...
	mov	3132,r13		! source line 3132
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4134 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_4134  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3132,r13		! source line 3132
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_4135 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_4135  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3133,r13		! source line 3133
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_4136 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_4136  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3134,r13		! source line 3134
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3135,r13		! source line 3135
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4133:
! SEND STATEMENT...
	mov	3137,r13		! source line 3137
	mov	"\0\0SE",r10
!   _temp_4137 = &_P_Kernel_frameManager
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
	mov	3143,r13		! source line 3143
	mov	"\0\0IF",r10
	mov	3143,r13		! source line 3143
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_4141) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4140  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_4140 == 707406378 then goto _Label_4139		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4139
!	jmp	_Label_4138
_Label_4138:
! THEN...
	mov	3144,r13		! source line 3144
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4142 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_4142  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3144,r13		! source line 3144
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3145,r13		! source line 3145
	mov	"\0\0SE",r10
!   _temp_4143 = &_P_Kernel_frameManager
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
	mov	3146,r13		! source line 3146
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4139:
! ASSIGNMENT STATEMENT...
	mov	3150,r13		! source line 3150
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
	mov	3151,r13		! source line 3151
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4148 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4149 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4148  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_4144:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4149 then goto _Label_4147		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4147
_Label_4145:
	mov	3151,r13		! source line 3151
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3152,r13		! source line 3152
	mov	"\0\0AS",r10
	mov	3152,r13		! source line 3152
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
	mov	3155,r13		! source line 3155
	mov	"\0\0IF",r10
	mov	3155,r13		! source line 3155
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_4153) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4152  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_4152 then goto _Label_4151 else goto _Label_4150
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4150
	jmp	_Label_4151
_Label_4150:
! THEN...
	mov	3156,r13		! source line 3156
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4154 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_4154  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3156,r13		! source line 3156
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3157,r13		! source line 3157
	mov	"\0\0SE",r10
!   _temp_4155 = &_P_Kernel_frameManager
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
	mov	3158,r13		! source line 3158
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4151:
! SEND STATEMENT...
	mov	3160,r13		! source line 3160
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
	mov	3161,r13		! source line 3161
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4146:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4144
! END FOR
_Label_4147:
! IF STATEMENT...
	mov	3165,r13		! source line 3165
	mov	"\0\0IF",r10
	mov	3165,r13		! source line 3165
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_4159) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4158  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_4158 == 707406378 then goto _Label_4157		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4157
!	jmp	_Label_4156
_Label_4156:
! THEN...
	mov	3166,r13		! source line 3166
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4160 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_4160  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3166,r13		! source line 3166
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3167,r13		! source line 3167
	mov	"\0\0SE",r10
!   _temp_4161 = &_P_Kernel_frameManager
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
	mov	3168,r13		! source line 3168
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4157:
! FOR STATEMENT...
	mov	3172,r13		! source line 3172
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4166 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4167 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4166  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_4162:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4167 then goto _Label_4165		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4165
_Label_4163:
	mov	3172,r13		! source line 3172
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3173,r13		! source line 3173
	mov	"\0\0AS",r10
	mov	3173,r13		! source line 3173
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
	mov	3176,r13		! source line 3176
	mov	"\0\0IF",r10
	mov	3176,r13		! source line 3176
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_4171) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4170  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4170 then goto _Label_4169 else goto _Label_4168
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4168
	jmp	_Label_4169
_Label_4168:
! THEN...
	mov	3177,r13		! source line 3177
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4172 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_4172  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3177,r13		! source line 3177
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3178,r13		! source line 3178
	mov	"\0\0SE",r10
!   _temp_4173 = &_P_Kernel_frameManager
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
	mov	3179,r13		! source line 3179
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4169:
! ASSIGNMENT STATEMENT...
	mov	3181,r13		! source line 3181
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4164:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4162
! END FOR
_Label_4165:
! IF STATEMENT...
	mov	3185,r13		! source line 3185
	mov	"\0\0IF",r10
	mov	3185,r13		! source line 3185
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_4177) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4176  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_4176 == 707406378 then goto _Label_4175		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4175
!	jmp	_Label_4174
_Label_4174:
! THEN...
	mov	3186,r13		! source line 3186
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4178 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4178  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3186,r13		! source line 3186
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3187,r13		! source line 3187
	mov	"\0\0SE",r10
!   _temp_4179 = &_P_Kernel_frameManager
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
	mov	3188,r13		! source line 3188
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4175:
! ASSIGNMENT STATEMENT...
	mov	3192,r13		! source line 3192
	mov	"\0\0AS",r10
	mov	3192,r13		! source line 3192
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
	mov	3196,r13		! source line 3196
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3199,r13		! source line 3199
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
	.word	_Label_4180
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_4181
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4182
	.word	12
	.word	4
	.word	_Label_4183
	.word	-16
	.word	4
	.word	_Label_4184
	.word	-20
	.word	4
	.word	_Label_4185
	.word	-24
	.word	4
	.word	_Label_4186
	.word	-28
	.word	4
	.word	_Label_4187
	.word	-32
	.word	4
	.word	_Label_4188
	.word	-36
	.word	4
	.word	_Label_4189
	.word	-40
	.word	4
	.word	_Label_4190
	.word	-9
	.word	1
	.word	_Label_4191
	.word	-44
	.word	4
	.word	_Label_4192
	.word	-48
	.word	4
	.word	_Label_4193
	.word	-52
	.word	4
	.word	_Label_4194
	.word	-56
	.word	4
	.word	_Label_4195
	.word	-60
	.word	4
	.word	_Label_4196
	.word	-64
	.word	4
	.word	_Label_4197
	.word	-68
	.word	4
	.word	_Label_4198
	.word	-72
	.word	4
	.word	_Label_4199
	.word	-76
	.word	4
	.word	_Label_4200
	.word	-10
	.word	1
	.word	_Label_4201
	.word	-80
	.word	4
	.word	_Label_4202
	.word	-84
	.word	4
	.word	_Label_4203
	.word	-88
	.word	4
	.word	_Label_4204
	.word	-92
	.word	4
	.word	_Label_4205
	.word	-96
	.word	4
	.word	_Label_4206
	.word	-100
	.word	4
	.word	_Label_4207
	.word	-104
	.word	4
	.word	_Label_4208
	.word	-108
	.word	4
	.word	_Label_4209
	.word	-112
	.word	4
	.word	_Label_4210
	.word	-116
	.word	4
	.word	_Label_4211
	.word	-120
	.word	4
	.word	_Label_4212
	.word	-124
	.word	4
	.word	_Label_4213
	.word	-128
	.word	4
	.word	_Label_4214
	.word	-132
	.word	4
	.word	_Label_4215
	.word	-136
	.word	4
	.word	_Label_4216
	.word	-140
	.word	4
	.word	_Label_4217
	.word	-144
	.word	4
	.word	_Label_4218
	.word	-148
	.word	4
	.word	_Label_4219
	.word	-152
	.word	4
	.word	_Label_4220
	.word	-156
	.word	4
	.word	_Label_4221
	.word	-160
	.word	4
	.word	_Label_4222
	.word	-164
	.word	4
	.word	_Label_4223
	.word	-168
	.word	4
	.word	_Label_4224
	.word	-172
	.word	4
	.word	_Label_4225
	.word	-176
	.word	4
	.word	_Label_4226
	.word	-180
	.word	4
	.word	_Label_4227
	.word	-184
	.word	4
	.word	_Label_4228
	.word	-188
	.word	4
	.word	_Label_4229
	.word	-192
	.word	4
	.word	_Label_4230
	.word	-196
	.word	4
	.word	_Label_4231
	.word	-200
	.word	4
	.word	_Label_4232
	.word	-204
	.word	4
	.word	_Label_4233
	.word	-208
	.word	4
	.word	_Label_4234
	.word	-212
	.word	4
	.word	_Label_4235
	.word	-216
	.word	4
	.word	_Label_4236
	.word	-220
	.word	4
	.word	_Label_4237
	.word	-224
	.word	4
	.word	_Label_4238
	.word	-228
	.word	4
	.word	_Label_4239
	.word	-232
	.word	4
	.word	_Label_4240
	.word	-236
	.word	4
	.word	_Label_4241
	.word	-240
	.word	4
	.word	_Label_4242
	.word	-244
	.word	4
	.word	_Label_4243
	.word	-248
	.word	4
	.word	_Label_4244
	.word	-252
	.word	4
	.word	_Label_4245
	.word	-256
	.word	4
	.word	_Label_4246
	.word	-260
	.word	4
	.word	_Label_4247
	.word	-264
	.word	4
	.word	_Label_4248
	.word	-268
	.word	4
	.word	0
_Label_4180:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_4181:
	.ascii	"Pself\0"
	.align
_Label_4182:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_4183:
	.byte	'?'
	.ascii	"_temp_4179\0"
	.align
_Label_4184:
	.byte	'?'
	.ascii	"_temp_4178\0"
	.align
_Label_4185:
	.byte	'?'
	.ascii	"_temp_4177\0"
	.align
_Label_4186:
	.byte	'?'
	.ascii	"_temp_4176\0"
	.align
_Label_4187:
	.byte	'?'
	.ascii	"_temp_4173\0"
	.align
_Label_4188:
	.byte	'?'
	.ascii	"_temp_4172\0"
	.align
_Label_4189:
	.byte	'?'
	.ascii	"_temp_4171\0"
	.align
_Label_4190:
	.byte	'C'
	.ascii	"_temp_4170\0"
	.align
_Label_4191:
	.byte	'?'
	.ascii	"_temp_4167\0"
	.align
_Label_4192:
	.byte	'?'
	.ascii	"_temp_4166\0"
	.align
_Label_4193:
	.byte	'?'
	.ascii	"_temp_4161\0"
	.align
_Label_4194:
	.byte	'?'
	.ascii	"_temp_4160\0"
	.align
_Label_4195:
	.byte	'?'
	.ascii	"_temp_4159\0"
	.align
_Label_4196:
	.byte	'?'
	.ascii	"_temp_4158\0"
	.align
_Label_4197:
	.byte	'?'
	.ascii	"_temp_4155\0"
	.align
_Label_4198:
	.byte	'?'
	.ascii	"_temp_4154\0"
	.align
_Label_4199:
	.byte	'?'
	.ascii	"_temp_4153\0"
	.align
_Label_4200:
	.byte	'C'
	.ascii	"_temp_4152\0"
	.align
_Label_4201:
	.byte	'?'
	.ascii	"_temp_4149\0"
	.align
_Label_4202:
	.byte	'?'
	.ascii	"_temp_4148\0"
	.align
_Label_4203:
	.byte	'?'
	.ascii	"_temp_4143\0"
	.align
_Label_4204:
	.byte	'?'
	.ascii	"_temp_4142\0"
	.align
_Label_4205:
	.byte	'?'
	.ascii	"_temp_4141\0"
	.align
_Label_4206:
	.byte	'?'
	.ascii	"_temp_4140\0"
	.align
_Label_4207:
	.byte	'?'
	.ascii	"_temp_4137\0"
	.align
_Label_4208:
	.byte	'?'
	.ascii	"_temp_4136\0"
	.align
_Label_4209:
	.byte	'?'
	.ascii	"_temp_4135\0"
	.align
_Label_4210:
	.byte	'?'
	.ascii	"_temp_4134\0"
	.align
_Label_4211:
	.byte	'?'
	.ascii	"_temp_4131\0"
	.align
_Label_4212:
	.byte	'?'
	.ascii	"_temp_4130\0"
	.align
_Label_4213:
	.byte	'?'
	.ascii	"_temp_4129\0"
	.align
_Label_4214:
	.byte	'?'
	.ascii	"_temp_4128\0"
	.align
_Label_4215:
	.byte	'?'
	.ascii	"_temp_4127\0"
	.align
_Label_4216:
	.byte	'?'
	.ascii	"_temp_4124\0"
	.align
_Label_4217:
	.byte	'?'
	.ascii	"_temp_4123\0"
	.align
_Label_4218:
	.byte	'?'
	.ascii	"_temp_4120\0"
	.align
_Label_4219:
	.byte	'?'
	.ascii	"_temp_4119\0"
	.align
_Label_4220:
	.byte	'?'
	.ascii	"_temp_4116\0"
	.align
_Label_4221:
	.byte	'?'
	.ascii	"_temp_4115\0"
	.align
_Label_4222:
	.byte	'?'
	.ascii	"_temp_4112\0"
	.align
_Label_4223:
	.byte	'?'
	.ascii	"_temp_4109\0"
	.align
_Label_4224:
	.byte	'?'
	.ascii	"_temp_4108\0"
	.align
_Label_4225:
	.byte	'?'
	.ascii	"_temp_4105\0"
	.align
_Label_4226:
	.byte	'?'
	.ascii	"_temp_4104\0"
	.align
_Label_4227:
	.byte	'?'
	.ascii	"_temp_4103\0"
	.align
_Label_4228:
	.byte	'?'
	.ascii	"_temp_4102\0"
	.align
_Label_4229:
	.byte	'?'
	.ascii	"_temp_4101\0"
	.align
_Label_4230:
	.byte	'?'
	.ascii	"_temp_4100\0"
	.align
_Label_4231:
	.byte	'?'
	.ascii	"_temp_4099\0"
	.align
_Label_4232:
	.byte	'?'
	.ascii	"_temp_4098\0"
	.align
_Label_4233:
	.byte	'?'
	.ascii	"_temp_4097\0"
	.align
_Label_4234:
	.byte	'?'
	.ascii	"_temp_4094\0"
	.align
_Label_4235:
	.byte	'?'
	.ascii	"_temp_4093\0"
	.align
_Label_4236:
	.byte	'?'
	.ascii	"_temp_4092\0"
	.align
_Label_4237:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_4238:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_4239:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_4240:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_4241:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_4242:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_4243:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_4244:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_4245:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_4246:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_4247:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_4248:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_4249
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_2	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_3	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_4249:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4250
	.word	_sourceFileName
	.word	402		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_4250:
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
_Label_4547:
	push	r0
	sub	r1,1,r1
	bne	_Label_4547
	mov	3216,r13		! source line 3216
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4251 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_4251  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	3220,r13		! source line 3220
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	3221,r13		! source line 3221
	mov	"\0\0AS",r10
!   serial_status_word_address = 16776960		(4 bytes)
	set	16776960,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	3222,r13		! source line 3222
	mov	"\0\0AS",r10
!   serial_data_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	3223,r13		! source line 3223
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
	mov	3224,r13		! source line 3224
	mov	"\0\0SE",r10
!   _temp_4253 = &serialLock
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
	mov	3225,r13		! source line 3225
	mov	"\0\0AS",r10
!   _temp_4254 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   NEW ARRAY Constructor...
!   _temp_4256 = &_temp_4255
	add	r14,-108,r1
	store	r1,[r14+-92]
!   _temp_4256 = _temp_4256 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Next value...
	mov	10,r1
	store	r1,[r14+-88]
_Label_4258:
!   Data Move: *_temp_4256 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-92],r2
	storeb	r1,[r2]
!   _temp_4256 = _temp_4256 + 1
	load	[r14+-92],r1
	add	r1,1,r1
	store	r1,[r14+-92]
!   _temp_4257 = _temp_4257 + -1
	load	[r14+-88],r1
	add	r1,-1,r1
	store	r1,[r14+-88]
!   if intNotZero (_temp_4257) then goto _Label_4258
	load	[r14+-88],r1
	cmp	r1,r0
	bne	_Label_4258
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-108]
!   _temp_4259 = &_temp_4255
	add	r14,-108,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-112],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4548
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4548:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4254 = *_temp_4259  (sizeInBytes=16)
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
	mov	3226,r13		! source line 3226
	mov	"\0\0AS",r10
!   getBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3227,r13		! source line 3227
	mov	"\0\0AS",r10
!   putBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3228,r13		! source line 3228
	mov	"\0\0AS",r10
!   getBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3229,r13		! source line 3229
	mov	"\0\0AS",r10
!   getBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3230,r13		! source line 3230
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
	mov	3231,r13		! source line 3231
	mov	"\0\0SE",r10
!   _temp_4261 = &getCharacterAvail
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
	mov	3232,r13		! source line 3232
	mov	"\0\0AS",r10
!   _temp_4262 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-72]
!   NEW ARRAY Constructor...
!   _temp_4264 = &_temp_4263
	add	r14,-68,r1
	store	r1,[r14+-52]
!   _temp_4264 = _temp_4264 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Next value...
	mov	10,r1
	store	r1,[r14+-48]
_Label_4266:
!   Data Move: *_temp_4264 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-52],r2
	storeb	r1,[r2]
!   _temp_4264 = _temp_4264 + 1
	load	[r14+-52],r1
	add	r1,1,r1
	store	r1,[r14+-52]
!   _temp_4265 = _temp_4265 + -1
	load	[r14+-48],r1
	add	r1,-1,r1
	store	r1,[r14+-48]
!   if intNotZero (_temp_4265) then goto _Label_4266
	load	[r14+-48],r1
	cmp	r1,r0
	bne	_Label_4266
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-68]
!   _temp_4267 = &_temp_4263
	add	r14,-68,r1
	store	r1,[r14+-44]
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4549
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4549:
!   make sure array has size 10
	load	[r14+-44],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4262 = *_temp_4267  (sizeInBytes=16)
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
	mov	3233,r13		! source line 3233
	mov	"\0\0AS",r10
!   putBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3234,r13		! source line 3234
	mov	"\0\0AS",r10
!   putBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3235,r13		! source line 3235
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
	mov	3236,r13		! source line 3236
	mov	"\0\0SE",r10
!   _temp_4269 = &putBufferSem
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
	mov	3237,r13		! source line 3237
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
	mov	3238,r13		! source line 3238
	mov	"\0\0SE",r10
!   _temp_4271 = &serialNeedsAttention
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
	mov	3240,r13		! source line 3240
	mov	"\0\0AS",r10
	mov	3240,r13		! source line 3240
	mov	"\0\0SE",r10
!   _temp_4272 = &_P_Kernel_threadManager
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
	mov	3241,r13		! source line 3241
	mov	"\0\0SE",r10
!   _temp_4273 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4273  sizeInBytes=4
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
	mov	3242,r13		! source line 3242
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4274 = newThread + 76
	load	[r14+-128],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_4274 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3243,r13		! source line 3243
	mov	"\0\0SE",r10
!   _temp_4275 = _function_190_SerialHandlerFunction
	set	_function_190_SerialHandlerFunction,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4275  sizeInBytes=4
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
	mov	3245,r13		! source line 3245
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 1		(1 byte)
	mov	1,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3245,r13		! source line 3245
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
	.word	_Label_4276
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_4277
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4278
	.word	-12
	.word	4
	.word	_Label_4279
	.word	-16
	.word	4
	.word	_Label_4280
	.word	-20
	.word	4
	.word	_Label_4281
	.word	-24
	.word	4
	.word	_Label_4282
	.word	-28
	.word	4
	.word	_Label_4283
	.word	-32
	.word	4
	.word	_Label_4284
	.word	-36
	.word	4
	.word	_Label_4285
	.word	-40
	.word	4
	.word	_Label_4286
	.word	-44
	.word	4
	.word	_Label_4287
	.word	-48
	.word	4
	.word	_Label_4288
	.word	-52
	.word	4
	.word	_Label_4289
	.word	-68
	.word	16
	.word	_Label_4290
	.word	-72
	.word	4
	.word	_Label_4291
	.word	-76
	.word	4
	.word	_Label_4292
	.word	-80
	.word	4
	.word	_Label_4293
	.word	-84
	.word	4
	.word	_Label_4294
	.word	-88
	.word	4
	.word	_Label_4295
	.word	-92
	.word	4
	.word	_Label_4296
	.word	-108
	.word	16
	.word	_Label_4297
	.word	-112
	.word	4
	.word	_Label_4298
	.word	-116
	.word	4
	.word	_Label_4299
	.word	-120
	.word	4
	.word	_Label_4300
	.word	-124
	.word	4
	.word	_Label_4301
	.word	-128
	.word	4
	.word	0
_Label_4276:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4277:
	.ascii	"Pself\0"
	.align
_Label_4278:
	.byte	'?'
	.ascii	"_temp_4275\0"
	.align
_Label_4279:
	.byte	'?'
	.ascii	"_temp_4274\0"
	.align
_Label_4280:
	.byte	'?'
	.ascii	"_temp_4273\0"
	.align
_Label_4281:
	.byte	'?'
	.ascii	"_temp_4272\0"
	.align
_Label_4282:
	.byte	'?'
	.ascii	"_temp_4271\0"
	.align
_Label_4283:
	.byte	'?'
	.ascii	"_temp_4270\0"
	.align
_Label_4284:
	.byte	'?'
	.ascii	"_temp_4269\0"
	.align
_Label_4285:
	.byte	'?'
	.ascii	"_temp_4268\0"
	.align
_Label_4286:
	.byte	'?'
	.ascii	"_temp_4267\0"
	.align
_Label_4287:
	.byte	'?'
	.ascii	"_temp_4265\0"
	.align
_Label_4288:
	.byte	'?'
	.ascii	"_temp_4264\0"
	.align
_Label_4289:
	.byte	'?'
	.ascii	"_temp_4263\0"
	.align
_Label_4290:
	.byte	'?'
	.ascii	"_temp_4262\0"
	.align
_Label_4291:
	.byte	'?'
	.ascii	"_temp_4261\0"
	.align
_Label_4292:
	.byte	'?'
	.ascii	"_temp_4260\0"
	.align
_Label_4293:
	.byte	'?'
	.ascii	"_temp_4259\0"
	.align
_Label_4294:
	.byte	'?'
	.ascii	"_temp_4257\0"
	.align
_Label_4295:
	.byte	'?'
	.ascii	"_temp_4256\0"
	.align
_Label_4296:
	.byte	'?'
	.ascii	"_temp_4255\0"
	.align
_Label_4297:
	.byte	'?'
	.ascii	"_temp_4254\0"
	.align
_Label_4298:
	.byte	'?'
	.ascii	"_temp_4253\0"
	.align
_Label_4299:
	.byte	'?'
	.ascii	"_temp_4252\0"
	.align
_Label_4300:
	.byte	'?'
	.ascii	"_temp_4251\0"
	.align
_Label_4301:
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
_Label_4550:
	push	r0
	sub	r1,1,r1
	bne	_Label_4550
	mov	3251,r13		! source line 3251
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3252,r13		! source line 3252
	mov	"\0\0SE",r10
!   _temp_4302 = &putBufferSem
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
	mov	3253,r13		! source line 3253
	mov	"\0\0SE",r10
!   _temp_4303 = &serialLock
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
	mov	3254,r13		! source line 3254
	mov	"\0\0AS",r10
!   _temp_4304 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Move address of _temp_4304 [putBufferNextIn ] into _temp_4305
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
!   Data Move: *_temp_4305 = value  (sizeInBytes=1)
	loadb	[r14+12],r1
	load	[r14+-24],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3255,r13		! source line 3255
	mov	"\0\0AS",r10
!   _temp_4306 = putBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   putBufferNextIn = _temp_4306 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3256,r13		! source line 3256
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
	mov	3257,r13		! source line 3257
	mov	"\0\0SE",r10
!   _temp_4307 = &serialLock
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
	mov	3258,r13		! source line 3258
	mov	"\0\0SE",r10
!   _temp_4308 = &serialNeedsAttention
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
	mov	3258,r13		! source line 3258
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
	.word	_Label_4309
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_4310
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4311
	.word	12
	.word	1
	.word	_Label_4312
	.word	-12
	.word	4
	.word	_Label_4313
	.word	-16
	.word	4
	.word	_Label_4314
	.word	-20
	.word	4
	.word	_Label_4315
	.word	-24
	.word	4
	.word	_Label_4316
	.word	-28
	.word	4
	.word	_Label_4317
	.word	-32
	.word	4
	.word	_Label_4318
	.word	-36
	.word	4
	.word	0
_Label_4309:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_4310:
	.ascii	"Pself\0"
	.align
_Label_4311:
	.byte	'C'
	.ascii	"value\0"
	.align
_Label_4312:
	.byte	'?'
	.ascii	"_temp_4308\0"
	.align
_Label_4313:
	.byte	'?'
	.ascii	"_temp_4307\0"
	.align
_Label_4314:
	.byte	'?'
	.ascii	"_temp_4306\0"
	.align
_Label_4315:
	.byte	'?'
	.ascii	"_temp_4305\0"
	.align
_Label_4316:
	.byte	'?'
	.ascii	"_temp_4304\0"
	.align
_Label_4317:
	.byte	'?'
	.ascii	"_temp_4303\0"
	.align
_Label_4318:
	.byte	'?'
	.ascii	"_temp_4302\0"
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
_Label_4551:
	push	r0
	sub	r1,1,r1
	bne	_Label_4551
	mov	3264,r13		! source line 3264
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3268,r13		! source line 3268
	mov	"\0\0SE",r10
!   _temp_4319 = &serialLock
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
	mov	3269,r13		! source line 3269
	mov	"\0\0WH",r10
_Label_4320:
!   if intIsZero (getBufferSize) then goto _Label_4321
	load	[r14+8],r1
	load	[r1+48],r1
	cmp	r1,r0
	be	_Label_4321
	jmp	_Label_4322
_Label_4321:
	mov	3269,r13		! source line 3269
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3270,r13		! source line 3270
	mov	"\0\0SE",r10
!   _temp_4323 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   _temp_4324 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_4323  sizeInBytes=4
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
	jmp	_Label_4320
_Label_4322:
! ASSIGNMENT STATEMENT...
	mov	3273,r13		! source line 3273
	mov	"\0\0AS",r10
!   _temp_4325 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Move address of _temp_4325 [getBufferNextOut ] into _temp_4326
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
!   Data Move: ch = *_temp_4326  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3274,r13		! source line 3274
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
	mov	3275,r13		! source line 3275
	mov	"\0\0AS",r10
!   _temp_4327 = getBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   getBufferNextOut = _temp_4327 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! SEND STATEMENT...
	mov	3276,r13		! source line 3276
	mov	"\0\0SE",r10
!   _temp_4328 = &serialLock
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
	mov	3277,r13		! source line 3277
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
	.word	_Label_4329
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_4330
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4331
	.word	-16
	.word	4
	.word	_Label_4332
	.word	-20
	.word	4
	.word	_Label_4333
	.word	-24
	.word	4
	.word	_Label_4334
	.word	-28
	.word	4
	.word	_Label_4335
	.word	-32
	.word	4
	.word	_Label_4336
	.word	-36
	.word	4
	.word	_Label_4337
	.word	-40
	.word	4
	.word	_Label_4338
	.word	-9
	.word	1
	.word	0
_Label_4329:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_4330:
	.ascii	"Pself\0"
	.align
_Label_4331:
	.byte	'?'
	.ascii	"_temp_4328\0"
	.align
_Label_4332:
	.byte	'?'
	.ascii	"_temp_4327\0"
	.align
_Label_4333:
	.byte	'?'
	.ascii	"_temp_4326\0"
	.align
_Label_4334:
	.byte	'?'
	.ascii	"_temp_4325\0"
	.align
_Label_4335:
	.byte	'?'
	.ascii	"_temp_4324\0"
	.align
_Label_4336:
	.byte	'?'
	.ascii	"_temp_4323\0"
	.align
_Label_4337:
	.byte	'?'
	.ascii	"_temp_4319\0"
	.align
_Label_4338:
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
_Label_4552:
	push	r0
	sub	r1,1,r1
	bne	_Label_4552
	mov	3283,r13		! source line 3283
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	3288,r13		! source line 3288
	mov	"\0\0WH",r10
_Label_4339:
!   _temp_4342 = _P_Kernel_serialHasBeenInitialized XOR 0		(bool)
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_4342 then goto _Label_4341 else goto _Label_4340
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4340
	jmp	_Label_4341
_Label_4340:
	mov	3288,r13		! source line 3288
	mov	"\0\0WB",r10
! END WHILE...
	jmp	_Label_4339
_Label_4341:
! WHILE STATEMENT...
	mov	3292,r13		! source line 3292
	mov	"\0\0WH",r10
_Label_4343:
!	jmp	_Label_4344
_Label_4344:
	mov	3292,r13		! source line 3292
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3293,r13		! source line 3293
	mov	"\0\0SE",r10
!   _temp_4346 = &serialNeedsAttention
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
	mov	3294,r13		! source line 3294
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
	mov	3296,r13		! source line 3296
	mov	"\0\0IF",r10
!   _temp_4349 = status AND 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-88]
!   if _temp_4349 <= 0 then goto _Label_4348		(int)
	load	[r14+-88],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4348
!	jmp	_Label_4347
_Label_4347:
! THEN...
	mov	3297,r13		! source line 3297
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3297,r13		! source line 3297
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4350 = *serial_data_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+8],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   ch = intToChar (_temp_4350)
	load	[r14+-84],r1
	storeb	r1,[r14+-10]
! IF STATEMENT...
	mov	3298,r13		! source line 3298
	mov	"\0\0IF",r10
!   if getBufferSize != 10 then goto _Label_4352		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_4352
!	jmp	_Label_4351
_Label_4351:
! THEN...
	mov	3299,r13		! source line 3299
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4353 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_4353  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	3299,r13		! source line 3299
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ch  sizeInBytes=1
	loadb	[r14+-10],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3300,r13		! source line 3300
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_4354 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_4354  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	3301,r13		! source line 3301
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_4355
_Label_4352:
! ELSE...
	mov	3303,r13		! source line 3303
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3303,r13		! source line 3303
	mov	"\0\0SE",r10
!   _temp_4356 = &serialLock
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
	mov	3304,r13		! source line 3304
	mov	"\0\0AS",r10
!   _temp_4357 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Move address of _temp_4357 [getBufferNextIn ] into _temp_4358
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
!   Data Move: *_temp_4358 = ch  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-64],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3305,r13		! source line 3305
	mov	"\0\0AS",r10
!   _temp_4359 = getBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   getBufferNextIn = _temp_4359 rem 10		(int)
	load	[r14+-60],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3306,r13		! source line 3306
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
	mov	3307,r13		! source line 3307
	mov	"\0\0SE",r10
!   _temp_4360 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-56]
!   _temp_4361 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_4360  sizeInBytes=4
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
	mov	3308,r13		! source line 3308
	mov	"\0\0SE",r10
!   _temp_4362 = &serialLock
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
_Label_4355:
! END IF...
_Label_4348:
! IF STATEMENT...
	mov	3312,r13		! source line 3312
	mov	"\0\0IF",r10
!   _temp_4365 = status AND 2		(int)
	load	[r14+-96],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-44]
!   if _temp_4365 <= 0 then goto _Label_4364		(int)
	load	[r14+-44],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4364
!	jmp	_Label_4363
_Label_4363:
! THEN...
	mov	3313,r13		! source line 3313
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3313,r13		! source line 3313
	mov	"\0\0SE",r10
!   _temp_4366 = &serialLock
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
	mov	3314,r13		! source line 3314
	mov	"\0\0IF",r10
!   if putBufferSize <= 0 then goto _Label_4368		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4368
!	jmp	_Label_4367
_Label_4367:
! THEN...
	mov	3315,r13		! source line 3315
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3315,r13		! source line 3315
	mov	"\0\0AS",r10
!   _temp_4369 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Move address of _temp_4369 [putBufferNextOut ] into _temp_4370
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
!   Data Move: ch = *_temp_4370  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	3316,r13		! source line 3316
	mov	"\0\0AS",r10
!   _temp_4371 = putBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   putBufferNextOut = _temp_4371 rem 10		(int)
	load	[r14+-28],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3317,r13		! source line 3317
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
	mov	3318,r13		! source line 3318
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4372 = charToInt (ch)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: *serial_data_word_address = _temp_4372  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3319,r13		! source line 3319
	mov	"\0\0SE",r10
!   _temp_4373 = &putBufferSem
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
_Label_4368:
! SEND STATEMENT...
	mov	3321,r13		! source line 3321
	mov	"\0\0SE",r10
!   _temp_4374 = &serialLock
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
_Label_4364:
! END WHILE...
	jmp	_Label_4343
_Label_4345:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_4375
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_4376
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4377
	.word	-16
	.word	4
	.word	_Label_4378
	.word	-20
	.word	4
	.word	_Label_4379
	.word	-24
	.word	4
	.word	_Label_4380
	.word	-28
	.word	4
	.word	_Label_4381
	.word	-32
	.word	4
	.word	_Label_4382
	.word	-36
	.word	4
	.word	_Label_4383
	.word	-40
	.word	4
	.word	_Label_4384
	.word	-44
	.word	4
	.word	_Label_4385
	.word	-48
	.word	4
	.word	_Label_4386
	.word	-52
	.word	4
	.word	_Label_4387
	.word	-56
	.word	4
	.word	_Label_4388
	.word	-60
	.word	4
	.word	_Label_4389
	.word	-64
	.word	4
	.word	_Label_4390
	.word	-68
	.word	4
	.word	_Label_4391
	.word	-72
	.word	4
	.word	_Label_4392
	.word	-76
	.word	4
	.word	_Label_4393
	.word	-80
	.word	4
	.word	_Label_4394
	.word	-84
	.word	4
	.word	_Label_4395
	.word	-88
	.word	4
	.word	_Label_4396
	.word	-92
	.word	4
	.word	_Label_4397
	.word	-9
	.word	1
	.word	_Label_4398
	.word	-10
	.word	1
	.word	_Label_4399
	.word	-96
	.word	4
	.word	0
_Label_4375:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_4376:
	.ascii	"Pself\0"
	.align
_Label_4377:
	.byte	'?'
	.ascii	"_temp_4374\0"
	.align
_Label_4378:
	.byte	'?'
	.ascii	"_temp_4373\0"
	.align
_Label_4379:
	.byte	'?'
	.ascii	"_temp_4372\0"
	.align
_Label_4380:
	.byte	'?'
	.ascii	"_temp_4371\0"
	.align
_Label_4381:
	.byte	'?'
	.ascii	"_temp_4370\0"
	.align
_Label_4382:
	.byte	'?'
	.ascii	"_temp_4369\0"
	.align
_Label_4383:
	.byte	'?'
	.ascii	"_temp_4366\0"
	.align
_Label_4384:
	.byte	'?'
	.ascii	"_temp_4365\0"
	.align
_Label_4385:
	.byte	'?'
	.ascii	"_temp_4362\0"
	.align
_Label_4386:
	.byte	'?'
	.ascii	"_temp_4361\0"
	.align
_Label_4387:
	.byte	'?'
	.ascii	"_temp_4360\0"
	.align
_Label_4388:
	.byte	'?'
	.ascii	"_temp_4359\0"
	.align
_Label_4389:
	.byte	'?'
	.ascii	"_temp_4358\0"
	.align
_Label_4390:
	.byte	'?'
	.ascii	"_temp_4357\0"
	.align
_Label_4391:
	.byte	'?'
	.ascii	"_temp_4356\0"
	.align
_Label_4392:
	.byte	'?'
	.ascii	"_temp_4354\0"
	.align
_Label_4393:
	.byte	'?'
	.ascii	"_temp_4353\0"
	.align
_Label_4394:
	.byte	'?'
	.ascii	"_temp_4350\0"
	.align
_Label_4395:
	.byte	'?'
	.ascii	"_temp_4349\0"
	.align
_Label_4396:
	.byte	'?'
	.ascii	"_temp_4346\0"
	.align
_Label_4397:
	.byte	'C'
	.ascii	"_temp_4342\0"
	.align
_Label_4398:
	.byte	'C'
	.ascii	"ch\0"
	.align
_Label_4399:
	.byte	'I'
	.ascii	"status\0"
	.align

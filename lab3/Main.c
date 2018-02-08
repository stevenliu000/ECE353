code Main

  -- OS Class: Project 3
  --
  -- Weixin Liu
  --

  -- This package contains the following:
  --     Dining Philospohers
-----------------------------  Main  ---------------------------------

  function main ()
      InitializeScheduler ()

      -- DiningPhilosophers ()
      -- ThreadFinish()
      
      -- SleepingBarber()
      -- ThreadFinish()

      GamingParlor()
      ThreadFinish()


    endFunction




-----------------------------  Dining Philosophers  ----------------------------

  -- This code is an implementation of the Dining Philosophers problem.  Each
  -- philosopher is simulated with a thread.  Each philosopher thinks for a while
  -- and then wants to eat.  Before eating, he must pick up both his forks.
  -- After eating, he puts Down his forks.  Each fork is shared between
  -- two philosophers and there are 5 philosophers and 5 forks arranged in a
  -- circle.
  --
  -- Since the forks are shared, access to them is controlled by a monitor
  -- called "ForkMonitor".  The monitor is an object with two "entry" methods:
  --     PickupForks (phil)
  --     PutDownForks (phil)
  -- The philsophers are numbered 0 to 4 and each of these methods is passed an 
  -- integer indicating which philospher wants to pickup (or put Down) the forks.
  -- The call to "PickUpForks" will wait until both of his forks are
  -- available.  The call to "PutDownForks" will never wait and may also
  -- wake up threads (i.e., philosophers) who are waiting.
  --
  -- Each philospher is in exactly one state: HUNGRY, EATING, or THINKING.  Each
  -- time a philosopher's state changes, a line of output is printed.  The 
  -- output is organized so that each philosopher has column of output with the
  -- following code letters:
  --           E    --  eating
  --           .    --  thinking
  --         blank  --  hungry (i.e., waiting for forks)
  -- By reading Down a column, you can see the history of a philosopher.
  --
  -- The forks are not modeled explicitly.  A fork is only picked up
  -- by a philosopher if he can pick up both forks at the same time and begin
  -- eating.  To know whether a fork is available, it is sufficient to simply
  -- look at the status's of the two adjacent philosophers.  (Another way to 
  -- state the problem is to forget about the forks altogether and stipulate 
  -- that a philosopher may only eat when his two neighbors are not eating.)

  enum HUNGRY, EATING, THINKING
  var
    mon: ForkMonitor
    philospher: array [5] of Thread = new array of Thread {5 of new Thread }

  function DiningPhilosophers ()

      print ("Plato\n")
      print ("    Sartre\n")
      print ("        Kant\n")
      print ("            Nietzsche\n")
      print ("                Aristotle\n")

      mon = new ForkMonitor
      mon.Init ()
      mon.PrintAllStatus ()

      philospher[0].Init ("Plato")
      philospher[0].Fork (PhilosphizeAndEat, 0)

      philospher[1].Init ("Sartre")
      philospher[1].Fork (PhilosphizeAndEat, 1)

      philospher[2].Init ("Kant")
      philospher[2].Fork (PhilosphizeAndEat, 2)

      philospher[3].Init ("Nietzsche")
      philospher[3].Fork (PhilosphizeAndEat, 3)

      philospher[4].Init ("Aristotle")
      philospher[4].Fork (PhilosphizeAndEat, 4)

     endFunction

  function PhilosphizeAndEat (p: int)
    -- The parameter "p" identifies which philosopher this is.
    -- In a loop, he will think, acquire his forks, eat, and
    -- put Down his forks.
      var
        i: int
      for i = 1 to 7
        -- Now he is thinking
        mon.PickupForks (p)
        -- Now he is eating
        mon.PutDownForks (p)
      endFor
    endFunction

  class ForkMonitor
    superclass Object
    fields
      status: array [5] of int -- For each philosopher: HUNGRY, EATING, or THINKING
      monitorLock: Mutex
      con: array [5] of Condition
    methods
      Init ()
      PickupForks (p: int)
      PutDownForks (p: int)
      PrintAllStatus ()
  endClass

  behavior ForkMonitor

    method Init ()
      -- Initialize so that all philosophers are THINKING.
      -- ...unimplemented...

      var i: int

      status = new array of int {5 of THINKING}
      monitorLock = new Mutex
      monitorLock.Init()
      con = new array [5] of Condition {5 of new Condition}
      for i = 0 to 4
        con[i].Init()
      endFor


      endMethod

    method PickupForks (p: int)
      -- This method is called when philosopher 'p' wants to eat.
      -- ...unimplemented...

      var 
        left: int
        right: int
      monitorLock.Lock()
      status[p] = HUNGRY
      self.PrintAllStatus()
      left = (p + 4) % 5
      right = (p + 1) % 5
      if status[left] == EATING || status[right] == EATING
        con[p].Wait(& monitorLock)
      else
        status[p] = EATING
        self.PrintAllStatus()
      endIf
      monitorLock.Unlock()
      endMethod

    method PutDownForks (p: int)
      -- This method is called when the philosopher 'p' is done eating.
      -- ...unimplemented...

      var 
        left: int
        right: int
      monitorLock.Lock()
      status[p] = THINKING
      self.PrintAllStatus()
      left = (p + 4) % 5
      right = (p + 1) % 5
      if status[left] == HUNGRY && status[(left+4)%5] != EATING
        status[left] = EATING
        self.PrintAllStatus()
        con[left].Signal(& monitorLock)
      endIf
      if status[right] == HUNGRY && status[(right+1)%5] != EATING
        status[right] = EATING
        self.PrintAllStatus()
        con[right].Signal(& monitorLock)
      endIf 
      monitorLock.Unlock()
      endMethod

    method PrintAllStatus ()
      -- Print a single line showing the status of all philosophers.
      --      '.' means thinking
      --      ' ' means hungry
      --      'E' means eating
      -- Note that this method is internal to the monitor.  Thus, when
      -- it is called, the monitor lock will already have been acquired
      -- by the thread.  Therefore, this method can never be re-entered,
      -- since only one thread at a time may execute within the monitor.
      -- Consequently, printing is safe.  This method calls the "print"
      -- routine several times to print a single line, but these will all
      -- happen without interuption.
        var
          p: int
        for p = 0 to 4
          switch status [p]
            case HUNGRY:
              print ("    ")
              break
            case EATING:
              print ("E   ")
              break
            case THINKING:
              print (".   ")
              break
          endSwitch
        endFor
        nl ()
      endMethod

  endBehavior


-----------------------------  Sleeping Barber  ----------------------------
  const
    numChairs = 5
    numCustomers = 9

  var
      barbers: Thread
      customers: array [numCustomers] of Thread
      waitingCustomers: Semaphore
      barberSemephore: Semaphore
      accessLock: Mutex
      occupiedChairs: int
      barberDone: Semaphore
      customerDone: Semaphore

  function SleepingBarber()
    customers = new array [numCustomers] of Thread {numCustomers of new Thread}

    waitingCustomers = new Semaphore
    waitingCustomers.Init(0)
    barberSemephore = new Semaphore
    barberSemephore.Init(0)
    barberDone = new Semaphore
    barberDone.Init(0)
    customerDone = new Semaphore
    customerDone.Init(0)
    accessLock = new Mutex
    accessLock.Init()
    occupiedChairs = 0


    printHeader()

    barbers = new Thread
    barbers.Init("Barber")
    barbers.Fork(barber,1)

    customers[0].Init("1")
    customers[0].Fork(customer, 2)
    customers[1].Init("2")
    customers[1].Fork(customer, 2)
    customers[2].Init("3")
    customers[2].Fork(customer, 2)
    customers[3].Init("4")
    customers[3].Fork(customer, 2)
    customers[4].Init("5")
    customers[4].Fork(customer, 2)
    customers[5].Init("6")
    customers[5].Fork(customer, 2)
    customers[6].Init("7")
    customers[6].Fork(customer, 2)    
    customers[7].Init("8")
    customers[7].Fork(customer, 2)
    customers[8].Init("9")
    customers[8].Fork(customer, 2)

  endFunction

  function barber(dumpy: int)
    while true
      waitingCustomers.Down()
      accessLock.Lock()
      occupiedChairs = occupiedChairs - 1
      accessLock.Unlock()
      printBarber(" start ")
      barberSemephore.Up()
      cutHair()
      customerDone.Down()
      printBarber(" end ")
      barberDone.Up()
    endWhile
  endFunction

  function customer(numCuts: int)
    var 
      threadNum: int
      i: int
    threadNum = charToInt(currentThread.name[0]) - charToInt('0')
    for i = 1 to numCuts
      accessLock.Lock()
      printCustomers(threadNum, "E")
      if occupiedChairs < numChairs
        occupiedChairs = occupiedChairs + 1
        printCustomers(threadNum, "S")
        accessLock.Unlock()
        waitingCustomers.Up()
        barberSemephore.Down()
        printCustomers(threadNum, "B")
        getHaircut()
        printCustomers(threadNum, "F")
        customerDone.Up()
        barberDone.Down()
      else
        accessLock.Unlock()
      endIf
      printCustomers(threadNum, "L")
    endFor
  endFunction

  function cutHair()
    currentThread.Yield()
  endFunction

  function getHaircut()
    currentThread.Yield()
  endFunction

  function printHeader()
    var
      i:int
    for i = 0 to numChairs
      print(" ")
    endFor
    print(" BARBER ")
    for i = 1 to numCustomers
      printInt(i)
      print(" ")
    endFor
    nl()
  endFunction

  function printBarber(state: String)
    var 
      i: int
      oldStatus: int

    oldStatus = SetInterruptsTo(DISABLED)
    for i = 1 to numChairs
      if i <= occupiedChairs
        print("X")
      else
        print("-")
      endIf
    endFor
    print(state)
    nl()
    oldStatus = SetInterruptsTo(oldStatus)
  endFunction

  function printCustomers(customerNumber: int, state: String)
    var 
      i: int
      oldStatus: int

    oldStatus = SetInterruptsTo(DISABLED)
    for i = 1 to numChairs
      if i <= occupiedChairs
        print("X")
      else
        print("-")
      endIf
    endFor
    print("       ")
    for i = 1 to customerNumber
      print("  ")
    endFor
    print(state)
    nl()
    oldStatus = SetInterruptsTo(oldStatus)
  endFunction


-----------------------------  Gaming Parlor  ----------------------------
  const
    Backgammon = 4
    Risk = 5
    Monopoly = 2
    Pictionary = 1

  var
    gameParlor: GameParlor
    Customers: array [8] of Thread

  function GamingParlor()
    gameParlor = new GameParlor
    gameParlor.Init()
    Customers = new array of Thread {8 of new Thread }

    Customers[0].Init ("A")
    Customers[0].Fork (playGame, Backgammon)
    Customers[1].Init ("B")
    Customers[1].Fork (playGame, Backgammon)
    Customers[2].Init ("C")
    Customers[2].Fork (playGame, Risk)
    Customers[3].Init ("D")
    Customers[3].Fork (playGame, Risk)
    Customers[4].Init ("E")
    Customers[4].Fork (playGame, Monopoly)
    Customers[5].Init ("F")
    Customers[5].Fork (playGame, Monopoly)
    Customers[6].Init ("G")
    Customers[6].Fork (playGame, Pictionary)
    Customers[7].Init ("H")
    Customers[7].Fork (playGame, Pictionary)
   endFunction

  function playGame (game: int)
    var i: int
    for i = 1 to 5
      gameParlor.Request(game)
      currentThread.Yield()
      gameParlor.Return(game)
    endFor
  endFunction

  class GameParlor
    superclass Object
    fields
      numberDiceAvail: int
      mutex: Mutex
      con: Condition
    methods
      Init ()
      Request(dice: int)
      Return(dice: int)
      Print(str: String, count: int)
  endClass

  behavior GameParlor

    method Init ()
      numberDiceAvail = 8
      con = new Condition
      con.Init ()
      mutex = new Mutex
      mutex.Init ()
    endMethod

    method Request (dice: int)
      mutex.Lock()
      self.Print("requests", dice)
      while dice > numberDiceAvail 
        con.Wait(&mutex)
      endWhile
      numberDiceAvail = numberDiceAvail - dice
      self.Print("proceeds with", dice)
      mutex.Unlock()
    endMethod

    method Return (dice: int)
      mutex.Lock()
      numberDiceAvail = numberDiceAvail + dice
      self.Print("releases and adds back", dice)
      con.Broadcast(&mutex)
      mutex.Unlock()
    endMethod    

    method Print (str: String, count: int)
      -- This method prints the current thread's name and the arguments.
      -- It also prints the current number of dice available.

      print (currentThread.name)
      print (" ")
      print (str)
      print (" ")
      printInt (count)
      nl ()
      print ("------------------------------Number of dice now avail = ")
      printInt (numberDiceAvail)
      nl ()
    endMethod

  endBehavior

endCode

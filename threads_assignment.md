#akuthota mounika
#04/08/2016
#M20229259

##1)Explain the differences between Threads1 and Threads2 using lines from the code and a precise explanation
In thread1.py ,thread A and thread B are accessing a shared  resource and in this all operations are carried out in single step giving no scope for others to get control over it. 
In thread2.py we use an instruction shared Counter += 1 and the run() function increments a Counter instance, increment operation is done in three steps   
1.interpreter firstly fetches the current value of the counter
2.new value is calculated.
3.rewrites the new value back to variable.
During this three steps there is the possibility of miss changing attribute values.

##2)After running Thread3.py does it fix the problems that occured in Threads2.py? What's the down-side?
In thread3.py by using Lock(), Syncronization between thread has been established in order to overcome the miss changing a value attribute. lock can be held by single thread or by no thread at all. If a thread attempts to hold a lock that’s already held by some other thread, execution of the first thread is halted until the lock is released. For each shared resource, create a Lock object. When you need to access the resource, call acquire to hold the lock and call release to release it:

##3)Comment out the join statements at the bottom of the program and describe what happens.
If we do not use join(),in thread2.py then the main thread terminates first before the termination of its child threads . This join() blocks the calling thread until the thread whose join() method is called terminates, either normally or through an unhandled exception, or until the optional timeout occurs.

##4)What happens if you try to Ctrl-C out of the program before it terminates?
 when ctrl+c  key is pressed while program is running then python will cause an  interrupt called keyboardInterupt exception. If we press continuously the ctrl+c keys then program gets terminated. if the exception is not mentioned by the try except block then all the exception including keynoardInterupt is handled.

##5)Read and run Threads4.py. This generates a different and more ridiculous race condition. Write concise explanation of what's happening to cause this bizarre behavior using lines from the code and precise explanation.
In thread4.py ,threads are not using acquire()method to access the resource ,only lock () method has been called by the threads to access the shared resource .so any one among the threads can use the shared resource.so this causes the bizarre behavior.

          global sharedNumber
        for k in range(10000000)
            sharedNumber = 1
            if sharedNumber != 1:
                print ("A: that was weird")
            
        print ("Goodbye from thread A")

##6)Does uncommenting the lock operations clear up the problem in question 5?
Here to overcome the problem occurred in question 5 we use lock.acquire()method. when we use this method to a specific thread then that particular thread access the resource and uses it, when this thread complete its task  then we make a call to the release() so that any thread can access the same source if need.							.

         global sharedNumber
        for k in range(10000000):
            #self.lock.acquire()
            sharedNumber = 1
            if sharedNumber != 1:
                print ("A: that was weird")
            #self.lock.release()
            
            def run(self):
        global sharedNumber
        for k in range(10000000):
            #self.lock.acquire()
            sharedNumber = 2
            if sharedNumber != 2:
                print ("B: that was weird")
            #self.lock.release()

          lockForSharedCounter = threading.Lock()
          threadA = ThreadClassA(lockForSharedCounter)
          threadB = ThreadClassB(lockForSharedCounter)

          threadA.start()
           threadB.start()            

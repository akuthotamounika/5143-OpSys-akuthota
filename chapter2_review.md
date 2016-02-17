# Chapter 2 Review Questions

Name: Akuthota Mounika

Course: 5143 Operating Systems

Date: 17 Feb 2016

##1.What are three objectives of an OS design?

**Convenience**      : Operating system makes computer user friendly.

**Efficiency**       : operating system allows computer to use its resources in an efficiently manner.

**Ability to evolve**: An OS should be designed in such a way that it should be able to add functionality and should support the effective development and testing.

##2.What is the kernel of an OS?

A kernel is the most important part of an operating system that loads first, and it remains in main memory.it is a bridge between applications and the actual data processing done at the hardware level. It manages the tasks of the computer and the hardware and like memory and CPU time.it is program which controls all other programs on computer.

##3.What is multiprogramming?

multiprogramming is nothing but multitasking. It is also the ability of an operating system to execute more than one program on a single processor machine. More than one task or program or job or process can reside into the main memory at one point of time. 

##4.What is a process?

A program under execution is called as a process or the entity that can be assigned to and executed on a processor.

##5.How is the execution context of a process used by the OS?

Operating System is able to manage and control the process using the internal data which is nothing but the execution context or process state, here internal data includes all the information that operating system needs  .This internal information is separated from the process, because the OS has information not permitted to the process. The information used by the OS, such as the priority of the process and whether the process is waiting for the completion of a particular input output event.

##6.List and briefly explain five storage management responsibilities of a typical OS?

The five storage management responsibilities of a typical OS are:


**Process isolation:** 
The operating system must prevent independent processes from interfering with each other's memory, both data and instructions.

**Automatic allocation and management:**
Programs should be dynamically allocated across the memory hierarchy as required. Allocation should be transparent to the programmer. Thus, the programmer is relieved of concerns relating to memory limitations, and the operating system can achieve efficiency by assigning memory to jobs only as needed.

**Support of modular programming:** 
 Programmers should be able to define program modules, and to create, destroy, and alter the size of modules dynamically.

**Protection and access control:**
Sharing of memory, at any level of the memory hierarchy, creates the potential for one program to address the memory space of another. This is desirable when sharing is needed by particular applications. At other times, it threatens the integrity of programs and even of the operating system itself. The operating system must allow portions of memory to be accessible in various ways by various users.

**Long-term storage:** 
For Storing information for extended periods of time, after the computer has been powered down application programs requires such means of storage. 

##7.Explain the distinction between a real address and a virtual address?

A real address is a binary number in the form of logical high and low states on an address  bus that corresponds to a particular cell of primary storage(also called main memory), or to a particular register in a memory-mapped I/O device.
 
virtual address is a binary number in virtual memory that enables a process to use a location in  main memory independently of other processes and to use more space than actually exists in primary storage by temporarily relegating some contents to a hard disk or internal flash driver.

##8.Describe the round-robin scheduling technique?

In the round robin scheduling, processes are dispatched in a FIFO manner but are given a limited amount of CPU time called a time-slice or a quantum. If a process does not complete before its CPU-time expires, the CPU is preempted and given to the next process waiting in a queue. The preempted process is then placed at the back of the ready list.  Round Robin Scheduling is preemptive therefore it is effective in time-sharing environments in which the system needs to guarantee reasonable response times for interactive users.  The only interesting issue with round robin scheme is the length of the quantum. Setting the quantum too short causes too many context switches and lower the CPU efficiency. On the other hand, setting the quantum too long may cause poor response time and approximates  FCF. In any event, the average waiting time under round robin scheduling is often quite long.

##9.Explain the difference between a monolithic kernel and a microkernel?

**Monolithic kernel:**Monolithic kernel is a single large process running entirely in a single address space. All kernel services exist and execute in the kernel address space. The kernel can invoke functions directly. Examples: Unix, Linux.

**Microkernels:**In microkernels, the kernel is broken down into separate processes, known as servers. Some of the servers run in kernel space and some in user-space. All servers are kept separate and run in different address spaces. Servers invoke services from each other by sending messages via IPC .Examples : Mac OS X and Windows NT

##10.What is multithreading?

Multithreading is the ability in which a program or process which is responsible for executing application, a program which is divided into multiple threads so that to manage its use by more than one user at a time and to even manage multiple requests by the same user without having to have multiple copies of the programming running in the computer. 

**Example:** Server can handle multiple clients simultaneously.

##11.List the key design issues for an SMP operating system?

The key design issues for an SMP operating system are.

1)Simultaneous concurrent process or threads

2)scheduling

3)synchronization

4)Memory management

5)Reliability and fault tolerance.









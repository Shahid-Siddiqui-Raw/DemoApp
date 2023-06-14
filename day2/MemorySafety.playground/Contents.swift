import UIKit

var greeting = "Hello, playground"

var stepSize = 1


func increment(_ number: inout Int) {
    number += stepSize
}


increment(&stepSize)
/*
a conflict occurs if you have two accesses that meet all of the following conditions:

At least one is a write access or a nonatomic access.

They access the same location in memory.

Their durations overlap.

In computer programming, a conflict occurs when two accesses to the same location in memory overlap in duration, and at least one of the accesses 
is a write access or a nonatomic access. Let's break down each condition:

Write Access or Nonatomic Access: An access can be either a read or a write operation. A write access modifies the value at the memory location, 
while a read access retrieves the value without modifying it. A nonatomic access refers to an operation that is not atomic, meaning it can be 
interrupted or interleaved with other operations. If at least one of the accesses is a write access or a nonatomic access, it satisfies this 
condition.

Same Memory Location: In a computer's memory, different variables, data structures, or objects are stored at specific memory addresses. When two 
accesses refer to the same memory address or location, it satisfies this condition.

Overlapping Durations: The duration of an access refers to the period during which the access is being performed. If the durations of two accesses 
overlap, it means that there is a portion of time where both accesses are active at the same time. This can occur when two operations are executing 
concurrently or in parallel.


*/


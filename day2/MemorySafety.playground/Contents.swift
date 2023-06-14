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
*/


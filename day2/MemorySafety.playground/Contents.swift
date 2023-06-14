import UIKit

var greeting = "Hello, playground"

var stepSize = 1


func increment(_ number: inout Int) {
    number += stepSize
}


increment(&stepSize)


import Cocoa
import Security

/*
 
 Assigment:
 
 write a function that accepts an integer from 1 to 10,000, and returns the integer square root of the number.
 
 - don't use sqrt()
 - throw an "out of bounds" error for <1, >10,000
 - if you can't find the square root, throw "no root" error.
 
 */

enum intsqrtError : Error {
    case outOfBounds, noRoot
}

func intsqrt (_ rootThis: Int) throws -> Int {
    if rootThis < 1 || rootThis > 10_000 {
        throw intsqrtError.outOfBounds
    }
    for i in 1...rootThis {
        if i*i == rootThis {
            return i
        }
    }
    throw intsqrtError.noRoot
}

let rootThis: Int = 16

do {
    let root = try intsqrt(rootThis)
    print("The integer square root of \(rootThis) is \(root).")
    } catch intsqrtError.outOfBounds {
        print ("The number must be between 1 and 10,000.")
    } catch intsqrtError.noRoot {
        print ("There is no integer square root of \(rootThis).")
}

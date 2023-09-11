import Cocoa

/*
 Write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number.
 That sounds easy, but there are some catches:
 
 - You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
 - If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
 - You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
 - If you can’t find the square root, throw a “no root” error.

 */

enum sqrtError: Error {
    case outOfBounds, notAnInteger, noRoot
}

func mysqrt (_ number: Int) throws -> Int {
    if (number < 1 || number > 10_000) {
        throw sqrtError.outOfBounds
    }
    for i in 1...number {
        if i*i == number {
            return i
        }
    }
    throw sqrtError.noRoot
}

let this = 900
do {
    let introot = try mysqrt(this)
    print("the integer square root of \(this) is \(introot)")
    
} catch sqrtError.outOfBounds {
    print("Please use integers between 1 and 10,000")
} catch sqrtError.noRoot {
    print("I can't find an integer root of \(this).")
}

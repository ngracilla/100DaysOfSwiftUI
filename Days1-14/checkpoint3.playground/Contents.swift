import Cocoa

/*

 fizzbuzz:
 
 loop from 1 to 100;
    if multiple of 3, print fizz,
 if multiple of 5, print buzz
 if multiple of 3 and 5, print fizzbuzz
 otherwise, print the number

 */

let multiple1 :Int = 3
let multiple2 :Int = 5

for i in 1...100 {
    if i.isMultiple(of: multiple1) && i.isMultiple(of: multiple2) {
        print ("FizzBuzz")
    } else if i.isMultiple(of: multiple1) {
        print ("Fizz")
    } else if i.isMultiple(of: multiple2) {
        print ("Buzz")
    } else {
        print ("\(i)")
    }
}

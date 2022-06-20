import Cocoa

/* Challenge: checkpoint 9:
 
 - write a function that accepts an optional array of integers, and returns of of those integers randomly.
 - If the array is missing or empty, return a new random number, in the range of 1..100.
 - Write the entire function in a single line of code, using optionals.
 
 */

func selectRandomInt (array: [Int]?) -> Int {
    array?.randomElement() ?? Int.random(in: 1...100)
}

var random1 = [19, 3, 7, 5]
print(selectRandomInt(array: random1))
print(selectRandomInt(array: nil))
print(selectRandomInt(array: []))


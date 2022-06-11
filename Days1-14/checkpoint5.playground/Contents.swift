import Cocoa

/*
 
 Assignment:
 
 sorted(), filtered(), map()
 
 you'll use all of these, in a chain, without temp var.
 
 * filter out even numbers
 * sort the array in ascending order
 * map them to strings in the format, "7 is a lucky number"
 * print the resulting array, one item per line.
 
 */

let luckyNumbers = [7, 4, 38,21, 16, 15, 12, 33, 31, 49]
let randomNumbers = [9, 2, 12, 86, 99, 41, 68921]

let solve = { (numbers: [Int]) in
    numbers.sorted()
        .filter { !$0.isMultiple(of: 2)}
        .map { print("\($0) is a lucky number")}
}

solve(luckyNumbers)
print("\nSolving more stuff ----->\n\n")
solve(randomNumbers)

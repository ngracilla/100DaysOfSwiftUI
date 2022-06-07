import Cocoa

/*
 assignment:
 
 create an array of strings, then write some code that prints the number of items in the array; and the number of unique items in the array.

 */

var animals: [String] = []
var animalSet = Set<String>()

animals.append("cat")
animals.append("dog")
animals.append("mouse")
animals.append("rabbit")
animals.append("cat")
animals.append("rat")
animals.append("dog")

print(animals)
print("There are \(animals.count) total animals.")

animalSet = Set(animals)
print("There are \(animalSet.count) unique animals.")

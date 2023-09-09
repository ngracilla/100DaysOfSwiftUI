import Cocoa

var greeting = "Hello, playground"

var herbs: [String] = [String]()
var veggies: [String] = []
var fruits = [String]()

var uniqueHerbs = Set<String>()

herbs.append("basil")
herbs.append("thyme")
herbs.append("basil")
herbs.append("rosemary")
herbs.append("sage")
herbs.append("tarragon")

print("There are \(herbs.count) herbs.")

uniqueHerbs = Set(herbs)
print ("There are \(uniqueHerbs.count) unique herbs.")


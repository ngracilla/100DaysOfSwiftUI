import Cocoa
import Darwin

var greeting = "Hello, World."
let world = "Chicago"
greeting = "Hello, "
print (greeting + world + ".")
var year = 2023
print ("It's \(year), and SwiftUI is a fine language to learn this fall.\n\n")

/* Convert Celsius to Farenheit */
print ("STRING INTERPOLATION")
let today = "Sept 5"
let tempInC = 21
let tempInF = (tempInC * 9 / 5) + 32
print ("In Chicago on \(today), \(year), it's \(tempInC)°C, or \(tempInF)°F.")
print ("\n\n")

/* Arrays */

print ("ARRAYS")
var pets = ["Cats", "Dogs", "Giraffes", "Hyenas"]
print (pets[0])
pets.append("Coyotes")
print (pets[4])

var scores = Array<Int>()
scores.append(85)
scores.append(125)
print (scores[1])

var albums = Array<String>()
albums.append("hello")

var friends = [String]()
friends.append("Pietro")
friends.append("John")
friends.append("Eric")
print (friends.count)

var bugs: [String] = ["ants", "bees", "grasshoppers"]

var philosophers = ["Socrates", "Plato", "Sartre"]
print (philosophers.count)
philosophers.remove(at: 1)
print (philosophers.count)

print (philosophers.sorted().reversed()[0])

/*
 - append()
 - sorted()
 - reversed()
 - count
 - defining vars in four ways */

/* Dictionaries */

let menu = [
    "appetizers": "Mushrooms",
    "mains": "Beef",
    "desserts": "Cake"
]

print(menu["desserts", default: "Unknown"])
print(menu["intermezzo", default: "Unknown"])

var plants = [String: Bool]()

plants["basil"] = true
plants["rosemary"] = false

print (plants["rosemary", default: true])

/* Sets */

var recipeBooks = Set(["Veggies", "Pizza", "Beef"])
print (recipeBooks)

recipeBooks.insert("Pizza")
recipeBooks.insert("Foccacia")
print (recipeBooks)

print (recipeBooks.contains("Pizza"))
print (recipeBooks.sorted())

var newSet = Set<String>()

/* enums ("Enumerations") */

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

enum CardinalDirections {
    case North, South, East, West
}

var day = Weekday.wednesday
print (day)

var direction = CardinalDirections.South
print (direction)

/* Type annotations */

var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

clues.append("In the kitchen")

print (clues)

let username: String
// stuff here
username = "@nickgracilla"
print (username)



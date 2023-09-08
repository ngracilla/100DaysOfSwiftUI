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


/* Booleans */

print ("BOOLEANS")
let num = 60
print("Is \(num) a multiple of 3: \(num.isMultiple(of: 3))")
print("\n\n")



/* Arrays */

print ("ARRAYS\n")

/* Array indexes start at 0 */
var pets = ["Cats", "Dogs", "Giraffes", "Hyenas"]
print (pets[0])
pets.append("Coyotes")
print (pets[4])


var scores = Array<Int>()
scores.append(85)
scores.append(125)
print ("Index 1 of a two element array is \(scores[1])\n")

/* explicit definition of array type */
var albums = Array<String>()
albums.append("hello")

/* shorthand explicit definition of array type */
var friends = [String]()
friends.append("Pietro")
friends.append("John")
friends.append("Eric")
print ("I have \(friends.count) friends.")


var bugs: [String] = ["ants", "bees", "grasshoppers"]

var philosophers = ["Socrates", "Plato", "Sartre"]
print (philosophers.count)
philosophers.remove(at: 1)
print (philosophers.count)

print (philosophers.sorted().reversed()[0])

/* array functions
 - count
 - append()
 - sorted()
 - contains()
 - reversed()
 - removeAll()
 - remove(at:)
*/



/* Dictionaries */

print ("\n\n\nDICTIONARIES\n")

let menu = [
    "appetizers": "Mushrooms",
    "mains": "Beef",
    "desserts": "Cake"
]

print("Tonight's dessert is \(menu["desserts", default: "Unknown"])")
print("Tonight's intermezzo is \(menu["intermezzo", default: "unavailable"])")

var plants = [String: Bool]()

plants["basil"] = true
plants["rosemary"] = false

print ("Rosemary? \(plants["rosemary", default: true])")
print ("Thyme? \(plants["thyme", default: true])")



/* dictionary functions
 - count
 - removeAll()
 
 */



/* Sets */
print ("\n\n\nSETS\n")

var recipeBooks = Set(["Veggies", "Pizza", "Beef"])
print (recipeBooks)

recipeBooks.insert("Pizza")
recipeBooks.insert("Foccacia")
print (recipeBooks)

print ("There is pizza in this recipe book: \(recipeBooks.contains("Pizza"))")
print (recipeBooks.sorted())

var newSet = Set<String>()

/* Set functions
 - sorted()
 - contains()
 - insert()
*/


/* enums ("Enumerations") */
print("\n\nENUMS\n")

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



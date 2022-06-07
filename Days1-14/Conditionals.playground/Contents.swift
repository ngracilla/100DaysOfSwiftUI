import Cocoa

let score = 85

if score > 80 {
    print ("doing pretty good")
}

let name1 = "Tom"
let name2 = "Jerry"

if name1 < name2 {
    print(name1)
} else {
    print (name2)
}

/*
if adding something to an array, means there are more than 3, remove one.
 */
    
var myPets = ["Cat", "Dog"]

myPets.append("Rabbit")
myPets.append("Moose")

print (myPets)
if myPets.count > 3 {
    myPets.remove(at: 0)
}
print (myPets)

/* if user typed nothing at all for their name, set name to anonymous */

var username: String
username = ""
if username.isEmpty {
    username = "Anonymous"
}
print (username)

/* multiple conditionals */

let age = 16

if age >= 18 {
    print("You can drink!")
} else {
    print("You can have some Coke.")
}

let temp = 16

if temp > 15 && temp < 20 {
    print ("Nice day")
}

enum TransitOptions {
    case bike, train, car, plane, automobile
}

let commute = TransitOptions.car

if commute == .train {
    print ("choo choo!")
} else if commute == .plane {
    print ("Let's fly!")
} else {
    print ("Let's wheel!")
}

enum Weather {
    case sun, rain, cloudy, cold, hot, snow
}

let today = Weather.cold

switch today {
case .sun:
    print ("Take your sunglasses")
case .rain:
    print ("Take an umbrella")
default:
    print ("Dunno what to recommend")
}

/* ternary conditional operator */

true ? print ("true") : print ("false")

let myAge = 18

let canDrink = myAge > 18 ? true : false
print (canDrink)


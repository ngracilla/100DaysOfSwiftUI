import Cocoa

// create, unwrap optionals

var wildlife: [String]? = nil
wildlife = ["woodpecker", "rabbit"] // comment this out to see the nil case
if let backyardWildlife = wildlife {
    print("I see \(backyardWildlife.count) critters.")
} else {
    print("I don't see anything.")
}

func countCritters(critters: [String]) -> Int {
    critters.count
}

// doesn't work, needs unwrapped:
// countCritters(critters: wildlife)

if let todayCritters = wildlife {
    print("There are \(countCritters(critters: todayCritters)) critters today.")
}
// it is VERY COMMON practice is to unwrap using a second constant with the same name as the var, which has the context only within the if clause ("Shadowing"). So:

if let wildlife = wildlife {
    print("There are \(countCritters(critters: wildlife)) critters today.")
}

// unwrapping with guard; guard let you check the inputs are valid, letting you focus on the happy path.
// you must exit the func with return if the guard fails

func isGreen(plant: String?) {
    guard let plant = plant else {
        print("Need a plant")
        return
    }
    if plant != "red maple" {
        print ("Yep, that's probably green.")
    } else {
        print ("Um, that's red.")
    }
}

isGreen(plant: nil)
isGreen(plant: "Basil")
isGreen(plant: "red maple")

// unwrapping optionals with nil coalescing

let herbs = ["basil": "green", "rosemary": "pine", "thyme": "silver"]
let newHerb = herbs["parsley"] ?? "Not sure what color that is."
print(newHerb)

let input = "foo"
let number = Int(input) ?? 0
print(number)

// multiple optionals using optional chaining

let someColor = herbs["bark"]?.uppercased() ?? "Not sure."
print(someColor)

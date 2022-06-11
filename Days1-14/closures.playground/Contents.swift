import Cocoa

let sayHello = { (name: String) -> String in
    "Hi there, \(name)!"
}

let greeting = sayHello("Kitty cat")
print(greeting)

let plants = ["basil", "eggplant", "tomatoes", "thyme"]

func tomatoFirstSorted(plant1: String, plant2: String) -> Bool {
    if plant1 == "tomatoes" {
        return true
    } else if plant2 == "tomatoes" {
        return false
    }
    return plant1 < plant2
}




let sortedPlants = plants.sorted()
print(sortedPlants)

/* sorted wants two strings and returns a boolean */
let SortedTomsFirst = plants.sorted(by: tomatoFirstSorted)
print(SortedTomsFirst)


/* sorted wants two strings and returns a boolean */
/* try this with closures */

let TomsFirstSorted = plants.sorted(by: {
    (plant1: String, plant2: String) -> Bool in
    if plant1 == "tomatoes" {
        return true
    } else if plant2 == "tomatoes" {
        return false
    }
    return plant1 < plant2
})

/* here, we passed in a closure instead of a function */

print(TomsFirstSorted)


/* Do it again, with simple syntax */

let TomsFirstSortedShort = plants.sorted {a, b in
    if a == "tomatoes" {
        return true
    } else if b == "tomatoes" {
        return false
    }
    return a < b
    }

print(TomsFirstSortedShort)

let TomsFirstSortedShortReally = plants.sorted {
    if $0 == "tomatoes" {
        return true
    } else if $1 == "tomatoes" {
        return false
    }
    return $0 < $1
    }

print(TomsFirstSortedShortReally)

/* I don't really like this since we use the values more than once */


let tOnly = plants.filter { $0.hasPrefix("t") }
print(tOnly)

/* Using functions, as parameters */

func doSomething(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("first:")
    first()
    print("second:")
    second()
    print("Third:")
    third()
}

let setSomething = doSomething {
    print("apples")
} second: {
    print("grapes")
} third: {
    print("tomatoes")
}

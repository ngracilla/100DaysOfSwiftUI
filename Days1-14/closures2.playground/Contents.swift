import Cocoa

/* basic closure */
let helloWorld = {
    print("Hello, world")
}
helloWorld()

/* closure that accepts parameter
 - parameters inside braces
 - keyword in starts closure's body */
let helloPlanet = { (planet: String) -> String in
    "Hello, \(planet)"
}
print(helloPlanet("Mars"))


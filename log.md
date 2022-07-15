# 100DaysOfCode

Note I've bundled several "days" of 100DaysOfSwiftUI into physical days, especially at the start.

## Current weakenesses

> Things I notice through testing that I need to improve on
* protocol getters and setters
* 🟡 Define and complex empty collections
* ✅ Define empty simple variables and constants

***
### Day 1: 20220605

#### SwiftUI Day 1: simple data types, part 1 - variables, constants, strings, and numbers

> Variables, constants, strings, and numbers. Oh My!

Takeaways:

* Swift is a modern (2014) general-purpose compiled programming language, developed by Apple and the open-source community, as a replacement for (while interoperating with) Objective-C. It is designed to be "Safe, Fast, and Expressive."
* prefer constants over variables when possible for optimization, control, and to avoid mistakes
* By convention, prefer camelCase for variable or constant naming style

#### SwiftUI Day 2: simple data types, part 2 - Booleans, string interpolation, and checkpoint 1

> Booleans, string interpolation, and ✅ checkpoint 1

Takeaways:

* Booleans were named for the largely self-taught [George Boole](https://en.wikipedia.org/wiki/George_Boole), who died young (49) and laid the foundation for information technology
* Call `toggle()` on a Boolean to flip its value
* You can any kind of data inside of string interpolation: `print("5 x 5 is \(5 * 5)")`.
* Consider the following in Swift 5, from [Super-powered string interpolation in Swift 5.0](https://www.hackingwithswift.com/articles/178/super-powered-string-interpolation-in-swift-5-0):

```swift
mutating func appendInterpolation(twitter: String) {
    appendLiteral("<a href=\"https://twitter.com/\(twitter)\">@\(twitter)</a>")
}

print("Find me on Twitter: \(twitter: "nickgracilla").")
```

#### SwiftUI Day 3: complex data types, part 1 - Arrays, dictionaries, sets, and enums

* **Arrays** store many values, with indices
* **Dictionaries** are optimized for fast retrieval; can send back nil if you request a non existant key; can offer default values; and offer meaningful retrieval, like `cat["breed"]`.
* optionals: "this data may, or may not be here, be warned!"
* note well: when setting default values, they must match the dictionary data type

**Sets**:

* Sets are collections of distinct values of data (no duplicates) that have no defined order
* Sets are optimized for data retrieval, regardless of the set size
* Good use case: "does this word appear in a dictionary?"

**enums**:

* "a nice name for a value"
* useful when you need something specfic, limited, and safe
* by convention, appear to be first letter capped

```swift
enum Directions {
    case north, south, east, west
}

enum TransitOptions {
    case bike, train, car, plane, boat
}

```

### Day 2: 20220606

#### SwiftUI Day 4: complex data types, part 2 - type annotations and checkpoint 2

> type annotations and ✅ checkpoint 2

* You might want to declare, but not assign, a value. So, you can create a constant, but not define it until later; Swift will protect you from using it until its defined.
* type inference: `let fname = "John"` -> "that must be a string"
* `let surname: String = "John"`
* `let score: Double = 0`

```swift
let username: String
// stuff here
username = "@nickgracilla"
print (username)
```

### Day 3: 20220607

#### SwiftUI Day 5: conditionals - if, switch, and the ternary operator

* comparison operators: <, <=, ==, >, >=; ==, !=
* Logical operators: &&, ||
* Surprisingly, string comparisons in Swift are optimized. So `username == ""` is likely faster than `username.count == 0` — the count is quite inefficient, it has to count element in the string. `if username.isEmpty` is better!

### Day 4: 20220608

#### SwiftUI Day 6: loops, summary, and checkpoint 3

* `for i in 1...5` versus `for i in 1..<5`
* `for _ in 1...5` when you don't need a variable
* `while x < 0`: generally, while loops are less useful than for loops
* `continue` vs `break`

### Day 5: 20220609

### SwiftUI Day 7: functions, parameters, and return values

* function composition enables building functions out of existing functions
* strictly speaking, we can distinguish between parameters and arguments: *parameters* are placeholders for functions and are used in the function definition; *arguments* are actual values passed to a function in the function call
* the ternary operator becomes important in functions, since it is a single expression; single expression functions (without `return`) are very common in SwiftUI
* we return multiple values from a function in tuples, because they are guaranteed to be present
* destructuring: call a function without explicit variable assignments, like:

```swift
let (firstname, _) = getUser()
print ("\(firstName)")
```

* odd but common: functions can be distinguish by their parameter names, even when the function itself is named the same

### Day 6: 20220610

#### SwiftUI Day 8: default values, throwing functions, and checkpoint 4

* a real pleasure, providing default values for function parameters, then calling and skipping those arguments!
* the final catch of a throw-catch function error, which may catch all errors, is charmingly called Pokémon Exception Handling — Gotta catch em all!
* see `function-error-handling.playground' for a fine example.

#### SwiftUI Day 9: Closures

* you really get a sense of functions, as having types, here.
* lessons from tests: you don't use parameter names when calling a closure.
* Closures are used A LOT in SwiftUI apps:
* where did the word 'closures' even come from?

##### Trailing Closures and shorthand syntax

* see closures playground
* Great article on [why to use closures](https://www.hackingwithswift.com/quick-start/understanding-swift/why-would-you-want-to-use-closures-as-parameters): it's especially valauble for asynchrnous interactions.

Here's the best, clearest example of the trailing closure accepting a function as a parameter:

```Swift
func repeatAction(count: Int, action: () -> Void) {
	for _ in 0..<count {
		action()
	}
}
repeatAction(count: 5) {
	print("Hello, world!")
}
```

Another outstanding example of closures as parameters:

```swift
var payCash = {
	print("Here's the money.")
}
func buyClothes(item: String, using payment: () -> Void) {
	print("I'll take this \(item).")
	payment()
}
buyClothes(item: "jacket", using: payCash)
```
### Day 7: 20220611

#### SwiftUI Day 10: Structs, part one

### Day 8: 20220612

Spent the day reviewing closures, and building the first 10 closure flashcards for study and training.

### Day 9: 20220613

#### SwiftUI Day 10: Structs, part one

* by convention, structs are defined first letter Cap
* call variables and constants within a struct `properties`
* call functions within a struct `methods`. "**Methods belong to a type**, such as structs, enums, and classes, whereas functions do not." (https://www.hackingwithswift.com/quick-start/understanding-swift/whats-the-difference-between-a-function-and-a-method)
* NB: "There is one more advantage to methods, but it’s quite subtle: methods avoid namespace pollution."
* call variables and constants that instantiate a struct `instances`
* call the struct property assignments when creating an instance `initalizers`
* Structs that contain functions that change data must  be marked `mutating`, so that you cannot call a struct with a mutating function on a constant.

### Day 10: 20220614

* Built additional flashcards for closures, and re-studied. Still not intuitive yet.

### Day 11: 20220615

#### SwiftUI Day 10: Structs, part one, revisited

* See structs doc
* creating custom initializers

#### SwiftUI Day 11: Structs, and Access Control

review `didSet` and `willSet`:

- observers, for when something did change, or is about to change.


* if private properties, you probably must init them yourself and not use Swift's memberwise initializer.
* `private`, `fileprivate`, `public`
* `private(set)`: let anyone read this, but only my struct to write to it
* `static`: mark methods and properties as part of the struct itself, not instances. EG: test data that all instances of a struct can use.
* `self`: the current value of a struct
* `Self`: the current type of a struct

### Day 12: 20220616

#### SwiftUI Day 12: classes, inheritance, checkpoint 7

* SwiftUI uses structs extensively for UI design, and classes extensively for data. This is quite different from UIKit.
* classes, like structs, create new data types, with properties and methods

Key differences between classes and structs: (from https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-both-classes-and-structs):

* structs have memberwise initializers, but classes do not (because of inheritance)
* a class can inherit from other classes, but structs cannot inherit from each other
* copies of structs are unique, but copies of classes point to the same, shared data; they are *reference types*
* classes may have deinitializers called when an class instance is destroyed, structs do not
* variable properties in constant classes can be modified, but they can't in structs

Very nice way of thinking of classes and variables:

- constnat class, constant property
- constant class, variable property
- variable class, constant property
- variable class, variable property

Checkpoint 7, done.

### Day 13: 20220617

#### SwiftUI Day 13: Protocols, extensions, checkpoint 8

opaque return types: the point: your func can be non-explicit about what it returns, so you change your mind later. Swift compiler knows; but you can be flexible. Heavily used in SwiftUI: because layouts would specify complex return types.

Extensions:
- "protocol-oriented programming": POP: prefer to build functionality by composing protocols. OOP, prefers to build functionality through class inheritance.
- how is it better than a function? Well: code completion; code organization; internal access (extensions are fully able to access everything of the protocol they extend).

Checkpoint 8:

- need to review: setter, getter

### Day 14: 20220618

#### SwiftUI Day 14: Optionals, checkpoint 9

"reading a dictionary key will always return an optional": oh, I forgot that!

see optionals.playground:

* declaring, unwrapping optionals
* unwrapped shadowing optionals within contexts
* unwrapping optionals with guard
* nil coalescing: unwrap and optional, and provide a default value if nil
* multiple optionals using optional chaining

### Day 16: 20220621

#### SwiftUI Day 16: Project 1, part one

### Day 17-21

### Day 23, Project 3 part 1: 20220702

The technique questions:
* what are views and view modifiers?
* why `some View` so much?
* Why does swiftUI use structs for views?

Notes

* In UIKit, every view descended from a class `UIView`, which were very complex, with over 200 properties and methods
* In SwiftUI, we use structs, which are very lightweight, memory efficient
* Views as structs is a 'functional design approach': views are immutable, they are data interpretations
* This supports isolating state: views are less complex for the compiler (and us)
* Color.red and the gradients — these are views, super simple, composeable views
* Modifier order really matters - because modifiers stack up as they are applied to a view
* opaque return types: `some View` defines an object that conforms to the View protocol
* `tupleView`: the reason views are restricted to 10
* conditional modifiers: it's very common to use ternary expressions: `.foregroundColor(useRedText ? .red : .blue` - superior to an `if` clause that constructs multiple view objects
* Environment modifiers (like fonts) can be applied to a container view, like `HStack` or `VStack`, and apply to all objects in the container

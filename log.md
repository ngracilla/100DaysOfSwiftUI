# 100DaysOfCode

Note I've bundled several "days" of 100DaysOfSwiftUI into physical days, especially at the start.

## Current weakenesses

> Things I notice through testing that I need to improve on

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

# 100DaysOfCode

## Current weakenesses

> Things I notice through testing that I need to improve on

* 🟡 Define and complex empty collections
* ✅ Define empty simple variables and constants

***

## Days 1-14: Introduction to Swift

### Day 1: simple data types, part 1

> Variables, constants, strings, and numbers. Oh My!

Takeaways:

* Swift is a modern (2014) general-purpose compiled programming language, developed by Apple and the open-source community, as a replacement for (while interoperating with) Objective-C. It is designed to be "Safe, Fast, and Expressive."
* prefer constants over variables when possible for optimization, control, and to avoid mistakes
* By convention, prefer camelCase for variable or constant naming style

### Day 2: simple data types, part 2

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

### Day 3: complex data types, part 1

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

### Day 4: complex data types, part 2

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

### Day 5: conditions

* comparison operators: <, <=, ==, >, >=; ==, !=
* Logical operators: &&, ||
* Surprisingly, string comparisons in Swift are optimized. So `username == ""` is likely faster than `username.count == 0` — the count is quite inefficient, it has to count element in the string. `if username.isEmpty` is better!

### Day 6: loops

* `for i in 1...5` versus `for i in 1..<5`
* `for _ in 1...5` when you don't need a variable
* `while x < 0`: generally, while loops are less useful than for loops
* `continue` vs `break`

### Day 7: functions

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

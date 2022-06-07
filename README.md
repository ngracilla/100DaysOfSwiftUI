# 100DaysOfSwiftUI

> 100 Days Of SwiftUI Challenge by Paul Hudson: https://www.hackingwithswift.com/100/swiftui

## Current weakenesses

* Defining both simple and complex empty collections, constants, or variables

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

* Booleans were named for the largely self-taught George Boole, who died young (49) and laid the foundation for information technology
* Call `toggle()` on a Boolean to flip its value
* Swift supports placing any kind of data inside of string interpolation: `print("5 x 5 is \(5 * 5)")`.
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

### Day 4, complex data types, part 2

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

### Day 5, Conditions

* comparison operators: <, <=, ==, >, >=; ==, !=
* Logical operators: &&, ||
* Surprisingly, string comparisons in Swift are optimized. So `username == ""` is likely faster than `username.count == 0` — the count is quite inefficient, it has to count element in the string. `if username.isEmpty` is better!

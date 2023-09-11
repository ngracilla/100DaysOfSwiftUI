# 100DaysOfSwiftUI

It's fall 2023 and I'm giving a go at this course again. I'll be bundling several course-days of 100DaysOfSwiftUI into physical days.

## 2023-09-06

### SwiftUI Day 1: simple data types

#### Variables, constants, strings, and numbers

##### Why learn Swift?

- It's a relatively young language with little cruft, built on the successes of other languages.
- Swift is a modern (2014) general-purpose type-safe compiled programming language, developed by Apple and the open-source community, as a replacement for (while interoperating with) Objective-C. It is designed to be "Safe, Fast, and Expressive."
- Swift makes it harder to write unsafe code; and easier to write clear, understandable code.

##### Variable Conventions

- prefer constants over variables when possible for optimization, control, and to avoid mistakes
- By convention, prefer camelCase for variable or constant naming style

### Built

- Playground1
- Checkpoint1

## 2023-09-07

### SwiftUI Day 2: simple data types part 2

#### Booleans, strings, interpolation

Takeaways:

- *Operator Overloading*: allowing an operator like "+" to mean different things, depending on how its used. For strings, concatenation. For numbers, addition
- String interpolation* is much more efficient for joining strings.
- Booleans were named for the largely self-taught [George Boole](https://en.wikipedia.org/wiki/George_Boole), who died young (49) and laid the foundation for information technology
- Call `toggle()` on a Boolean to flip its value
- You can any kind of data inside of string interpolation: `print("5 x 5 is \(5 * 5)")`.
- In Swift 5, you can create custom string interpolations, and interpolations with parameters. Consider, from [Super-powered string interpolation in Swift 5.0](https://www.hackingwithswift.com/articles/178/super-powered-string-interpolation-in-swift-5-0):

```swift
mutating func appendInterpolation(twitter: String) {
    appendLiteral("<a href=\"https://twitter.com/\(twitter)\">@\(twitter)</a>")
}

print("Find me on Twitter: \(twitter: "nickgracilla").")
```

### Built

- Revised playground1

## 2023-09-08

### SwiftUI Day 3: complex data types, part 1

#### Arrays, dictionaries, sets, and enums

##### Arrays

- Arrays store many values, with indices
- Swift arrays are zero-based

##### Dictionaries

- Dictionaries offer keys for very fast retrieval of data
- they send back nil if you request a non existant key, and can offer default values
- can offer meaningful retrieval, like `cat["breed"]`.
- optionals: dictionaries may, or may not, return a value; be warned!
- you can use multiple data types for a dictionary's key and values:

```Swift
var plants = [String: Bool]()

plants["basil"] = true
plants["rosemary"] = false
print (plants["thyme", default: true])

```

- Obviously, when setting default values, they must match the dictionary data type

##### Sets

- Sets are collections of distinct values of data (no duplicates) that have no defined order
- Sets are highly optimized for data retrieval, regardless of the set size
- Good use case: "does this word appear in a dictionary?"

##### Enums

- Enumerations are useful when you need something specfic, limited, and safe
- by convention, appear to be first letter capped
- "a nice name for a value"

```swift
enum Directions {
    case north, south, east, west
}

enum TransitOptions {
    case bike, train, car, plane, boat
}
```

## 2023-09-09

### SwiftUI Day 4: Complex data types, part 2

#### Type annotations, summary, and checkpoint 2

- Type inference allows Swift to infer a variable type, based on the value assigned: `let fname = "John"`
- Type annotations allow us be explicit in defining a variable type when it is created: required when you create, but don't yet assign, a value

```Swift
let surname: String = "John"
let score: Double = 0 // not without the Double, Swift would infer this as an integer
```

```swift
let username: String
// stuff here
username = "@nickgracilla"
print (username)
```

- String
- Int
- Double (decimals)
- Bool
- Array `var herbs: [String] = ["Basil", "Rosemary"]`
- Dictionary `var landscape: [String: String] = ["Groundcover": "Flox"]`
- Set `var pens: Set<String> = Set(["Cheap giveaway", "gel"])`
- Enum

### SwiftUI Day 5: if, switch, and the ternary operator

#### Conditions

- comparison operators: <, <=, ==, >, >=; ==, !=
- String comparisons in Swift are optimized. So `username == ""` is likely faster than `username.count == 0` — the count is quite inefficient, it has to count element in the string. `if username.isEmpty` is better!
- `.isEmpty()`
- even enums are comparable (in terms of their relative position in the case list)
- if, else if, else
- Logical operators: &&, ||

##### Why use `switch` over `if`?

```Swift
switch i {
    case i < 5: {

    }
    case i < 5: {

    }
}
```

- switch statements are exhaustive: good to explore every option
- when switch checks a value, it's read only once: important for expensive function calls!
- case statements evaluate in order, and stop evaluating by default, without `fallthrough` (which skips the conditional)

#### Ternary conditional operator: "WTF"

- exceptionally important in SwiftUI, where in SwiftUI we often must use it, where there's many stacked conditions

```swift

let herb = "basil"
let sweetHerb = herb == "basil" ? true : false

```

### SwiftUI Day 6: Loops

#### loops

- `for _ in 1...5` useful when you don't need a loop variable
- half-open ranges: `print(names[1..<5])` excludes the final number: exceptionally useful with arrays which begin from 0
- one sided ranges: `print(names[1...])`
- `while x < 0`: generally, while loops are used less often; but fine for arbitrary conditions
- `continue` (jump to next item) vs `break` (skip this and all future loops)

#### summary

#### checkpoint 3

FizzBuzz!

Loop 1 to 100; if it's a multiple of 3, print "fizz", if multiple of 5, "buzz," if multiple of 15, "fizbuzz"; otherwise print the number.

### SwiftUI Day 7: Functions, part one

#### functions, parameters, and return values

- functions are case sensitive!
- strictly speaking, distinguish between parameters and arguments: *parameters* are placeholders for functions and are used in the function definition; *arguments* are actual values passed to a function in the function call
- *function composition*: build functions out of existing functions
- single expression functions without `return` are very common in SwiftUI; thus the ternary operator becomes even more important

#### Tuples

- tuples have a fixed number of values of fixed types
- return multiple values from a function in tuples; they are guaranteed to be present
- destructuring: call a function without explicit variable assignments, like:

```swift
let (firstname, _) = getUser()
print ("\(firstName)")
```

#### Omit or customize parameter labels

- oddly: you can have multiple functions with the same name; and distinguish between them by their parameter names
- `_ ` before the parameter name specifies no external label
- you can also specify an external, and internal name:

```Swift
func printTimesTable (for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(for: 5)

```

### Built

- Checkpoint2.1
- Playground2.1
- Checkpoint3.1
- Projects/celcius: space to record iterations towards celcius app

## 2023-09-10

Cleaned up and completed yesterday's work.

### SwiftUI Day 8: Functions, part 2

#### default values

- straightforward to provide a default value for function parameters, then call and skip those parameters!

#### throwing functions

- a function throws an error; the caller uses a `do` - `try` - `catch` famework
- the final catch of a throw-catch function error, which may catch all errors, is charmingly called Pokémon Exception Handling — Gotta catch em all!
- see `function-error-handling.playground' for a fine example.

#### checkpoint 4

## Built

- functions2.playground
- projects/celcius/playgrounds/playground1
- expanded on project celcius feature ideas
- checkpoint4.1: mostly forgot the nice calling code; otherwise got through this myself.

# 100DaysOfSwiftUI

It's fall 2023 and I'm giving a go at this course again. I'll be bundling several course-days of 100DaysOfSwiftUI into physical days.

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

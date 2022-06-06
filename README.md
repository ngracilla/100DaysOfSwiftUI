# 100DaysOfSwiftUI

> 100 Days Of SwiftUI Challenge by Paul Hudson: https://www.hackingwithswift.com/100/swiftui

## Days 1-14: Introduction to Swift

### Day 1: simple data types, part 1

> Variables, constants, strings, and numbers

Takeaways:

* Swift is a modern (2014) general-purpose compiled programming language, developed by Apple and the open-source community, as a replacement for (while interoperating with) Objective-C. It is designed to be "Safe, Fast, and Expressive".
* prefer constants over variables when possible, for optimization, control, and to avoid mistakes.
* By convention, prefer camelCase for variable or constant naming style

### Day 2: simple data types, part 2

> Booleans, string interpolation, and ✅ checkpoint 1

Takeaways:

* Booleans were named for the largely self-taught George Boole, who died young (49) and laid the foundation for information technology.
* You can call `toggle()` on a Boolean to flip its value.
* Swift supports placing any kind of data inside of string interpolation: `print("5 x 5 is \(5 * 5)")` But consider the following in Swift 5, from [Super-powered string interpolation in Swift 5.0](https://www.hackingwithswift.com/articles/178/super-powered-string-interpolation-in-swift-5-0):

```swift
mutating func appendInterpolation(twitter: String) {
    appendLiteral("<a href=\"https://twitter.com/\(twitter)\">@\(twitter)</a>")
}

print("Find me on Twitter: \(twitter: "nickgracilla").")
```


### Day 3: complex data types


### Day 4:

> type annotations and ✅ checkpoint 2

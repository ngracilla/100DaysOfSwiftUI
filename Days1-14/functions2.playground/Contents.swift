import Cocoa

func rollDice() -> Int {
    return Int.random(in: 1...12)
}
var myRoll = rollDice()
print("dice roll, you get \(myRoll).\n")

func compareStrings(str1: String, str2: String) -> Bool {
    str1.sorted() == str2.sorted()
}

compareStrings(str1: "cfa", str2: "abc")

func samelength(str1: String, str2: String) -> Bool {
    str1.count == str2.count
}

samelength(str1: "abc", str2: "efg")

func hasSameFirstLetter (str1: String, str2: String) -> Bool {
    str1.sorted().first == str2.sorted().first
}

hasSameFirstLetter(str1: "efag", str2: "glkaje")

func printTimesTable (for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(for: 5)

import Cocoa

func helloWorld() {
    print("Hello, World.")
}


helloWorld()
print("this is a test")
helloWorld()

func sameLetters(string1 : String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

sameLetters(string1: "abc", string2: "bca")

/* if your one line function returns a value, you can skip return */
func pythagoras(a: Double, b: Double) -> Double {
    sqrt((a*a) + (b*b))
}

print(pythagoras(a: 3, b: 4))

/* returning multiple values */

func getCatName() -> (firstName: String, lastName: String) {
    (firstName: "Deadly", lastName: "KnifePaws")
}

var thisCat = getCatName()
print ("I am \(thisCat.firstName) \(thisCat.lastName)")

func isUppercase (_ string: String) -> Bool {
    string == string.uppercased()
}

isUppercase("HELLO")

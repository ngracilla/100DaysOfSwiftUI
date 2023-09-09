import Cocoa

for i in (1...100) {

    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print ("fizzbuzz")
    } else if i.isMultiple(of: 5) {
        print ("buzz")
    } else if i.isMultiple(of: 3) {
        print ("fizz")
    } else {
            print (i)
    }
    }

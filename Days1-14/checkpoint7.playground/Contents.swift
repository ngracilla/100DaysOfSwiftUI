import Cocoa

class Animal {
    var legs: Int
    init(legs: Int) {
        self.legs = legs
    }
    
}

class Dog: Animal {
    
}

class Cat: Animal {
    var isTame: Bool
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    func speak(expression: String) {
        print("Meow, \(expression)")
    }
    
}

class Lion: Cat {
    init() {
        super.init(isTame: false)
    }
    override func speak(expression: String) {
        print("ROAR, \(expression)")
    }
    
}

class Persian: Cat {
    init() {
        super.init(isTame: true)
    }
    override func speak(expression: String) {
        print("PURRRRrrrrr, \(expression)")
    }
}


var alleyCat = Cat(isTame: false)
alleyCat.isTame
alleyCat.legs
alleyCat.speak(expression: "ma ma ma meow")

var leo = Lion()
leo.legs
leo.speak(expression: "I'm king of the forest!")


var okuro = Persian()
okuro.speak(expression: "can I have some kibble?")



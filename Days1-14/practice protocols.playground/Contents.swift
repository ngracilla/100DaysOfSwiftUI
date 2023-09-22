import Cocoa

protocol CatTrait {
    var name: String { get }
    func sound() -> String
}

class Cat: CatTrait {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func sound() -> String {
        return "Meow"
    }
    
}

class HouseCat: Cat {
    var type: String
    init(name: String, type: String) {
        super.init(name: name)
        self.type = "House cat"
        
    }
}

var kettles = HouseCat(name: "KettleBell")
print("Kettles says \(kettles.sound())")

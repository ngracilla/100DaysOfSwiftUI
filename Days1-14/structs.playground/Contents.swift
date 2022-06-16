import Cocoa

struct Book {
    let title: String
    let author: String
    let publishedYear: Int
    
    func printSummary() {
        print("\(title) - \(author) [\(publishedYear)] ")
    }
}

let myBook = Book(title: "hey", author: "bar", publishedYear: 2018)
print(myBook.title)
myBook.printSummary()

// Structs and Initializers

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
        // note: you've got to get these values in first, before calling any other methods
        // and Swift's built in memberwise init can't be used when you init your own, so you must set everything.
    }
}

let player = Player(name: "Foo")

player.name
player.number


// Access control

struct School {
    var staffNames: [String]
    private var studentNames: [String]
    init(staff: String...) {
        self.staffNames = staff
        self.studentNames = [String]()
    }
}
let royalHigh = School(staff: "Mrs Hughes")
print(royalHigh.staffNames)

// Static properties and methods

struct AppData {
    static let version = "2.2 beta 003"
    static let support = "no@thanks.com"
}

print(AppData.support)



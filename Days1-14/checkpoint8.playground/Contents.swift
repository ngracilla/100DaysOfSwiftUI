import Cocoa

protocol Building {
    var rooms: Int {get set}
    var cost: Int {get set}
    var agent: String {get set}
    func printSummary()
}

extension Building {
    func printSummary() {
        print("This \(rooms) room \(Self.self) is being sold for \(cost) by \(agent)")
    }

}


struct House: Building {
    var rooms: Int = 0
    var cost: Int = 0
    var agent: String = ""

}

struct Office: Building {
    var rooms: Int = 0
    var cost: Int = 0
    var agent: String = ""

}


var sears = Office(rooms: 3_000, cost: 20_000_000, agent: "Mr Smith")
var home = House(rooms: 4, cost: 250_000, agent: "Jane Fonda"
)
print(sears.agent)
sears.printSummary()
home.printSummary()

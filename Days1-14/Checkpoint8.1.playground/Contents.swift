import Cocoa

/* Checkpoint 9.1:

Your challenge is this: make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it. Your protocol should require the following:

- A property storing how many rooms it has.
- A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
- A property storing the name of the estate agent responsible for selling the building.
- A method for printing the sales summary of the building, describing what it is along with its other properties.
 */

protocol Building {
    var buildingType: String { get }
    var rooms: Int {get set}
    var cost: Int {get set}
    var agent: String {get set}
    func summary()
}

extension Building {
    func summary() {
        print("\(agent) is selling this \(buildingType) for $\(cost)")
    }
}

struct House: Building {
    let buildingType = "house"
    var rooms: Int
    var cost: Int
    var agent: String
}

struct Office: Building {
    let buildingType = "office"
    var rooms: Int
    var cost: Int
    var agent: String
}

let tinyhouse = House(rooms: 1, cost: 20000, agent: "John")
tinyhouse.summary()

let bigoffice = Office(rooms: 500, cost: 6_500_000, agent: "Mr. Bigshot")
bigoffice.summary()

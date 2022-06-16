import Cocoa

struct Automobile {
    let model: String
    let seats: Int = 0
    private(set) var currentGear: Int = 1

    init(name: String) {
        self.model = name
    }

    mutating func shiftUp() {
           if currentGear < 10 {
               currentGear += 1
           } else {
               print("I'm givin' 'er all she's got!")
           }
    }
    
    mutating func shiftDown() {
           if currentGear > 0 {
               currentGear -= 1
           } else {
               print("She's already as low as she can go!")
           }
    }

}

var mycar = Automobile(name: "Junker")
mycar.seats
mycar.currentGear
mycar.shiftDown()
mycar.shiftUp()
mycar.shiftUp()
mycar.shiftUp()

mycar.currentGear


import Cocoa

/*
 
 create a struct to store information about a car, including its model, number of seats, and current gear, then add a method to change gears up or down. Have a think about variables and access control: what data should be a variable rather than a constant, and what data should be exposed publicly? Should the gear-changing method validate its input somehow?

 
 */

struct Car {
    let model: String
    var seats: Int = 0
    private(set) var currentGear: Int = 1
    
    init(model: String) {
        self.model = model
    }
    
    func carSummary() {
        print("This is a \(model) car with \(seats) seats.  It's in \(currentGear) gear.")
    }
    mutating func shiftUp() {
        self.currentGear += 1
    }
    mutating func shiftDown() {
        self.currentGear -= 1
    }
    
}

var myCar = Car(model: "Kia")
myCar.carSummary()
myCar.shiftUp()
myCar.carSummary()
myCar.shiftDown()
myCar.shiftDown()
myCar.shiftDown()
myCar.carSummary()

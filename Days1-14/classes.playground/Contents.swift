import Cocoa

class Plants {
    let color: String
    init(color: String) {
        self.color = color
    }
}

let lettuce = Plants(color: "Red")
print(lettuce.color)


class Herbs: Plants {
    let bitter: Bool
    init(bitter: Bool, color: String) {
        self.bitter = bitter
        super.init(color: color)
    }
}

let rosemary = Herbs(bitter: true, color: "Pine")
print(rosemary.color)

class gardenPlants {
    var herbs: [String] = ["Basil"]
    init(herbs: [String]) {
        self.herbs = herbs
    }
}

var balcony = gardenPlants(herbs: ["Thyme", "Rosemary"])
print(balcony.herbs)

var patio = balcony
print(patio.herbs)


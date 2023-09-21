import Cocoa

/*
 
 Test Question: Swift Class Hierarchy for Garden Plants and Herbs

 Instructions: Write Swift code to define a class hierarchy for garden plants and herbs. You are given a base class Plant. Your task is to create two subclasses (Herb and Tree) that inherit from Plant. Additionally, you should override methods in each subclass to demonstrate their unique characteristics.

 Create a parent class Plant with the following properties and methods:
 name (String): Represents the name of the plant.
 type (String): Represents the general type of the plant (e.g., "Herb" or "Tree").
 wateringInstructions() method: Prints instructions for watering the plant. The default implementation should print "Water the plant regularly."
 Create a subclass Herb that inherits from Plant. Herb should:
 Have an additional property:
 medicinal (Bool): Represents whether the herb is medicinal (true) or not (false).
 Override the wateringInstructions() method to print "Water the herb moderately."
 Create another subclass Tree that inherits from Plant. Tree should:
 Have an additional property:
 height (Double): Represents the height of the tree in meters.
 Override the wateringInstructions() method to print "Water the tree deeply, especially during dry periods."
 Create an instance of Herb with the following attributes:
 Name: "Lavender"
 Type: "Herb"
 Medicinal: true
 Create an instance of Tree with the following attributes:
 Name: "Oak"
 Type: "Tree"
 Height: 15.5 meters
 Demonstrate the functionality by calling the wateringInstructions() method on both the Herb and Tree instances.

 
 */

class Plant {
    var name: String
    var type: String
    
    init(name: String, type: String) {
        self.name = name
        self.type = type
    }
    
    func wateringInstructions() {
        print ("Water the plant regularly.")
        
    }
}

class Herb: Plant {
    var medicinal: Bool
    
    init(name: String, medicinal: Bool) {
        self.medicinal = medicinal
        super.init(name: name, type: "Herb")
    }
    override func wateringInstructions() {
        print ("Watering instructions for \(name) (\(type)): Water the herb moderately.")
    }
    
}

class Tree: Plant {
    var height: Double
    
    init(name: String, height: Double) {
        self.height = height
        super.init(name: name, type: "Tree")
    }
    
    override func wateringInstructions() {
        print ("Watering instructions for \(name) (\(type)): Water the tree deeply, especially during dry periods.")
    }
}

var basil = Herb(name: "Basil", medicinal: true)
print("\(basil.name): is a \(basil.type) and is medicinal: \(basil.medicinal)")
basil.wateringInstructions()

var lav = Herb(name: "Lavender", medicinal: true)
var oak = Tree(name: "Oak", height: 15.5)

lav.wateringInstructions()
oak.wateringInstructions()

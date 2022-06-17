import Cocoa

protocol Plantable {
    var plantType: String { get set }
    func addFertilizer(grams: Double)
}

struct vegetables: Plantable {
    var plantType = "Veggies"
    func addFertilizer(grams: Double) {

    }
}

struct fruits: Plantable {
    var plantType = "Fruits"
    func addFertilizer(grams: Double) {
        
    }
}


var tomato = vegetables()
tomato.plantType

var apple = fruits()
apple.plantType

// opaque return types

// extensions

var myQuote = "   what is a man, if his chief good and fortune be but to feed?"





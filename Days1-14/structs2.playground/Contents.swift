import Cocoa

struct Herb {
    let commonName: String
    let botanicalName: String
    let plantedYear: Int
    var rating: Int = 5
    var nameRating: String {
        "\(commonName) score:\(rating)"
    }
    
    func printSummary() {
        print("\(commonName) (\(botanicalName)) - planted in \(plantedYear). Rating: \(rating) ")
    }
    mutating func betterRate() {
        rating += 1
    }
    mutating func worseRate() {
        rating -= 1
    }
    
}

var basil = Herb(commonName: "Basil", botanicalName: "Ocimum Basilicum", plantedYear: 2023, rating:8)
basil.betterRate()
basil.betterRate()

var thaibasil = Herb(commonName: "Thai Basil", botanicalName: "O. basilicum var. thyrsiflora", plantedYear: 2022)
thaibasil.worseRate()

basil.printSummary()
thaibasil.printSummary()

/* notice this is not a function: it's more like a variable call*/

print(basil.commonName)
print(basil.nameRating)




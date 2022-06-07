import Cocoa

let minKMtominMI = 1.609344

let minutesPerKilometer :Double = 5
let minutesPerMile :Double

minutesPerMile = minutesPerKilometer * minKMtominMI
print ("\(minutesPerKilometer) min/km is \(minutesPerMile) min/mi.")

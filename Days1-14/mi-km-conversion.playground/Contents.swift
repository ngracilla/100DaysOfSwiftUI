import Cocoa

func KMtoMI (minsPerKm : Double) {
    let KMtoMIConversion = 1.609344
    print("\(minsPerKm) min/km is \(minsPerKm * KMtoMIConversion) min/mi.")
}

KMtoMI(minsPerKm: 5)

import Cocoa

func toCelcius (_ degrees: Double ) -> Double {
    (degrees - 32 ) / 1.8
}

func toFarenheit (_ degrees: Double) -> Double {
    (degrees * 1.8 ) + 32
}

toFarenheit(25)
toCelcius(68)


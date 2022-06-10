import Cocoa

enum GardenError: Error {
    case stolen, eaten, overwatered
}

func checkGarden (_ name: String) throws -> String {
    if name == "Public allotment" {
        throw GardenError.stolen
    }
    else if name == "Public park" {
        throw GardenError.eaten
    } else {
    return "looks good"
    }
}

let garden = "Public park"
do {
    let result = try checkGarden(garden)
    print ("this garden \(result)")
} catch GardenError.stolen {
    print ("Sorry, something's missing.")
} catch GardenError.eaten {
    print ("Sorry, something ate most of this plot.")
} catch {
    /* The pokemon catch: gotta catch them all! */
    print ("Sorry, some kind of garden problem happened.")
}


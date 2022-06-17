import Cocoa

let herbs = ["basil", "chives", "rosemary", "thyme"]

for i in 0 ..< herbs.count {
    print("I love to cook with \(herbs[i]).")
}

herbs.map( {print("The \($0) looks good, I'll take some.")} )

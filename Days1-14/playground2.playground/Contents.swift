import Cocoa
import Foundation

let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

for day in days {
    print("\(day)")
}

var countdown = Int.random(in: 1...30)

while countdown > 0 {
        print ("countdown: \(countdown) ")
        countdown -= 1
}
 

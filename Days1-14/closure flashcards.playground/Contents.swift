import Cocoa

let rain = {
    print ("Here comes the rain! ⛈")
}
rain()


/*------- */


var happyBirthday = { (name: String) in
    print("Happy birthday, \(name) 🎂 !!")
}

happyBirthday("President Kennedy")
happyBirthday("Charlie Brown")


/*------- */


let moreCowbell = { (count: Int) in
  for _ in 1...count {
    print("Cowbell 🐄🔔")
  }
}

moreCowbell(3)


/*------- */


let feedMeSeymour = { (plant: String, grams: Int) in
    print("I've given \(grams)g of fertilizer to \(plant).")
}

feedMeSeymour("Audrey II", 375)


/*------- */


var letsGoForAWalk = { (dogs: Int, hours: Int) in
    print("I'm taking \(dogs) dogs on a \(hours) hour walk.")
}

letsGoForAWalk(3,2)

/*------- */

let racePace = { (km: Double, kmpm: Double) in
    print("I plan to run \(km) kilometers in \(kmpm) km/min, a total time of \(km*kmpm) minutes.")
}
racePace(5,4.75)

/*------- */

var onSale = { (item: String) in
    switch item {
    case "milk", "eggs", "butter":
        print("\(item) is on sale.")

    default:
    print("\(item) is not on sale.")
    }
}

onSale("eggs")

/*------- */

let isMyTireFlat = { (isFlat: Bool) -> String in
  isFlat ? "Sorry, you're going to have to fix this tire first." : "Bike looks good, let's go!"
}

print(isMyTireFlat(true))

/*------- */

var SEOSpamBot = { (topic: String, words: Int) -> String in
    "I'm an expert on \(topic), here's a \(words) word essay on it..."
}
print(SEOSpamBot("Closures", 1_750))

/*------- */

let totalRainfall = {(inchesPerHour: Double, hours:Int) -> Double in
    inchesPerHour * Double(hours)
}

print("It's rained \(totalRainfall(1.75,3)) inches total.")

/* -------
 Closures as parameters to functions ------*/

func photoOnSafari(day animal: () -> Void) {
    print ("I'm going on safari, and I hope to photograph a...")
    animal()
}

var monday = {
    print("elephant")
}
var tuesday = {
    print("giraffe")
}
var wednesday = {
    print("zebra")
}

photoOnSafari(day: monday)
photoOnSafari(day: tuesday)
photoOnSafari(day: wednesday)


/*------- */

var bus = {
    print("Let's take the express bus.")
}
var bike = {
    print("It's nice out: let's bike.")
}
var uber = {
    print("It would be quicker to take an Uber, no?")
}

func goDowntown(transit: () -> Void) {
    print ("Let's go downtown.")
    transit()
}

goDowntown(transit: bus)
goDowntown(transit: bike)
goDowntown(transit: uber)

/*------- */

var book1 = {
    print("The Grapes of Wrath")
}

var book2 = {
    print("The Mythical Man-Month")
}

func readBook(title: () -> Void) {
    print("Let's read this book: ")
    title()
}

readBook(title: book1)
readBook(title: book2)

/*------- */

var venmo = {
    print("Venmo")
}
var apple = {
    print("Apple Cash")
}
var zelle = {
    print("Zelle")
}

func payUsing(person: String, paymentMethod: () -> Void) {
    print("Let's pay \(person), using...")
    paymentMethod()
}

payUsing(person: "Eric", paymentMethod: zelle)
payUsing(person: "John", paymentMethod: venmo)

/*------- */

var backstroke = {
    print("the back stroke.")
}

var crawl = {
    print("the crawl: it's my fastest.")
}

var butterfly = {
    print("the butterfly. Watch me splash!")
}

func goSwimming(laps: Int, stroke: () -> Void) {
    print("I'm going to swim \(laps) laps, using...")
    stroke()
}

goSwimming(laps: 8, stroke: butterfly)
goSwimming(laps: 12, stroke: backstroke)

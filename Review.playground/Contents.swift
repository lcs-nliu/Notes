import Cocoa

// Dictionaries

// Array ex

var person = ["Taylor", "Alison", "Swift", "December", "taylorswift.com"]
let middleName = person[1]

// Dictionary ex

var personDict = [
    "first": "Taylor",
    "middle": "Alison",
    "last": "Swift",
    "month": "December",
    "website": "taylorswift.com"
]

personDict["middle"]
personDict["month"]


// Functions

func favouriteAlbum(name: String) {
    print ("My favourite is \(name)")
}

favouriteAlbum(name: "Fearless")

func printAlbumRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}

printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speak Now", year: 2010)
printAlbumRelease(name: "Red", year: 2012)

func countLettersInString(in string: String) {
    print("The string \(string) has \(string.count) letters.")
    
}

countLettersInString(in: "Hello")


func albumIsTaylors (name: String) -> Bool {
    if name == "Taylor Swift" {return true}
    if name == "Fearless" {return true}
    return false
}

if albumIsTaylors(name: "Taylor Swift") {
    print ("That's one of hers!")
} else {
    print ("Who made that?")
}

if albumIsTaylors(name: "The White Album") {
    print ("That's one of hers!")
    
} else {
    print ("Who made that?")
    
}

// Optionals

//func getHaterStatus (weather: String) -> String? {
//    if weather == "sunny" {
//        return nil
//    } else {
//        return "Hate"
//    }
//}
//
//var status = getHaterStatus(weather: "rainy")
//
//if let unwrappedStatus = status {
//    // unwrappedSatus contains a non optional string
//} else {
//    // in case you want an else block, here you go...
//}
//
//
//func takeHaterAction(status: String) {
//    if status == "Hate" {
//        print ("Hating")
//    }
//}
//
//if let haterStatus = getHaterStatus(weather: "rainy") {
//    takeHaterAction(status: haterStatus)
//}

//func yearAlbumReleased(name:String) -> Int? {
//    if name == "Taylor Swift" { return 2006 }
//    if name == "Fearless" {return 2008}
//    return nil
//}

var items = ["James", "John", "Sally"]

func position(of string: String, in array: [String]) -> Int {
    for i in 0..<array.count {
        if array[i] == string {
            return i
        }
    }
    return 0
}

let jamesPosition = position(of: "James", in: items)
let johnPosition = position(of: "John", in: items)
let sallyPosition = position(of: "Sally", in: items)
let bobPosition = position(of: "Bob", in: items)

func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006}
    if name == "Fearless" { return 2008}
    return nil
}

var year = yearAlbumReleased(name: "Taylor Swift")

if year == nil {
    print("There was an error.")

} else {
    print("It was released in \(year!).")
}

// Implicitly unwrapped variables
var name: String = "Paul"
var name2: String? = "Bob"
var name3: String! = "Sophie"

// Optional Chaining

func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    default: return nil
    }
}
// Swift will only make uppercased if there is a value
//let album = albumReleased(year: 2006)?.uppercased()
//print("The album is \(album)")

let album = albumReleased(year: 2006) ?? "unknown"
print("The album is \(album)")


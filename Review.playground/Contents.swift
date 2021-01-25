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


// 

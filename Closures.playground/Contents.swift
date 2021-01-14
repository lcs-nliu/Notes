import Cocoa
// Creating Basic Closures

// functions who are assigned to a variable, called using the variable, and passed into other functions as parameters

//let driving = {
//    print("I'm driving in my car")
//}
//
//driving ()

// Accepting parameters in a closure

let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving("London")


import Cocoa
// Creating Basic Closures

// functions who are assigned to a variable, called using the variable, and passed into other functions as parameters

//let driving = {
//    print("I'm driving in my car")
//}
//
//driving ()

// Accepting parameters in a closure
//
//let driving = { (place: String) in
//    print("I'm going to \(place) in my car")
//}
//driving("London")


// Returning values in closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


let message = drivingWithReturn("London")
print(message)

// Closures as Parameters

//let driving = {
//    print("I'm driving in my car")
//}
//
//func travel(action: () -> Void) {
//    print("I'm getting ready to go.")
//    action()
//    print("I arrived!")
//}
//
//travel(action: driving)

// Trailing closure syntax

//func travel(action: () -> Void) {
//    print("I'm getting ready to go.")
//    action()
//    print("I arrived!")
//}
//
//travel {
//    print("I'm driving in my car")
//}

// CLOSURE PART TWO

// Using closures as parameters

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}




func makePizza(addToppings: (Int) -> Void) {
    print("The dough is ready.")
    print("The base is flat.")
    addToppings(2)
}
makePizza { (toppingCount: Int) in
    let toppings = ["ham", "salami", "onions", "peppers"]
    for i in 0...toppingCount {
        let topping = toppings[i]
        print("I'm adding \(topping)")
    }
}

// Using closures as parameters when they return values

//func travel(action: (String) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("London")
//    print(description)
//    print("I arrived!")
//}
//
//travel { (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}

// Shorthand parameter names
// rewriting the function/closure above in shorthand


func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

// Simplify 1

//travel { place -> String in
//    return "I'm going to \(place) in my car"
//}


// Simplify 2

//travel { place in
//    return "I'm going to \(place) in my car"
//}

// Simplify 3

//travel { place in
//    "I'm going to \(place) in my car"
//}

// Simplify 4

travel {
    "I'm going to \($0) in my car"
}



// Closures with multiple parameters

func travel2(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}


travel2 { (place: String, miles: Int) -> String in
    "I'm going to \(place) at \(miles) miles per hour."
}

// written in shorthand

travel2 {
    "I'm going to \($0) at \($1) miles per hour."
}


// Returning closures from functions + capturing values

func travel3() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result = travel3()
result("London")

let result2 = travel3()("London")





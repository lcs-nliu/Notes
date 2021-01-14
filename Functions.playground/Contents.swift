import Cocoa


// Writing Functions
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp()


// Accepting Parametres
print("Hello, world!")

//func square(number: Int) {
//    print(number * number)
//}

//square(number:2)

// Returning Values


func square(number: Int) -> Int {
    return number * number
}

let result = square(number: 8)
print(result)

// Parameter Labels

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

// external: to internal: name
sayHello(to: "Taylor")


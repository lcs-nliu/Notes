import Cocoa

// Creating your own structures
struct Sport {
    var name: String
    
    var isOlympicSport: Bool

    // Computed properties
    
        var olympicStatus: String {
            if isOlympicSport {
                return "\(name) is an Olympic sport"
            } else {
                return "\(name) is not an Olympic sport"
            }
        }
    
}

//var tennis = Sport(name: "Tennis")
//print(tennis.name)
//tennis.name = "Lawn tennis"
//print(tennis.name)


let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)


// Property Observers

struct Progress {
    var task: String
    var amount: Int {
           didSet {
               print("\(task) is now \(amount)% complete")
           }
       }
}

var progress = Progress(task: "Loading data", amount: 0)
// prints a message every time amount changes
progress.amount = 30
progress.amount = 80
progress.amount = 100

// Methods


struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}


let london = City(population: 9_000_000)
print(london.collectTaxes())


// Mutating methods

struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()

// Properties and methods of strings

let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

// Properties and methods of arrays

var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)
print(toys)

// Initializer

struct User {
    var username: String
    
    init() {
           username = "Anonymous"
           print("Creating a new user!")
       }
    
    
}

var user = User()
user.username = "twostraws"



// Referring to the current instance

struct Person2 {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

var birthName = Person2(name: "John")
birthName.name

// Lazy variables
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person3 {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person3(name: "Ed")
ed.familyTree

// Static properties

struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let max = Student(name: "Max")
let taylor = Student(name: "Taylor")
print(Student.classSize)

// Access Control

struct Person4 {
    private var id: String

       init(id: String) {
           self.id = id
       }

       func identify() -> String {
           return "My social security number is \(id)"
       }
   }


let john = Person4(id: "12345")


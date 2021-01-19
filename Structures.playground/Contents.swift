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



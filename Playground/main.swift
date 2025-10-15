import Foundation

let constant = "Hello, Constant!"
var variable = "Hello, Variable!"
variable = "Hello, World!"

print(constant)
print(variable)

let string = """
    🤪He llo, World!🤪
    """

print(string.count)

var score = 10

score += 1

score = score / 2

let aDouble = 1.0
var boolean = true

boolean.toggle()

print(boolean)
print(aDouble.isInfinite)

let interpolate = "This is interpolation with \(aDouble) and \(boolean)"
print(interpolate)

var colors = ["Red", "Orange", "Yellow", "Green"]

print(colors[1])

colors.append("Blue")

let dictionary = [
    "one": "world",
    "two": "is",
    "three": "awesome",
]

print(dictionary["one", default: "test"])

let sets = Set([1, 1, 2, 3])

print(sets)
print(Weekday.friday)

var number: Double = 3.14
var isGood: Bool = true

var array: [String] = ["One", "Two", "Three"]
var array2: [String] = ["One", "Two", "Three"]

var array4: [String] = [String]()

var dictionary1: [String: String] = ["string": "hello"]
var dictionary2: [String: String] = ["string": "hello"]

let age = 25

if age > 40 && age < 60 {
    print("You're in the middle age bracket!")
} else if age == 10 {
    print("10 is a special age!")
} else {
    print("Not in the middle age bracket!")
}

let line = readLine()

if let line {
    print("You typed: \(line)")
} else {
    print("No line was typed.")
}

if line != nil {
    print("You typed: \(line!)")
}

let range = 1...4

for number in range {
    print(number)
}

for _ in 1..<10 {
    print("Hello, World!")

}

func function(parameter: String) -> String {
    "Hello, \(parameter)!"
}

print(function(parameter: "jjjj"))

func tulips() -> (number: Int, string: String) {
    (number: 4, string: "red")
}

let result = tulips()

print(result.number)
print(result.string)

let (num, _) = tulips()
print(num)

func noNameParameter(_ a: Int, _ c: Int) -> Int {
    a + c
}

print(noNameParameter(1, 2))

func labelParameter(hello string: String) -> String {
    "Hello, \(string)!"
}

enum Errors: Error {
    case Invalid(data: String)
}

func errors(_ input: String) throws -> String {
    if input == "hello" {
        throw Errors.Invalid(data: input)
    }

    return "Hello, \(input)!"
}

do {
    _ = try errors("hello")
} catch Errors.Invalid(let data) {
    print("Invalid input: \(data)")
} catch {
    print("An unexpected error occurred.")
}

let closure = { (input: String) -> Bool in
    !input.isEmpty
}

_ = array.filter {
    $0.starts(with: "O")
}


struct Person {
    var name: String
    let age: Int
    
    mutating func refresh() {
        name = "Hello"
    }
    
    var calculated: String {
        "\(name) and \(age)"
    }
    
    var calculated2: String {
        get { 
            "\(name) and \(age)"
        }
        set {
            name = "rrr"
        }
    }
}

var person = Person(name: "Aziz", age: 34)

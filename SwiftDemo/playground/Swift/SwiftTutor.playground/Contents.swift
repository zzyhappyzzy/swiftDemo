//: Playground - noun: a place where people can play

import UIKit

//: Swift 3.0.1

print("Hello World !")

//变量
var variable1 = 12
variable1 = 20
let constant1 = 32
let explicitDouble: Double = 70
let explicitFloat: Float = 4

//类型转换
let label = "The Width is "
let width = 99
let widthLabel = label + String(width)

//转义
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

//数组、字典
var shoppingList = ["catfish", "warer", "tulips", "blue paint"]
shoppingList[1]

var occupations = [
    "Malcom": "Captain",
    "Kaylee": "Mechanic"
]
occupations["Jayne"] = "Public Relations"

var emptyArray = [Int]()
var emptyDic1 = [String: Int]()
var emptyDic2 = [String : Any]()

shoppingList = []
occupations = [:]

//if
let individualScore = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScore {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

//可选
var optionalString: String? = "hello"
var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hello \(nickName ?? fullName)"

//switch
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

//for..in
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

//loop
var n = 2
var loopCnt = 0
while n < 100 {
    loopCnt += 1
    n *= 2
}
print("loop cnt is \(loopCnt), final n is \(n)")

///repeat...while 先执行循环，再判断是否满足循环条件
///如将m初始值设为200，则最终m值为400.
var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

//..<小于;...小于等于
var sum1 = 0
for i in 0..<10 {
    sum1 += i
}
print(sum1)
var sum2 = 0
for i in 0...10 {
    sum2 += i
}
print(sum2)

//function
func greet(_ person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("Bob", day: "Friday")

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 20, 8, 68])
print("min value is \(statistics.min), max value is \(statistics.max), sum is \(statistics.sum)。Or sum is \(statistics.2)")

func averageOf(numbers: Int...) -> Int {
    var sum = 0
    for num in numbers {
        sum += num
    }
    if sum == 0 { return 0 }
    return sum / numbers.count
}
averageOf(numbers: 12, 13, 15)

//函数嵌套、返回函数
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(num: Int) -> Int {
        return num + 1
    }
    return addOne
}
var increment = makeIncrementer()
increment(12)

//函数作为参数
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [19, 20, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

//用in分开{...}里的参数和返回值
let mapNum = numbers.map({
    (num: Int) -> Int in
    if num % 2 == 0 {
        return 0
    }
    return num
})
print(mapNum)

let sortedNumber1 = numbers.sorted { (num1, num2) -> Bool in
    return num1 > num2
}
print(sortedNumber1)
//等价于
let sortedNumber2 = numbers.sorted{ $0 > $1 }
print(sortedNumber2)

//class
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
var shape = Shape()
shape.numberOfSides = 8
shape.simpleDescription()

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        //before deallocate
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() ->  Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

//willset和didset在初始化和改变后调用(不需计算改属性)。如果需要计算属性，用计算属性即可
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)

//enumerations and structures
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    func larger(than rank: Rank) -> Bool {
        return self.rawValue > rank.rawValue
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
ace.simpleDescription()
let jack = Rank.jack
jack.larger(than: ace)

enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        switch self {
        case .spades, .clubs:
            return "black"
        case .hearts, .diamonds:
            return "red"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
hearts.color()


//struct是值传递，class是引用传递
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

//protocol
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

//classes,enumerations,and structs can all adopt protocols
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

enum SimpleEnumeration: ExampleProtocol {
    case Base, Adjusted
    var simpleDescription: String {
        switch self {
        case .Base:
            return "A simple description of enum"
        case .Adjusted:
            return "Adjusted description of enum"
        }
    }
    
    mutating func adjust() {
        self = SimpleEnumeration.Adjusted
    }
}
var c = SimpleEnumeration.Base
c.adjust()
let cDescription = c.simpleDescription

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
var intNum = 7
print(intNum.simpleDescription)
intNum.adjust()

//Error handle (Error protocol)
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

//throw error (throws标记该方法可以抛出错误)
func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

//do-catch,在do里面{...}，可以抛出错误的代码前加上try
do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
    print(printerResponse)
} catch {
    print(error)
}

//捕获多种错误
do {
    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}

//另外一种方法，在try后加？,如果出现异常，则值为nil
let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")

//defer{}里面的代码在整个函数执行完毕后才调用。（哪怕函数抛出错误，也会调用defer里面的代码）
var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    print(fridgeIsOpen)
    let result = fridgeContent.contains(food)
    return result
}
fridgeContains("banana")
print(fridgeIsOpen)

//Generics泛型<T>
//其实常见的Array和Dictionary等，就是泛型定义的
//泛型能够减少冗余代码，增强扩展性和复用性等

///假如现在有个函数，两个参数
///参数类型不确定（可能为任意类型，如Int,String,Float...）
///必须保证两个参数的类型是相同的，你会怎么定义这种函数呢？
///这时就需要泛型来支撑
///inout标记指针，调用方法时记得参数前加上&param表示引用传递
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let tmpA = a
    a = b
    b = tmpA
}

var value1 = 12
var value2 = 15
print("before swap value1 is \(value1) and value2 is \(value2)")
swapTwoValues(&value1, &value2)
print("after swap value1 is \(value1) and value2 is \(value2)")






































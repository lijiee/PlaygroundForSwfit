//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//: Playground - noun: a place where people can play

/*
 var str = "Hello, playground"
 var myVariable = 42
 myVariable = 50
 let myConstant = 42
 let label = "The width is"
 let width = 94
 let widthLabel = label + String(width)
 let apples = 3
 let oranges = 5
 let appleSummary = "I have \(apples) apples."
 let fruitSummary = "I have \(apples + oranges) pieces of fruit."
 var shoppingList = ["catfish", "water", "tulips", "blue paint"]
 shoppingList[1] = "bottle of water"
 var occupations = [
 "Malcolm": "Captain",
 "Kaylee": "Mechanic",
 ]
 occupations["Jayne"] = "Public Relations"
 let emptyArray = [String]()
 let emptyDictionary = [String: Float]()
 shoppingList = []
 occupations = [:]
 let individualScores = [75, 43, 103, 87, 12]
 var teamScore = 0
 for score in individualScores {
 if score > 50 {
 teamScore += 3
 } else {
 teamScore += 1
 } }
 print(teamScore)
 var optionalString: String? = "Hello"
 print(optionalString == nil)
 var optionalName: String? = "John Appleseed"
 var greeting = "Hello!"
 if let name = optionalName {
 greeting = "Hello, \(name)"
 }
 let nickName: String? = nil
 let fullName: String = "John Appleseed"
 let informalGreeting = "Hi \(nickName ?? fullName)"
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
 } }
 print(largest)
 var n = 2
 while n < 100 {
 n=n*2 }
 print(n)
 
 var m = 2
 repeat {
 m = m * 2
 }while m < 100
 print(m)
 var total = 0
 for i in 0..<4 {
 total += i }
 print(total)
 
 func greet (person: String, day: String)->String{
 return person + day
 }
 greet(person: "d", day: "b")
 func greetOne(_ person: String,on day: String){
 print(person + day)
 }
 greet(person: "ddf", day: "dffs")
 
 
 
 func calculate(scores: [Int]) ->(min : Int, max : Int, sum : Int){
 var min = scores[0]
 var max = scores[0]
 var sum = 0
 
 for score in scores {
 if score > max {
 max = score
 }else if score < min {
 min = score
 }
 sum += score
 }
 return (min,max,sum)
 }
 
 let v = calculate(scores: [1, 2, 3, 4, 5])
 
 print(v.2)
 func sumOf(numbers: Int...) -> Int {
 var sum = 0
 for number in numbers {
 sum += number
 }
 return sum }
 sumOf()
 sumOf(numbers: 42, 597, 12)
 func returnFifteen() -> Int {
 var y = 10
 func add() {
 y += 5
 }
 add()
 return y
 }
 returnFifteen()
 func makeIncrementer() -> ((Int) -> Int) {
 func addOne(number: Int) -> Int {
 return 1 + number
 }
 return addOne
 }
 var increment = makeIncrementer()
 increment(7)
 func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
 for item in list {
 if condition(item) {
 return true
 } }
 return false
 }
 
 func lessThanTen(number: Int) -> Bool {
 return number < 10
 }
 
 
 var numbers = [20, 19, 7, 12]
 hasAnyMatches(list: numbers, condition: lessThanTen)
 
 numbers.map({
 (number: Int) -> Int in let res = 3 * number
 return res
 })
 
 let mappedNumbers = numbers.map({ number in 3 * number })
 print(mappedNumbers)
 
 let sortedNumbers = numbers.sort { $1 > $0 }
 print(sortedNumbers)
 
 enum ServerResponse {
 case Result(String, String)
 case Failure(String)
 }
 //let success = ServerResponse.Result("6:00 am", "8:09 pm")
 let failure = ServerResponse.Failure("Out of cheese.")
 switch failure {
 case let .Result(sunrise, sunset):
 let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
 case let .Failure(message):
 print("Failure...  \(message)")
 }
 class Shape {
 var numberOfSides = 0
 func simpleDescription() -> String {
 return "A shape with \(numberOfSides) sides."
 }
 }
 var shape = Shape()
 shape.numberOfSides = 10
 
 shape.simpleDescription()
 class  NamedShape{
 var numberOfSides: Int = 0
 var name: String
 init(name: String) {
 self.name = name
 }
 
 func simpeDescription() -> String {
 return "fdfsf\(numberOfSides)d"
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
 override func simpeDescription() -> String {
 return "A square with sides of length \(sideLength)."
 } }
 let test = Square(sideLength: 5.2, name: "my test square")
 test.area()
 test.simpeDescription()
 
 
 enum Rank: Int{
 case Ace = 1
 case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
 case Jack, Queen, King
 func simpleDescription() -> String {
 switch self {
 case .Ace:
 return"ace"
 case .Jack:
 return "jack"
 case .Queen:
 return"queen"
 case .King:
 return"king"
 default:
 return String(self.rawValue)
 
 }
 }
 }
 let ace = Rank.Ace
 let aceRawVale = ace.rawValue
 let three = 3
 let pointOneFourOneFiveNine = 0.235323
 let pi = Double(three) + pointOneFourOneFiveNine
 
 let interPi = Int(pi)
 func makeIncrementer(forIncrement amount: Int) -> () -> Int {
 var runningTotal = 0
 func incrementer() -> Int {
 runningTotal += amount
 return runningTotal
 }
 return incrementer
 }
 
 
 
 enum CompassPoint {
 case North, South, East, West
 }
 var currentDirection = CompassPoint.West
 let rememberedDirection = currentDirection
 currentDirection = .East
 if rememberedDirection == .West {
 print("The remembered direction is still .West")
 }
 
 
 
 func hasAnyMatches(list:[Int], condition:(Int)->Bool)->Bool{
 for item in list {
 if condition(item) {
 return true
 }
 }
 
 return false
 
 }
 
 func lessThanTen(numbers: Int) -> Bool{
 
 return numbers < 100
 
 }
 
 var numbers = [20, 19, 7, 12]
 hasAnyMatches(list: numbers, condition: lessThanTen)
 
 
 var scores = ["di":3]
 let old = scores.updateValue(4, forKey: "d")
 
 print("the old value was \(String(describing: old))")
 
 let plays = Array(scores.values)
 
 let points = Array(scores.keys)
 
 if let myScore = scores["di"] {
 print(myScore)
 }
 
 
 let names = ["Joseph", "Cathy", "Winston"]
 for name in names {
 print("Hello \(name)")
 }



let positiveNumer = abs(-10)
print("\(positiveNumer)")

struct Car {
    var color : UIColor
    var make : String
    var year : Int
    var topSpeed : Int
    
   var description : String {
        return "This is a \(color) car";
    }
    mutating func changeColor(myColor : UIColor){
        color = myColor;
        print("color with change \(color)")
    }
    
}
let  firstCar = Car(color: .yellow, make: "china", year: 1900, topSpeed: 300)
var secondCar = firstCar
secondCar.color = .black
secondCar.changeColor(myColor: .white)
class Dog {
    let  name : String
    
    init(name : String) {
        self.name = name
    }
    func changName(people : String) -> String {
        
        print("kk\(self.name + people)")
        return self.name + people
    }
}
let dog = Dog.init(name: "kitty")

dog.changName(people: "hello")

class Vehicle{
    var currentSpeed = 0.0
    init(currentSpeed : Double) {
        self.currentSpeed = currentSpeed
    }
    var description : String {
        return "traveling at\(currentSpeed)"
    }
    func makeNoise(nextSpeed : Double){
        
        currentSpeed = nextSpeed
    }
}

let someV = Vehicle(currentSpeed: 1.0)
print("vier : \(someV.description)")
someV.makeNoise(nextSpeed: 10.0)
print("\(someV.currentSpeed)")
class Bicyle : Vehicle{
    
    var hasbask = false
    init(currentSpeed : Double,hasbask : Bool) {
        super.init(currentSpeed: 1.2)
        self.hasbask = hasbask
    }
    override func makeNoise(nextSpeed: Double) {
        print("hhh \(currentSpeed)")
    }
}

let bicy = Bicyle(currentSpeed: 1.4, hasbask: true)
bicy.hasbask = true
bicy.makeNoise(nextSpeed: 133.0)

var arrays : [String] = ["sdf","12"]

var numbers : [Int32] = [1,-3,-73,50,11,-95,300];

if numbers.contains(-3) {
    print("rh\(numbers)")
}
func numbersForD(){
    guard numbers.contains(7) else {
        print("dfsd")
        return
    }

}
numbersForD()
var scores = ["ridchad":500,"luke":"9"] as [String : Any]

print("\(scores.keys)....\(scores.values)")
if let oldValue = scores.removeValue(forKey: "luke"){
   print("\(oldValue)")
}
for index in 1..<5 {
    print("this\(index)")
}
var number = 2
while number > 1 {
    print("\(number)")
    break
}
var label = UILabel.init(frame: CGRect(x: 0, y: 0, width: 1000, height: 20))
label.text = "ni hao a bao er"
struct Book{
    var name : String
    var publicCationYear : Int?
}
let book = Book(name: "3", publicCationYear: nil)
print("\(book.publicCationYear ?? 2000)")
struct Toddler{
    var name : String
    var mothsOld : Int
    init?(name : String,mothsOld : Int) {
        if mothsOld < 12 || mothsOld > 36 {
            return nil
        }else{
            self.name = name
            self.mothsOld = mothsOld
        }
    }
}
let possibleToddler = Toddler(name: "df", mothsOld: 6)
if let toddler = possibleToddler {
    print("\(toddler.name) is old \(toddler.mothsOld)")
}else{
    print("the age you specified for")
}
class Person{
    var age : Int = 0
    var residence : Residence?
}
class Residence {
    var address : Adress?
}

class Adress {
    var buildingNumber : String = ""
    var streetName : String = ""
    var apartmentNuber : String?
}
let person = Person()

if let theResidence = person.residence{
    if let theAddress = theResidence.address {
        if let theApartmentNumber = theAddress.apartmentNuber {
            print("\(theApartmentNumber)")
        }
    }
}
if let theApartmenNuber = person.residence?.address?.apartmentNuber {
    print("\(theApartmenNuber)")
}
func getClientPet() -> Person{
    
    return Person.init()
}
enum CompassPoint {
    case north
    case east
     case south
    case west
    
}
func sum(numbers : [Int]) -> Int{
    var total = 0
    for num in numbers {
        total += num
    }
    return total
}
let names = ["d","df"]
var fullNames = names.map { (name) -> String in
    return name + "d"
}
fullNames = names.map{$0 + "dd"}
let  printClosure = { () -> Void in}
let printClosure1 = { (string : String) -> String in
    return string
}
let numbers = [4,56,7,34,6]
var numberLessThan20 : [Int] = []

for number in numbers {
    if number < 20 {
        numberLessThan20.append(number)
    }
}

print("\(numberLessThan20)")

numberLessThan20 = numbers.filter({ (number) -> Bool in
    return number < 20
})

numberLessThan20 = numbers.filter{$0<20}

var total = 0
for number in numbers {
    total = total + number
}

total = numbers.reduce(0){
    (currentNumber , newValue) -> Int in
    return currentNumber + newValue
}

total = numbers.reduce(0){$0 + $1}

total = numbers.reduce(0, { (totalNumber, number) -> Int in
    return totalNumber + number
})

print("\(total)")
let  letters = "dfsdf"
let count = letters.reduce(into: [:]) { (counts, letter) in
    counts[letters,default : 0] += 1
}
print("\(count)")

func addTo(num : Int) -> Int {
    return num + 1
}

print("\(addTo(num: 9))")

func addTwo(_ adder : Int) -> (Int) ->Int {
    
    return {
        num in
        return num + adder
    }
}
print("\(addTo(num: 3))")

let addThree = addTwo(2)
let result = addThree(9)

protocol TargetAction {
    func performAction()
}

struct TargetActionWrapper <T : AnyObject> : TargetAction {
    
    weak var target : T?
    let action : (T) -> () -> ()
    
    func performAction() ->() {
        if let t = target{
            action(t)()
        }
    }
    
}
var level : Int?
var startLevel = 1
var currentLevel = level ?? startLevel


func logIfTrue (_ predicate : @autoclosure () ->Bool){
    if predicate() {
        print("True")
    }
}
logIfTrue(2>1)
struct vector2D {
    var x = 0.0
    var y = 0.0
}
let v1 = vector2D(x: 1.0, y: 4.0)
let v2 = vector2D(x: 3.4, y: 4.4)
func +(left : vector2D, right : vector2D) -> vector2D {
    
    return vector2D(x: left.x + right.x, y: left.y + right.y)
}

func -(left : vector2D, right : vector2D) ->vector2D{
    return vector2D(x: left.x - right.x, y: left.y - right.y)
}

let v3 = v1 + v2
precedencegroup DotProductPrecedence{
    associativity : none
    higherThan : MultiplicationPrecedence
}

infix operator +*:DotProductPrecedence


func +*(left:vector2D, right:vector2D)->Double{
    return left.x * right.x + left.y * right.y
}

func  sum(input : Int...) -> Int{
    return input.reduce(0, +)
}

print(sum(input: 1,3,5,7))



func myFunc(numbers : Int... , string :String){
    numbers.forEach {
        for i in 0..<$0 {
            print("\(i + 1): \(string)")
        }
    }
}
myFunc(numbers: 1,2,3, string: "hello")
struct Point {
    let x :Double
    let y :Double
    static let zero = Point(x: 0, y: 0)
    
    static var ones : [Point]{
        
        return [Point(x: 1, y: 1),Point(x: -1, y: 1),Point(x: 1, y: -1),Point(x: -1, y: -1)]
    }
    static func add(p1 : Point, p2 : Point) -> Point {
        return Point(x: p1.x + p2.x, y: p1.y + p2.y)
    }

}

let mixed : [CustomStringConvertible] = [1, "two", 2]

for obj in mixed {
    print("\(obj.description)")
}

struct RegexHelper {
    let regex : NSRegularExpression
    init(_ pattern : String) throws {
        try regex = NSRegularExpression(pattern: pattern, options:.caseInsensitive)
    }
    
    func match(_ input : String) -> Bool {
        let matches = regex.matches(in: input, options: [], range: NSMakeRange(0, input.utf16.count))
        return matches.count > 0
    }
    
}
func ~=<T : Equatable>(a : T,b : T) -> Bool{
    return a == b
}

 */

import PlaygroundSupport


class viewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //体重
        let weightLabel = UILabel.init(frame: CGRect(x:0, y:10, width:60, height:30))
        weightLabel.text = "体重(kg)"
        weightLabel.textColor = UIColor.lightGray
        weightLabel.font = UIFont.systemFont(ofSize: 13)
        weightLabel.textAlignment = .center
        weightLabel.adjustsFontSizeToFitWidth = true
        self.view.addSubview(weightLabel)
        //然后设计纵向坐标设计(一定要注意设计的顺序结构,否则坐标位置容易出问题)
        //纵向
        let vierArray:NSArray = ["90","80","70","60","50","0"]
        for i:Int in 0 ..< vierArray.count {
            //纵坐标值
            let vLabel = UILabel.init(frame: CGRect(x:0, y:40+CGFloat(i)*30, width:30, height:30))
            vLabel.text = vierArray[i] as? String
            vLabel.font = UIFont.systemFont(ofSize: 13)
            vLabel.textAlignment = .center
            vLabel.adjustsFontSizeToFitWidth = true;
            vLabel.textColor = UIColor.lightGray;
            self.view.addSubview(vLabel);
            //横坐标线
            let vLineV = UIView.init(frame: CGRect(x:30, y:55+30*CGFloat(i), width:260, height:1));
            if i==vierArray.count-1 {
                vLineV.backgroundColor = UIColor.black
            }
            else
            {
                vLineV.backgroundColor = UIColor.lightGray
            }
            self.view.addSubview(vLineV)
        }
        //设置横向
        //横向
        let hierArray:NSArray = ["0","1","2","3","4","5","6","7","8"]
        for i:Int in 0 ..< hierArray.count {
            //横坐标值
            let hLabel = UILabel.init(frame: CGRect(x:30*CGFloat(i), y:40+30*CGFloat(vierArray.count)-15, width:30, height:30))
            hLabel.text = hierArray[i] as? String;
            hLabel.font = UIFont.systemFont(ofSize: 11)
            hLabel.textAlignment = .right
            hLabel.adjustsFontSizeToFitWidth = true
            hLabel.textColor = UIColor.lightGray;
            self.view.addSubview(hLabel);
            //纵坐标线
            let hLineV = UIView.init(frame: CGRect(x:30+30*CGFloat(i), y:40, width:1, height:30*CGFloat(vierArray.count)-15))
            if i==0 {
                hLineV.backgroundColor = UIColor.black
            }
            else
            {
                hLineV.backgroundColor = UIColor.lightGray
            }
            self.view.addSubview(hLineV);
        }
        //横坐标:年龄
        //年龄
        let ageLabel = UILabel.init(frame: CGRect(x:260, y:40+30*CGFloat(vierArray.count)-15, width:60, height:30));
        ageLabel.text = "年龄(岁)"
        ageLabel.textColor = UIColor.lightGray
        ageLabel.font = UIFont.systemFont(ofSize: 12);
        ageLabel.textAlignment = .right;
        ageLabel.adjustsFontSizeToFitWidth = true;
        self.view.addSubview(ageLabel);
        //接下来就是折线的显示了
        //创建layer设置属性
        let layerR = CAShapeLayer.init();
        //设置包围的颜色,默认为黑色
        layerR.fillColor = UIColor.clear.cgColor;
        //折线宽度
        layerR.lineWidth = 1.0;
        //设置折线颜色
        layerR.strokeColor = UIColor.blue.cgColor;
        self.view.layer.addSublayer(layerR);
        
        //创建贝塞尔路径
        let pathH = UIBezierPath.init();
        //设置起点
        pathH.move(to: CGPoint(x: 30, y: 100))
        //添加坐标点
        let xArray:NSArray = [50,70,90,110,130,150,170,190,210,230,250,270];
        let yArray:NSArray = [160,180,200,200,150,120,80,100,130,130,180,110];
        for i:Int in 0 ..< xArray.count {
            pathH.addLine(to: CGPoint(x:(xArray[i] as! CGFloat),y:(yArray[i] as! CGFloat)));
        }
        layerR.path = pathH.cgPath;
        
        //创建基础动画,连接个点
        let animationN = CABasicAnimation.init(keyPath: "strokeEnd");
        //设置时间
        animationN.duration = 5;
        //添加动画
        layerR.add(animationN, forKey: nil);

    }
}
let vc = viewController()
PlaygroundPage.current.liveView = vc












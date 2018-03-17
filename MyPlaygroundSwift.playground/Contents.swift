//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myVariable = 42
myVariable = 50
let myConstant = 0.0

let qutation = """
parenttheseas means () and backslash means \
" I am studying Swift 4.1 Language in iBooks \(myConstant)"
qutation double \"\"\" looks like `` in es6 javascript language
"""

let synatx = """

“” : parentheses , : comma [] : brackets . : dot  "" : qutation

"""

print(qutation)

var shopplist = ["catfish","water","tulips"]
shopplist[1] = "bottle of water"
print(shopplist)

var occupation = [
    "xiaoer": "ios",
    "kai": "h5"
]
occupation["ming"] = "android"
print(occupation)

var noTypeArr = [Int]()


let myName = "liu xiao er"

switch myName {
case "haha":
    print("your name is \(myName)")
case "1","2":
    print("you name is 1")
case let x where x.hasSuffix("ers"):
    print(11)
case let x where x.hasSuffix("er"):
    print(11)
default:
    print("111")
}

// function return type is a tuple type
func myHobby() ->(ios:String,H5:String) {
    return ("ios","h5")
}

let sb = myHobby()

print(sb.0)
print(sb.H5)

shopplist.map { (haha) -> String in
    return "sb"
}
print(shopplist)



class Person {
    
    var name: String {
        set {
           name = newValue
        }
        get {
            return "ss"
        }
    }
}

var p1 =  Person()
print(p1.name)




















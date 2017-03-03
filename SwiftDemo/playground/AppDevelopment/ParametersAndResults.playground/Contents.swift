//: Playground - noun: a place where people can play

import UIKit

func hello(name: String) {
    print("hello \(name)")
}

hello(name: "Jack")
hello(name: "Tom")

//more than one parameters
func greetToSomebody(firstName: String, lastName: String) {
    print("Hello \(firstName) \(lastName)")
}

greetToSomebody(firstName: "Johnny", lastName: "Appleseed")
greetToSomebody(firstName: "John", lastName: "Snow")


//return value
func calculateSum(a: Int, b: Int) -> Int {
    return a + b
}

calculateSum(a: 12, b: 20)
calculateSum(a: 11, b: 99)

//方法定义好后，调用时最好是完整的句子，如下
func printHello(to: String) {
    print("hello \(to)")
}
printHello(to: "Maya")

//虽然上面的方法使得函数调用简洁明了，但是，在函数里面，to并不能知名达意，这时需要引入参数标记
//to为参数标记；name为参数名
func greet(to name : String) {
    print("hello \(name)")
}
greet(to: "Smith")

//调用函数时，并不是每次都要引入参数标记。可以用下划线_替换函数定义时的参数标记
func printHelloTo(_ name: String) {
    print("hello \(name)")
}
printHelloTo("Hiro")







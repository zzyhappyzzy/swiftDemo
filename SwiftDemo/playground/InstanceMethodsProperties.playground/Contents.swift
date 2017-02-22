//: Playground - noun: a place where people can play

import UIKit
import Foundation

/*:
每种Type的值实际上是对应类型的一个实例
* String 是种数据类型
* "hello" 是String的一个实例

只有几种常见的类型，如String、Bool、Int可以直接赋值实例化，其他的都需要实例化`initializer`
*/

let literalString = "Howdy!"
let literalBool = false
let literalInt = 84

let rightNow = Date()

//可以直接实例化的数据类型，实际上也有构造函数
let emptyString = String()
let falseBool = Bool()
let zero = Int()

//实例化还可以带参数
let oneHourLater = Date(timeIntervalSinceNow: 3600)

//每种Type可以包含很多实例化方法
let introduction = "It was a dark and stormy night"
//String有实例方法 func hasPrefix(_ prefix: String) -> Bool
//实例后紧跟.调用实例方法
introduction.hasPrefix("It was")


//每种Type可以包含很多属性
//String有属性 var isEmpty: Bool { get }
//var 表示isEmpty属性可变，Bool定义数据类型，{get}标记该属性只能get，即只读属性
//实例后紧跟.调用属性
introduction.isEmpty

//后续：结构体Structures和类Classes的区别
//class支持继承。init和deinit自定义操作。多个指针指向class实例ARC
//class实现protocol，需要先继承父类，在写protocol
// class A : B ,protocol {}
//extension扩展现有的任何数据类型Type。也可以实现Protocol



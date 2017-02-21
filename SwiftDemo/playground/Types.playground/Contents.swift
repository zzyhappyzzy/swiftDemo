//: Playground - noun: a place where people can play

import UIKit
import Foundation

//: #### 数据类型命名规则和变量是不一样的，首字母大写，遵循`upper camel case`
//: 常见的数据类型（系统）
//: * String
//: * Int
//: * Double
//: * Bool
//: * Int64
//: * Slice
//: * Range
//: * AnyCollection
//: * JoinSequence
//: * CharacterView

//同类型变量(常量)才能加减乘除等操作
let annotatedDouble: Double = 20 //显示声明为Double
let inferredDouble = 0.5   //根据赋值自动声明为Double
let result = inferredDouble * annotatedDouble
result * 0.5

let today = Date()

let pi = 3.14159265359
let diameter : Double = 2
let circumeference = pi * diameter



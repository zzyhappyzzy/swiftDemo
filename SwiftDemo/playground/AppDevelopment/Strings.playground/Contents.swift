//: Playground - noun: a place where people can play

import UIKit

//: 字符串由字符组成，常见的字符有
//: * 字母 Aa Bb Cc ...
//: * 标点 ! ? . , ; : ...
//: * 数字 0 1 2 3 4 5 6 7 8 9
//: * 符号 @ # $ * + ...
//: * 看不见的字符 空格 tab

//字符串
let favoriteBook = "The Sun Also Rises"

let englishGreeting = "Hello, World!"

let chineseGreeting = "你好，世界!"

let spanishGreeting = "¡Hola Mundo!"

let russianGreeting = "Привет мир!"

let japaneseGreeting = "こんにちは世界!"

//支持任何语言(Unicode)命名，如中文，但还是建议英文命名
let 哈喽😀 = "Hello"

//字符串 拼接
let userName = "Chris"
let likeYourPostMessage = "likes your post"
let finishedMessage = userName + " " + likeYourPostMessage

//字符串 插值(可以是 字符串/数字/运算)
let firstName = "Tara"
let city = "Paris"
let welcomeString1 = "Hello " + firstName + ", welcome to " + city + "!"
let welcomeString2 = "Hello \(firstName), welcome to \(city)!"

//字符串 转义
let stringWithQuotationMarks = "He said, \"Hi there!\" as he passed by."

print(stringWithQuotationMarks)



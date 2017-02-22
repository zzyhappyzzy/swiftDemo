//: Playground - noun: a place where people can play

import UIKit

//枚举
enum LunchChoice {
    case pasta
    case burger
    case soup
}

let choice = LunchChoice.burger

//简写
enum Fruit {
    case apple, orange, banana, pear
}

//调用时，如果确定枚举类型，可以直接.调用
var fruit : Fruit
fruit = .pear

//switch必须全面,考虑各种条件
//为避免以后往enum新增类型时，case忘记修改，建议不要使用default，写全case，多个相同的case可以逗号隔开
//enum和switch
enum Quality {
    case bad, poor, acceptable, good, great
}

var quality = Quality.good

switch quality {
case .bad:
    print("That really won't do")
case .poor:
    print("That's not good enough")
default:
    print("OK, I'll take it")
}

quality = .great
switch quality {
case .bad:
    print("That really won't do")
case .poor:
    print("That's not good enough")
case .acceptable, .good, .great:
    print("OK, I'll take it")
}

//switch还可以和string/number等类型搭配
let animal = "cat"

func soundFor(animal: String) -> String {
    switch animal {
    case "cat":
        return "Meow"
    case "dog":
        return "Woof"
    case "cow":
        return "Moo"
    case "chicken":
        return "Cluck"
    default:
        return "I don't know that animal"
    }
}

soundFor(animal: animal)

//和structure一样，enum里也可以定义属性properties和函数functions

enum Symbol {
    case laugh, cry, shy
    
    var emoji: String {
        switch self {
        case .laugh:
            return "😀"
        case .cry:
            return "😢"
        case .shy:
            return "😅"
        }
    }
    
    func join(_ otherSymbol: Symbol) -> String {
        return self.emoji + otherSymbol.emoji
    }
}
let laugh = Symbol.laugh
let shy = Symbol.shy
laugh.emoji
shy.emoji
laugh.join(shy)













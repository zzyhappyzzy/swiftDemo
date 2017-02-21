//: Playground - noun: a place where people can play

import UIKit

//Bool值
true
false
let old = false
let like: Bool = true

//比较
1 == 2
5 > 7
3 < 8
2 != 4
8 >= 3
100 <= 10

//条件控制
let videoLength = 120

if videoLength < 5 {
    "If I blinked, I'd miss it."
} else if videoLength > 500 {
    "Don't worry, I know a good editor."
} else {
    "That was lovely."
}


//为避免代码难以理解，将运算封装为函数
/*:
 ```
 let bandMemberCount = 6
 let candyCount = 79
 if candyCount % bandMemberCount == 0 {
 "Rock on."
 } else {
 "Everyone quits! This is unacceptable!"
 }
 ```
 */
//上面的例子，不能完整再现需求，最好改为下面的样子
let bandMemberCount = 6
let candyCount = 79

func isCandyAmountAcceptable(bandMemberCount: Int, candyCount: Int) -> Bool {
    return candyCount % bandMemberCount == 0
}

if isCandyAmountAcceptable(bandMemberCount: bandMemberCount, candyCount: candyCount) {
    "Rock on."
} else {
    "Everyone quits! This is unacceptable!"
}




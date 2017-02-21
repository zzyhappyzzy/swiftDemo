//: Playground - noun: a place where people can play

import UIKit

//数组是某类实例的合集
let devices = ["iPhone", "iPad", "iPod", "iMac"]
devices.count

//遍历
let friends = ["name1", "name2", "name3", "name4", "name5"]

for friend in friends {
    let sparklyFriend = "🍋\(friend)🍋"
    print("Hey, \(sparklyFriend), please come to my party on Friday!")
}
print("Done, all friends have been invited")

//可变数组
var list = [String]()
list.append("Banana")
list.insert("Kumquat", at: 0)
list += ["Strawberry", "Plum"]

list.remove(at: 3)
list
let firstItem = list.removeFirst()
list
let lastItem = list.removeLast()
list
list.removeAll()
list

/*:
 ## Summary
 * 每个元素的数据类型Type相同
 * 每个元素都有特定的索引值index,从0开始
 * 使用数组索引时，不能越界(index小于数组个数count)，否则程序会闪退Crash
 */



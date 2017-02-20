
import UIKit

//: 函数的目的是避免重复代码，和加强代码可读性（建议每个函数只做"一件事"）
//: 函数名用驼峰式命名,紧接着()，{...}具体实现

/*:
 函数可以理解为
 * 接收输入参数
 * 处理
 * 输出结果
 */

func greetAnybody() {
    print("Hello, everybody")
}

greetAnybody()

//函数里调用函数
func rowTheBoat() {
    print("Row, row, row your boat")
    print("Gently down the stream")
}

func merrilyDream() {
    print("Merrily, merrily, merrily, merrily")
    print("Life is but a dream")
}

func verseOne() {
    rowTheBoat()
    merrilyDream()
}

verseOne()



//
//  Basics5.swift
//  SwiftLearn
//
//  Created by 刘少华 on 2020/11/8.
//
/**
 基础运算符
 */
import UIKit

class Basics5: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    static func basics() {
        
        /**
         注意：swift 去掉了类似 i++ i-- 等运算符, 但是却提供了另一种区间运算符，可以很好的解决这个问题
         */
        //区间运算符
        //闭区间运算符（ a...b ）定义了从 a  到 b  的一组范围，并且包含 a  和 b  。 a  的值不能大于 b
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
        }
        
        //半开区间运算符
        //半开区间运算符（ a..<b ）定义了从 a  到 b  但不包括 b  的区间，即 半开 ，因为它只包含起始值但并不包含结束值。（十奶注：其实就是左闭右开区间。）如同闭区间运算符， a  的值也不能大于 b  ，如果 a  与 b  的值相等，那返回的区间将会是空的。
        //半开区间在遍历基于零开始序列比如说数组的时候非常有用，它从零开始遍历到数组长度（但是不包含）：
        
        let names = ["Anna", "Alex", "Brian", "Jack"]
        let count = names.count
        for i in 0..<count {
            print("Person \(i + 1) is called \(names[i])")
        }
        
        //单侧区间
        //闭区间有另外一种形式来让区间朝一个方向尽可能的远——比如说，一个包含数组所有元素的区间，从索引 2 到数组的结束。在这种情况下，你可以省略区间运算符一侧的值。因为运算符只有一侧有值，所以这种区间叫做单侧区间。
        for name in names[2...] {
            print(name)
        }
        // Brian
        // Jack
         
        for name in names[...2] {
            print(name)
        }
        
        
        //半开区间运算符同样可以有单侧形式，只需要写它最终的值。和你两侧都包含值一样，最终的值不是区间的一部分
        for name in names[..<2] {
            print(name)
        }
        
        
        //swift 提供了 === 和 !== 运算符，用来判断两个引用是否相等
        
        
        
    }

}

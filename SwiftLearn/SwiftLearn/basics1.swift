//
//  basics1.swift
//  SwiftLearn
//
//  Created by 刘少华 on 2020/11/8.
//
/**
 数据类型
 常量变量
 类型判断
 拼接字符串
 */
import UIKit

class basics1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    static func basics() {
        
        var a:String = "hello,world"
        var b = "hello,world" //类型推断 b是String类型 之后不可以再赋值其他类型  b = 2
        var c = 2
        var d = 2.0
        
        let e = 2
        
        
        /**
         var let 变量与常量的区别
         e = 3 常量不可以再进行赋值 ，变量可以
         */
        c = 3
        
        //字符串拼接  + 号方法
        var f = a + b
        
        // 非字符串类型 使用 "\()"
        var g = a + b + "sdvdvsdvzsdvd\(c)" + "\( Double(c) + d)"
             
        print(a,b,c,d,e)
        print(a + b + "\(c)" + "\(Double(c) + d)")
    }
    
    
    
    
}

//
//  Basics2.swift
//  SwiftLearn
//
//  Created by 刘少华 on 2020/11/8.
//
/**
 类型别名
 类型强转
 ??语法
 */
import UIKit

class Basics2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    static func basics() {
        
        
        //类型别名
        typealias hahha = Int
        var aaa:hahha = 20
        
        
        //类型转换
        var num = 10;
        var str = String(num)
        str = String(10.0)
        str = String(true)
        
        
        //??语法   有值直接赋值，无值直接赋值??后的值
        var string = "hahahha"
        var a = Int(string) ?? 0 //类型可以转的话 值为转换后的 若不能转 则为设定的0值
        print(a)
        
        
        
        
        
    }
    
    

}

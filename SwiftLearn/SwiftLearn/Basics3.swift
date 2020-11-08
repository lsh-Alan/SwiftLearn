//
//  Basics3.swift
//  SwiftLearn
//
//  Created by 刘少华 on 2020/11/8.
//
/**
 可选类型 ？
 强解值 ！
 */
import UIKit

class Basics3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    static func basics() {
        
        //可选类型 ？
        var a:Int? = nil //类型后 + ？ 表示a是Int类型 值可有可没有 
        a = a ?? 1
        
        //后！强解 解析真实的值 表示一定有值直接取值 若没有值会崩溃
        print(a!) //
        
            
        var string:String? = nil
        string = "hello world"
        if (string != nil) {
            print("" + string!) //此处必须强解 必须确定有值
        }else{
            print("string没有值")
        }
        
        
        
        
        
    }

}

//
//  Basics4.swift
//  SwiftLearn
//
//  Created by 刘少华 on 2020/11/8.
//
/**
 元组
 */
import UIKit

class Basics4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    static func basics(){
        
        var a:(Int,String) = (1,"hello,world")
        var b = (1,1.11,"hello,world")
        var c = (name1:"name1",name2:"name2")
        
        
        a.0 = 2
        c.name1 = "xiaoming"
        
        //元组是值传递 不是引用型
        
        
        
        
        
        
    }
}

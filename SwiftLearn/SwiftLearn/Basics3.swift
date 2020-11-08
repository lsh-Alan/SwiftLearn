//
//  Basics3.swift
//  SwiftLearn
//
//  Created by 刘少华 on 2020/11/8.
//
/**
 可选类型 ？ 隐式展开可选项
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
        
       
        //隐式展开可选项
        //通过在声明的类型后边添加一个叹号（ String! ）而非问号（  String? ） 来书写隐式展开可选项。与在使用可选项时在名称后加一个叹号不同的是，声明的时候要把叹号放在类型的后面。
        //在可选项被定义的时候就能立即确认其中有值的情况下，隐式展开可选项非常有用。如同无主引用和隐式展开的可选属性中描述的那样，隐式展开可选项主要被用在 Swift 类的初始化过程中
        
        let possibleString: String? = "An optional string."
        let forcedString: String = possibleString! // requires an exclamation mark
         
        let assumedString: String! = "An implicitly unwrapped optional string."
        let implicitString: String = assumedString // no need for an exclamation mark
        
        
        //你可以把隐式展开可选项当做在每次访问它的时候被给予了自动进行展开的权限，你可以在声明可选项的时候添加一个叹号而不是每次调用的时候在可选项后边添加一个叹号。当你使用隐式展开可选项值时，Swift 首先尝试将它作为普通可选值来使用；如果它不能作为可选项，Swift 就强制展开值。在上面的代码中，可选值 assumedString 在给 implicitString 赋值前强制展开，因为 implicitString 有显式的非可选 String 类型。在下面的代码中， optionalString 没有显式写明类型所以它是普通可选项。

        let optionalString = assumedString
        // The type of optionalString is "String?" and assumedString isn't force-unwrapped.
    
        //如果隐式展开可选项结果是 nil ，你还尝试访问它的值，你就会触发运行时错误。结果和在没有值的普通可选项后面加一个叹号一样。

        //你可以和检查普通可选项一样检查隐式展开可选项是否为 nil ：

        if assumedString != nil {
            print(assumedString)
        }
        // prints "An implicitly unwrapped optional string."
        
        if assumedString != nil {
            print(assumedString)
        }
        // prints "An implicitly unwrapped optional string."
        
        //你也可以使用隐式展开可选项通过可选项绑定在一行代码中检查和展开值：

        if let definiteString = assumedString {
            print(definiteString)
        }
        // prints "An implicitly unwrapped optional string."
        
        if let definiteString = assumedString {
            print(definiteString)
        }
        // prints "An implicitly unwrapped optional string."
        

        //不要在一个变量将来会变为 nil 的情况下使用隐式展开可选项。如果你需要检查一个变量在生存期内是否会变为 nil ，就使用普通的可选项。
        
    }

}

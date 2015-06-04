//
//  SomeThing.swift
//  MixedProgramming
//
//  Created by 黎春阳 on 15/6/4.
//  Copyright (c) 2015年 黎春阳. All rights reserved.
//

import Foundation

class SomeThing {
    func thing1(){
        println("Hello, World!")
        
        let sin = NSFileHandle.fileHandleWithStandardInput();
        
        if let str = NSString(data: sin.availableData, encoding: NSUTF8StringEncoding){
            let ptn = "\\d+"
            if let reg = NSRegularExpression(pattern: ptn, options: NSRegularExpressionOptions.CaseInsensitive, error: nil){
                let arr = reg.matchesInString("\(str)", options: NSMatchingOptions.allZeros, range: NSMakeRange(0, str.length))
                for r in arr{
                    println(str.substringWithRange(r.range))
                }
            }
        }
    }
}
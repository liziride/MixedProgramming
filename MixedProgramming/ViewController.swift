//
//  ViewController.swift
//  MixedProgramming
//
//  Created by 黎春阳 on 5/22/15.
//  Copyright (c) 2015 黎春阳. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    var locationManager:CLLocationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        forS()
        forO()
        forC()
        */
        locationManager.requestWhenInUseAuthorization()
        if let lab = self.view.viewWithTag(1) as? UILabel{
            lab.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "map:"))
        }
    }
    
    func map(sender:UITapGestureRecognizer){
        let storybd = UIStoryboard(name: "Main", bundle: nil)
        var map = storybd.instantiateViewControllerWithIdentifier("map") as! UIViewController
        self.presentViewController(map, animated: true, completion: nil)
    }
    
    func forS(){
        var s1:Int64 = 123
        var s2 = CLong(s1 & 0x0FFFFFFFF)
        
        var nsth = NSThread(target: self, selector: "nsthreadfunc:", object: "nima")
        nsth.start()
        
        var data = "".dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)
    }
    
    func nsthreadfunc(userinfo:AnyObject!){
        NSLog("%@", "\(userinfo)_nsthread")
    }
    
    func forO(){
        var ofirst = OFirst()
        ofirst.LCYprintln("d_d")
        ofirst.setA(22)
        NSLog("%@,%d", OFirst.getHaha(),ofirst.getA() + ofirst.getC())
    }
    
    func forC(){
        // Do any additional setup after loading the view, typically from a nib.
        //string [CChar](CChar == Int8) to char * char[]
        if var p = "str".cStringUsingEncoding(NSUTF8StringEncoding){
            var rtn = LCYprintln(&p)
            NSLog("rtn=%d", rtn)
        }
        if var p = "const str2".cStringUsingEncoding(NSUTF8StringEncoding){
            LCYprintln2(&p)
        }
        if var p = "const str3".cStringUsingEncoding(NSUTF8StringEncoding){
            LCYprintln3(&p)
        }
        if let p = "const str3".cStringUsingEncoding(NSUTF8StringEncoding){
            var rtn = LCYprintln3(p)
            if let rtnstr = String.fromCString(rtn){
                NSLog("rtn=%@", rtnstr)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
/*
%@                   对象

%d, %i               整数

%u                    无符整形

%f                     浮点/双字

%x, %X              二进制整数

%o                    八进制整数

%zu size_t

%p                    指针

%e                    浮点/双字 （科学计算）

%g                    浮点/双字

%s C                字符串

%.*s                  Pascal字符串

%c                    字符

%C                    unichar

%lld                   64位长整数（long long）

%llu                   无符64位长整数

%Lf                    64位双字
*/
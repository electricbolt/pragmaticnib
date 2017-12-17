// ViewController.swift
// Copyright (c) 2017; Electric Bolt Limited.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // ObjC - create view by loading from Nib
        NSLog("ObjC UINib")
        let nib1 = UINib(nibName: "CustomObjCView", bundle: nil)
        let objCNib = nib1.instantiate(withOwner: nil, options: nil).first as! CustomObjCView
        objCNib.frame = CGRect.init(x:0, y:0, width:320, height:50)
        objCNib.backgroundColor = UIColor.green
        objCNib.nameLabel.text = "ObjC"
        objCNib.valueLabel.text = "UINib"
        self.view.addSubview(objCNib)
        NSLog("")

        // ObjC - create view programatically - default initializer
        NSLog("ObjC init")
        let objCCode = CustomObjCView()
        objCCode.frame = CGRect.init(x:0, y:50, width:320, height:50)
        objCCode.backgroundColor = UIColor.cyan
        objCCode.nameLabel.text = "ObjC"
        objCCode.valueLabel.text = "init"
        self.view.addSubview(objCCode)
        NSLog("")

        // ObjC - create view programmatically - frame initializer
        NSLog("ObjC initWithFrame")
        let objCCodeFrame = CustomObjCView(frame: CGRect.init(x:0, y:100, width:320, height:50))
        objCCodeFrame.backgroundColor = UIColor.magenta
        objCCodeFrame.nameLabel.text = "ObjC"
        objCCodeFrame.valueLabel.text = "frame"
        self.view.addSubview(objCCodeFrame)
        NSLog("")

        // Swift - create view by loading from Nib
        NSLog("Swift UINib")
        let nib = UINib(nibName: "CustomView", bundle: nil)
        let swiftNib = nib.instantiate(withOwner: nil, options: nil).first as! CustomView
        swiftNib.frame = CGRect.init(x:0, y:150, width:320, height:50)
        swiftNib.backgroundColor = UIColor.yellow
        swiftNib.nameLabel.text = "Swift"
        swiftNib.valueLabel.text = "UINib"
        self.view.addSubview(swiftNib)
        NSLog("")

        // Swift - create view programmatically - default initializer
        NSLog("Swift init")
        let swiftCode = CustomView()
        swiftCode.frame = CGRect.init(x:0, y:200, width:320, height:50)
        swiftCode.backgroundColor = UIColor.lightGray
        swiftCode.nameLabel.text = "Swift"
        swiftCode.valueLabel.text = "init"
        self.view.addSubview(swiftCode)
        NSLog("")

        // Swift - create view programmatically - frame initializer
        NSLog("Swift initWithFrame...")
        let swiftCodeFrame = CustomView(frame: CGRect.init(x:0, y:250, width:320, height:50))
        swiftCodeFrame.backgroundColor = UIColor.blue
        swiftCodeFrame.nameLabel.text = "Swift"
        swiftCodeFrame.valueLabel.text = "frame"
        self.view.addSubview(swiftCodeFrame)
    }

}


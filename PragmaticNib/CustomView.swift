// CustomView.swift
// Copyright (c) 2017; Electric Bolt Limited.

import UIKit

public class CustomView: UIView {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!

    public convenience init() {
        NSLog("   CustomView.init()")
        self.init(frame: CGRect.zero)
    }

    public override convenience init(frame: CGRect) {
        NSLog("   CustomView.init(frame:)")
        self.init(internal: nil)
        self.frame = frame
    }

    public required init?(coder aDecoder: NSCoder) {
        NSLog("   CustomView.init(coder:)")
        super.init(coder: aDecoder)
        commonInit()
    }

    fileprivate func commonInit() {
        NSLog("   CustomView.commonInit()")
    }
}

// MARK: Protocol extension

fileprivate protocol _CustomView {
}

extension CustomView: _CustomView {
}

fileprivate extension _CustomView {

    // Protocol extension initializer - has the ability to assign to self, unlike
    // class initializers. Note that the name of this initializer can be anything
    // you like, here we've called it init(internal:)

    init(internal: Int?) {
        self = Bundle.main.loadNibNamed("CustomView", owner:nil, options:nil)![0] as! Self;
    }
}

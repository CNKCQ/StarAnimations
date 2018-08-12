//
//  UpViewController.swift
//  StarAnimations_Example
//
//  Created by steve on 12/08/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

class UpViewController: UIViewController {
    var popoverView: PopoverView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.popoverView = PopoverView(CGRect(x: 16, y: (self.view.frame.height - 400) / 2.0, width: self.view.frame.width - 32, height: 400), controller: self)
        self.view.addSubview(self.popoverView)        
    }
}

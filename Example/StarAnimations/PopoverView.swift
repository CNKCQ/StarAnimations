//
//  PopoverView.swift
//  StarAnimations_Example
//
//  Created by steve on 12/08/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import StarAnimations

class PopoverView: UIView {
    
    var starView: UIImageView!
    var button: UIButton!
    var viewController: UIViewController!
    
    convenience init(_ frame: CGRect, controller: UIViewController) {
        self.init(frame: frame)
        self.backgroundColor = UIColor.white
        self.viewController = controller
        self.starView = UIImageView(image: UIImage(named: "icon_star_filled")!)
        self.starView.frame = CGRect(x: 250, y: 40, width: starView.frame.size.width, height: self.starView.frame.height)
        self.addSubview(self.starView)
        self.button = UIButton(frame: CGRect(x: 250, y: self.frame.height - 60, width: 50, height: 35))
        self.button.setTitle("get it", for: .normal)
        self.button.setTitleColor(UIColor.blue, for: .normal)
        self.button.addTarget(self, action: #selector(dismiss), for: .touchUpInside)
        self.addSubview(self.button)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    @objc func dismiss() {
        let window = UIApplication.shared.keyWindow!
        let dismissRect = self.starView.convert(self.starView.bounds, to: window);
        StarsConfig.default.dismissRect = dismissRect
        self.viewController.dismiss(animated: true, completion: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//
//  ViewController.swift
//  StarAnimations
//
//  Created by CNKCQ on 08/11/2018.
//  Copyright (c) 2018 CNKCQ. All rights reserved.
//

import UIKit
import Reusable
import StarAnimations
import Hero

class ViewController: UIViewController {
    var tableView: UITableView!
    var animationManager: StarAnimationManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView = UITableView(frame: self.view.frame, style: .plain)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(cellType: TableTableViewCell.self)
        self.view.addSubview(self.tableView)
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let beginCell: TableTableViewCell = tableView.cellForRow(at: indexPath) as! TableTableViewCell
        let window = UIApplication.shared.keyWindow!
        let presentRect = beginCell.starView!.convert(beginCell.starView!.bounds, to: window)
        StarsConfig.default.presentRect = presentRect
        StarsConfig.default.starImage = beginCell.starView.image ?? UIImage(named: "icon_star_filled")
        StarsConfig.default.destAlpha = 0.6
        StarsConfig.default.dismissDuration = 0.6
        StarsConfig.default.presentDuration = 0.3
        StarsConfig.default.starsDuration = 1
        StarsConfig.default.starsCount = 9
        
        let dest: UIViewController = UpViewController()
        
//        dest.hero.isEnabled = true
//        dest.hero.modalAnimationType = .zoomOut 

        self.animationManager = StarAnimationManager(self, dest: dest)
        self.present(dest, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as TableTableViewCell
        return cell
    }
}


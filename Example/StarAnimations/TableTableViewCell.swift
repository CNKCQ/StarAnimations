//
//  TableTableViewCell.swift
//  StarAnimations_Example
//
//  Created by steve on 12/08/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import Reusable

class TableTableViewCell: UITableViewCell, NibReusable {
    @IBOutlet weak var starView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}



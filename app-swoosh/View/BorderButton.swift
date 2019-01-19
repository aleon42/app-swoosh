//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Albert Leon on 1/18/19.
//  Copyright © 2019 Albert Leon. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }


}

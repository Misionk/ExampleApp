//
//  ShadowUILabel.swift
//  ExampleApp
//
//  Created by Kamil on 20.02.2017.
//  Copyright © 2017 Kamil. All rights reserved.
//

import Foundation
import UIKit

class MainScreenLabel: UILabel {
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 6
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 0.4
        
    }
}

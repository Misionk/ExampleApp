//
//  HistoryLabel.swift
//  ExampleApp
//
//  Created by Kamil on 21.02.2017.
//  Copyright © 2017 Kamil. All rights reserved.
//

import Foundation
import UIKit

class HistoryLabel: UILabel {
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 4
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 1
    }
}

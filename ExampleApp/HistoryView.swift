//
//  HistoryView.swift
//  ExampleApp
//
//  Created by Kamil on 21.02.2017.
//  Copyright © 2017 Kamil. All rights reserved.
//

import Foundation
import UIKit

class HistoryView: UIView {
    var shadowView: UIView?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if shadowView == nil {
            shadowView = UIView(frame: self.frame)
            layer.cornerRadius = 8
            layer.borderColor = UIColor.lightGray.cgColor
            layer.borderWidth = 1.0
            shadowView?.layer.masksToBounds = false
            shadowView?.layer.shadowColor = UIColor.lightGray.cgColor
            shadowView?.layer.shadowOffset = CGSize(width: 4, height: 5)
            shadowView?.layer.shadowOpacity = 0.65
            shadowView?.layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: layer.cornerRadius).cgPath
            shadowView?.layer.shadowRadius = 5.0
            self.superview?.insertSubview(shadowView!, at: 0)
        }
    }
}

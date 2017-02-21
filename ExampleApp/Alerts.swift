//
//  Alerts.swift
//  ExampleApp
//
//  Created by Kamil on 21.02.2017.
//  Copyright © 2017 Kamil. All rights reserved.
//

import Foundation
import UIKit

class Alerts {
    func showCopiedAlert(view: UIViewController) {
        let alert = UIAlertController(title: "", message: "Copied!", preferredStyle: .alert)
        view.present(alert, animated: true, completion: nil)
        let when = DispatchTime.now() + 2
        DispatchQueue.main.asyncAfter(deadline: when){
            alert.dismiss(animated: true, completion: nil)
        }
    }
}

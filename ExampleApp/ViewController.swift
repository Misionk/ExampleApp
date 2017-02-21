//
//  ViewController.swift
//  ExampleApp
//
//  Created by Kamil on 20.02.2017.
//  Copyright © 2017 Kamil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var apiManager = APIManager()
    var alerts = Alerts()
    @IBOutlet weak var typeUrlTextField: UITextField!
    @IBAction func typeUrlTextFieldAction(_ sender: Any) {
        shortedUrlLabel.text = ""
    }
    @IBOutlet weak var shortedUrlLabel: UILabel!

    @IBAction func copyButton(_ sender: Any) {
        if shortedUrlLabel.text != "" {
            UIPasteboard.general.string = shortedUrlLabel.text
            alerts.showCopiedAlert(view: self)
        }
    }
    @IBAction func primaryActionTriggered(_ sender: Any) {
        if typeUrlTextField.text != "" {
            typeUrlTextField.resignFirstResponder()
            apiManager.getData(longURL: typeUrlTextField.text!, completion: {
                (dict) in
                self.shortedUrlLabel.text = dict["id"] ?? " "
                self.typeUrlTextField.text = dict["longUrl"] ?? " "
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shortedUrlLabel.text = " "
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


//
//  HistoryCell.swift
//  ExampleApp
//
//  Created by Kamil on 20.02.2017.
//  Copyright © 2017 Kamil. All rights reserved.
//

import UIKit

class HistoryCell: UITableViewCell {
    
    @IBOutlet weak var shortedAddress: UILabel!
    
    @IBOutlet weak var typedAddress: UILabel!
    
    @IBAction func copyButton(_ sender: Any) {
        UIPasteboard.general.string = shortedAddress.text
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

//
//  History.swift
//  ExampleApp
//
//  Created by Kamil on 20.02.2017.
//  Copyright © 2017 Kamil. All rights reserved.
//

import UIKit

class History: UITableViewController {
    var alerts = Alerts()
    
    @IBAction func copyButton(_ sender: Any) {
        alerts.showCopiedAlert(view: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 68.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.shared.shortedAddress.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell", for: indexPath) as? HistoryCell else {return UITableViewCell()}
        cell.typedAddress.text = DataManager.shared.typedAddress[indexPath.row]
        cell.shortedAddress.text = DataManager.shared.shortedAddress[indexPath.row]
        return cell
    }
    
}

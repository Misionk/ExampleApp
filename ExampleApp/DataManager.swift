//
//  DataManager.swift
//  ExampleApp
//
//  Created by Kamil on 20.02.2017.
//  Copyright © 2017 Kamil. All rights reserved.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    var typedAddress: [String]{
        get{
            return UserDefaults.standard.object(forKey: "typedAddress") as? [String] ?? []
        }
        set{
            UserDefaults.standard.setValue(newValue, forKey: "typedAddress")
        }
    }
    var shortedAddress: [String]{
        get{
            return UserDefaults.standard.object(forKey: "shortedAddress") as? [String] ?? []
        }
        set{
            UserDefaults.standard.setValue(newValue, forKey: "shortedAddress")
        }
    }

}

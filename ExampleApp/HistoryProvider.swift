//
//  HistoryProvider.swift
//  ExampleApp
//
//  Created by Kamil on 20.02.2017.
//  Copyright © 2017 Kamil. All rights reserved.
//

import Foundation

class HistoryProvider {
    
    func provideHistory(id: String, longUrl: String){
        DataManager.shared.shortedAddress.append(id)
        DataManager.shared.typedAddress.append(longUrl)
    }
}

//
//  APIManager.swift
//  ExampleApp
//
//  Created by Kamil on 20.02.2017.
//  Copyright © 2017 Kamil. All rights reserved.
//

import Foundation
import Alamofire

class APIManager {
    var historyProvider = HistoryProvider()
    let url = "https://www.googleapis.com/urlshortener/v1/url?key=AIzaSyAeFyLkiWvA_4qvsLazMIwel5DhdD5yhNE"
    
    func getData(longURL: String, completion:@escaping ([String : String]) -> Void) {
        let parameters = ["longUrl": longURL]
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default).responseJSON{ (response) -> Void in 
            if response.response?.statusCode == 200 {
                let data = response.result.value as? [String : String]
                let outputData = data ?? [:]
                completion(outputData)
                self.historyProvider.provideHistory(id: data?["id"] ?? " ", longUrl: data?["longUrl"] ?? " ")
            }
        }
    }
}

//
//  CoinDetails.swift
//  NetworkingMasterClass
//
//  Created by Jaled Jara on 3/8/24.
//

import Foundation

struct CoinDetails: Identifiable, Codable {
    let id: String
    let symbol: String
    let name: String
    let description: Description
}

struct Description: Codable {
    let text: String
    
    enum CodingKeys: String, CodingKey {
        case text = "en"
    }
    
}

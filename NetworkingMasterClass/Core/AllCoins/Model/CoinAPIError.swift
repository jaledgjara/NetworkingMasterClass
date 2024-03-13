//
//  CoinAPIError.swift
//  NetworkingMasterClass
//
//  Created by Jaled Jara on 3/8/24.
//

import Foundation


enum CoinAPIError: Error {
    case invalidData
    case invalidJson
    case requestFailed(description: String)
    case invalidStatusCode(statusCode: Int)
    case unknownError(error: Error)
    
    var customDescription: String {
        switch self {
        case .invalidData:
            "Invalid data"
            
        case .invalidJson:
            "Failed to parse JSON"
            
        case let .requestFailed(description):
            "Request failed: \(description)"
            
        case let .invalidStatusCode(statusCode):
            "Invalid status code: \(statusCode)"
            
        case let .unknownError(error):
            "An unknowned error occured: \(error.localizedDescription)"
        }
    }
    
}

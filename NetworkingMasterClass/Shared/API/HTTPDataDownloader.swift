//
//  HTTPDataDownloader.swift
//  NetworkingMasterClass
//
//  Created by Jaled Jara on 3/11/24.
//

import Foundation

protocol HTTPDataDownloader {
    func fetchData<T: Decodable>(as type: T.Type, endpoint: String) async throws -> T
}

extension HTTPDataDownloader {
    func fetchData<T: Decodable>(as type: T.Type, endpoint: String) async throws -> T {
        guard let url = URL(string: endpoint) else {
            throw CoinAPIError.requestFailed(description: "DEBUG: Error with URL")
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpRes = response as? HTTPURLResponse else {
            throw CoinAPIError.requestFailed(description: "Reques failure")
        }
        guard httpRes.statusCode == 200 else {
            throw CoinAPIError.invalidStatusCode(statusCode: httpRes.statusCode)
        }
        
        do {
            return try JSONDecoder().decode(type, from: data)
        } catch {
            throw error as? CoinAPIError ?? .unknownError(error: error)
        }
    }
}

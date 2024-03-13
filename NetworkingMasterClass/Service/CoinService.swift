//
//  CoinService.swift
//  NetworkingMasterClass
//
//  Created by Jaled Jara on 3/8/24.
//

import Foundation

protocol CoinServiceProtocol {
    func fetchCoins() async throws -> [Coin]
    func fetchCoinDetails(id: String) async throws -> CoinDetails?
}

class CoinService: CoinServiceProtocol, HTTPDataDownloader {
    
    private var page = 0
    private let fetchLimit = 20
    
    private var baseUrlComponents: URLComponents {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.coingecko.com"
        components.path = "/api/v3/coins/"
        
        return components
    }
    
    private var allCoinsUrlString: String? {
        var components = baseUrlComponents
        components.path += "markets"
        
        components.queryItems = [
            .init(name: "vs_currency", value: "usd"),
            .init(name: "order", value: "market_cap_desc"),
            .init(name: "per_page", value: "\(fetchLimit)"),
            .init(name: "page", value: "\(page)"),
            .init(name: "sparkline", value: "false"),
            .init(name: "price_change_percentage", value: "24h"),
            .init(name: "locale", value: "en")
        ]

        return components.url?.absoluteString
    }
    
    private func coinDetailsUrlString(id: String) -> String? {
        var components = baseUrlComponents
        components.path = "\(id)"
        components.queryItems = [
            .init(name: "localization", value: "localization")
        ]
        
        return components.url?.absoluteString
    }
    
    func fetchCoins() async throws -> [Coin] {
        page += 1
        
        guard let endpoint = allCoinsUrlString else {
            throw CoinAPIError.requestFailed(description: "Invalid endpoint")
        }
        return try await fetchData(as: [Coin].self, endpoint: endpoint)
    }
    
    func fetchCoinDetails(id: String) async throws -> CoinDetails? {
        if let cached = CoinDetailsCache.shared.get(forKey: id) {
            return cached
        }
        
        guard let endpoint = coinDetailsUrlString(id: id) else {
            throw CoinAPIError.requestFailed(description: "Invalid endpoint")
        }
        
        let cDetails = try await fetchData(as: CoinDetails.self, endpoint: endpoint)
        CoinDetailsCache.shared.set(cDetails, forKey: id)
        return cDetails
    }
}



//
//  MockCoinService.swift
//  NetworkingMasterClass
//
//  Created by Jaled Jara on 3/12/24.
//

import Foundation

class MockCoinService: CoinServiceProtocol {
    func fetchCoins() async throws -> [Coin] {
        let coins = try JSONDecoder().decode([Coin].self, from: mockCoinData_marketCapDesc )
        return coins
    }
    
    func fetchCoinDetails(id: String) async throws -> CoinDetails? {
        let description = Description(text: "bitcoin the number 1 crypto")
        let cDetails = CoinDetails(id: "12345", symbol: "BTC", name: "Bitcoin", description: description)
        return cDetails
    }
}

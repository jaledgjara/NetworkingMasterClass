//
//  AllCoinsViewModel.swift
//  NetworkingMasterClass
//
//  Created by Jaled Jara on 3/8/24.
//

import Foundation

class AllCoinsViewModel: ObservableObject {
    @Published var coins = [Coin]()
    @Published var errorMessage: String?
    @Published var coinsDetails: CoinDetails?
    
    
    private let service: CoinServiceProtocol
    
    init(service: CoinServiceProtocol) {
        self.service = service
    }
    
    @MainActor
    func fetchCoins() async {
        do {
            let coins = try await service.fetchCoins()
            self.coins.append(contentsOf: coins)
            
        } catch {
            guard let error = error as? CoinAPIError else { return }
            self.errorMessage = error.customDescription
        }
    }
    
    @MainActor
    func fetchCoinDetails(coinId: String) async {
        do {
            self.coinsDetails = try await service.fetchCoinDetails(id: coinId)
        } catch {
            print("DEBUG: \(error.localizedDescription)")
        }
    }
    
}

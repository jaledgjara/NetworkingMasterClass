//
//  CoinDetailsViewModel.swift
//  NetworkingMasterClass
//
//  Created by Jaled Jara on 3/8/24.
//

import Foundation

class CoinDetailsViewModel: ObservableObject {
    @Published var coinDetails: CoinDetails?
    
    private let service: CoinServiceProtocol
    private let coinId: String
    
    init(coinId: String, service: CoinServiceProtocol) {
        self.coinId = coinId
        self.service = service
        
        Task {
            await fetchCoinDetails()
        }
    }
    
    @MainActor
    func fetchCoinDetails() async {
        do {
            self.coinDetails = try await service.fetchCoinDetails(id:coinId)
        } catch {
            print("DEBUG: \(error.localizedDescription)")
        }
    }
}

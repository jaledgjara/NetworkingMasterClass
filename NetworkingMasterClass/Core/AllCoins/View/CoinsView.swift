//
//  CoinsView.swift
//  NetworkingMasterClass
//
//  Created by Jaled Jara on 3/8/24.
//

import SwiftUI

struct CoinsView: View {
    private let service: CoinServiceProtocol
    @StateObject var viewModel = AllCoinsViewModel(service: CoinService())
    
    init(service: CoinServiceProtocol) {
        self.service = service
        self._viewModel = StateObject(wrappedValue: AllCoinsViewModel(service: service))
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.coins) { coin in
                    NavigationLink(value: coin) {
                        HStack(spacing: 15) {
                            Text("\(coin.marketCapRank)")
                                .foregroundStyle(.secondary)
                            
                            CoinImageView(url: coin.image)
                                
                                
                            VStack(alignment: .leading, spacing: 7) {
                                Text(coin.name)
                                    .fontWeight(.semibold)
                                Text(coin.symbol.uppercased())
                            }
                        }
                        .onAppear(perform: {
                            if coin == viewModel.coins.last {
                                Task { await viewModel.fetchCoins() }
                            }
                        })
                        .font(.footnote)
                    }
                }
            }
            .overlay {
                if let error = viewModel.errorMessage {
                    Text(error)
                }
            }
            .navigationDestination(for: Coin.self) { coin in
                CoinDetailsView(coin: coin, service: service)
            }
        }
        .task {
            await viewModel.fetchCoins()
        }
    }
}

#Preview {
    CoinsView(service: MockCoinService() )
}

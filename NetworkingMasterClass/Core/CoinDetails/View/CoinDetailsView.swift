//
//  CoinDetailsView.swift
//  NetworkingMasterClass
//
//  Created by Jaled Jara on 3/8/24.
//

import SwiftUI

struct CoinDetailsView: View {
    @ObservedObject var viewModel: CoinDetailsViewModel
    
    let coin: Coin
    
    init(coin: Coin, service: CoinServiceProtocol) {
        self.coin = coin
        self.viewModel = CoinDetailsViewModel(coinId: coin.id, service: service)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            if let cDetails = viewModel.coinDetails {
                HStack {
                    VStack(alignment: .leading, spacing: 7) {
                        Text(cDetails.name)
                            .fontWeight(.semibold)
                        Text(cDetails.symbol.uppercased())
                    }
                    .font(.footnote)
                    
                    Spacer()
                    
                    CoinImageView(url: coin.image)
                        .frame(width: 64, height: 64)
                }
                .padding(.horizontal)
                
                VStack {
                    Text(cDetails.description.text)
                }
            }
        }
        .task {
            await viewModel.fetchCoinDetails()
        }
        .padding()
    }
}


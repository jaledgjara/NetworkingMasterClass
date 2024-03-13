//
//  CoinImageView.swift
//  NetworkingMasterClass
//
//  Created by Jaled Jara on 3/12/24.
//

import SwiftUI

struct CoinImageView: View {
    @ObservedObject var imageLoader: ImageLoader
    
    init(url: String) {
        imageLoader = ImageLoader(url: url)
    }
    
    var body: some View {
        if let image = imageLoader.image {
            image
                .resizable()
                .scaledToFill()
                .frame(width: 30, height: 30)
                .clipShape(Circle())
        }
    }
}

#Preview {
    CoinImageView(
        url: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400"
    )
}

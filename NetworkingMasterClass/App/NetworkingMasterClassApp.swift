//
//  NetworkingMasterClassApp.swift
//  NetworkingMasterClass
//
//  Created by Jaled Jara on 3/8/24.
//

import SwiftUI

@main
struct NetworkingMasterClassApp: App {
    var body: some Scene {
        WindowGroup {
            CoinsView(service: CoinService())
        }
    }
}

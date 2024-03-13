//
//  AllCoinsViewModelTest.swift
//  NetworkingMasterClassTests
//
//  Created by Jaled Jara on 3/12/24.
//

import XCTest
@testable import NetworkingMasterClass

class AllCoinsViewModelTest: XCTestCase {
    
    func testInit() {
        let service = MockCoinService()
        let viewModel = AllCoinsViewModel(service: service)
        
        XCTAssertNotNil(viewModel, "The view model should not be nil") //checking dependency inyection
    }
    
    func testSuccessFullCoinsFetch() async {
        let service = MockCoinService()
        let viewModel = AllCoinsViewModel(service: service)
        
        await viewModel.fetchCoins()
        
        XCTAssertTrue(viewModel.coins.count > 0)
        XCTAssertEqual(viewModel.coins.count, 20)
        XCTAssertEqual(viewModel.coins, viewModel.coins.sorted(by: { $0.marketCapRank < $1.marketCapRank }))
    }
    
}

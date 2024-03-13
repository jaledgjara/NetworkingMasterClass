//
//  NetworkingMasterClassTests.swift
//  NetworkingMasterClassTests
//
//  Created by Jaled Jara on 3/12/24.
//

import XCTest
@testable import NetworkingMasterClass

final class NetworkingMasterClassTests: XCTestCase {

    func test_DecodeCoinsIntoArray_marketCapDesc() throws {
        do {
            let coins = try JSONDecoder().decode([Coin].self, from: mockCoinData_marketCapDesc)
            XCTAssert(coins.count > 0) //ensure array has coin => XCTAssertFalse(coins.isEmpty)
            XCTAssertEqual(coins.count, 20) //ensure array has 20 coins
            XCTAssertEqual(coins, coins.sorted(by: { $0.marketCapRank < $1.marketCapRank })) //ensure sorting order
        } catch {
            XCTFail("There was an error: \(error.localizedDescription)")
        }
    }

}

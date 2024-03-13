//
//  TestData.swift
//  NetworkingMasterClassTests
//
//  Created by Jaled Jara on 3/12/24.
//

import SwiftUI
import Foundation

/*
 let mockCoinData_marketCapDesc: Data = """
 [
 {
 "id": "bitcoin",
 "symbol": "btc",
 "name": "Bitcoin",
 "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
 "current_price": 71804,
 "market_cap": 1412527526505,
 "market_cap_rank": 1,
 "fully_diluted_valuation": 1509394269385,
 "total_volume": 55866817481,
 "high_24h": 72734,
 "low_24h": 71459,
 "price_change_24h": -263.81916826638917,
 "price_change_percentage_24h": -0.36607,
 "market_cap_change_24h": -1614484238.5092773,
 "market_cap_change_percentage_24h": -0.11417,
 "circulating_supply": 19652306,
 "total_supply": 21000000,
 "max_supply": 21000000,
 "ath": 72734,
 "ath_change_percentage": -1.16358,
 "ath_date": "2024-03-12T14:10:26.731Z",
 "atl": 67.81,
 "atl_change_percentage": 105914.4858,
 "atl_date": "2013-07-06T00:00:00.000Z",
 "roi": null,
 "last_updated": "2024-03-12T14:46:11.259Z",
 "price_change_percentage_24h_in_currency": -0.366069451082259
 },
 {
 "id": "ethereum",
 "symbol": "eth",
 "name": "Ethereum",
 "image": "https://assets.coingecko.com/coins/images/279/large/ethereum.png?1696501628",
 "current_price": 3997.96,
 "market_cap": 480365333653,
 "market_cap_rank": 2,
 "fully_diluted_valuation": 480365333653,
 "total_volume": 25399043941,
 "high_24h": 4085.78,
 "low_24h": 3972.8,
 "price_change_24h": -42.050609602711575,
 "price_change_percentage_24h": -1.04085,
 "market_cap_change_24h": -3584213432.4994507,
 "market_cap_change_percentage_24h": -0.74062,
 "circulating_supply": 120093478.754273,
 "total_supply": 120093478.754273,
 "max_supply": null,
 "ath": 4878.26,
 "ath_change_percentage": -17.95526,
 "ath_date": "2021-11-10T14:24:19.604Z",
 "atl": 0.432979,
 "atl_change_percentage": 924276.79613,
 "atl_date": "2015-10-20T00:00:00.000Z",
 "roi": {
 "times": 73.42155043299911,
 "currency": "btc",
 "percentage": 7342.155043299912
 },
 "last_updated": "2024-03-12T14:46:26.134Z",
 "price_change_percentage_24h_in_currency": -1.0408538669299487
 },
 {
 "id": "tether",
 "symbol": "usdt",
 "name": "Tether",
 "image": "https://assets.coingecko.com/coins/images/325/large/Tether.png?1696501661",
 "current_price": 0.998858,
 "market_cap": 102376082676,
 "market_cap_rank": 3,
 "fully_diluted_valuation": 102376082676,
 "total_volume": 78996837958,
 "high_24h": 1.004,
 "low_24h": 0.997194,
 "price_change_24h": -0.001219971809417242,
 "price_change_percentage_24h": -0.12199,
 "market_cap_change_24h": 457154235,
 "market_cap_change_percentage_24h": 0.44855,
 "circulating_supply": 102434373085.146,
 "total_supply": 102434373085.146,
 "max_supply": null,
 "ath": 1.32,
 "ath_change_percentage": -24.42602,
 "ath_date": "2018-07-24T00:00:00.000Z",
 "atl": 0.572521,
 "atl_change_percentage": 74.65136,
 "atl_date": "2015-03-02T00:00:00.000Z",
 "roi": null,
 "last_updated": "2024-03-12T14:45:33.208Z",
 "price_change_percentage_24h_in_currency": -0.12198769912549258
 },
 {
 "id": "binancecoin",
 "symbol": "bnb",
 "name": "BNB",
 "image": "https://assets.coingecko.com/coins/images/825/large/bnb-icon2_2x.png?1696501970",
 "current_price": 536.74,
 "market_cap": 81608975412,
 "market_cap_rank": 4,
 "fully_diluted_valuation": 81608975412,
 "total_volume": 4068515874,
 "high_24h": 541.59,
 "low_24h": 514.13,
 "price_change_24h": 19.55,
 "price_change_percentage_24h": 3.7809,
 "market_cap_change_24h": 2133761087,
 "market_cap_change_percentage_24h": 2.68481,
 "circulating_supply": 153856150,
 "total_supply": 153856150,
 "max_supply": 200000000,
 "ath": 686.31,
 "ath_change_percentage": -22.71442,
 "ath_date": "2021-05-10T07:24:17.097Z",
 "atl": 0.0398177,
 "atl_change_percentage": 1332011.21608,
 "atl_date": "2017-10-19T00:00:00.000Z",
 "roi": null,
 "last_updated": "2024-03-12T14:46:34.715Z",
 "price_change_percentage_24h_in_currency": 3.7808970718233623
 },
 {
 "id": "solana",
 "symbol": "sol",
 "name": "Solana",
 "image": "https://assets.coingecko.com/coins/images/4128/large/solana.png?1696504756",
 "current_price": 149,
 "market_cap": 66068818373,
 "market_cap_rank": 5,
 "fully_diluted_valuation": 85158946321,
 "total_volume": 5983493613,
 "high_24h": 154.37,
 "low_24h": 146.37,
 "price_change_24h": 0.473328,
 "price_change_percentage_24h": 0.31867,
 "market_cap_change_24h": 207240530,
 "market_cap_change_percentage_24h": 0.31466,
 "circulating_supply": 443536279.102044,
 "total_supply": 571692789.932675,
 "max_supply": null,
 "ath": 259.96,
 "ath_change_percentage": -42.62611,
 "ath_date": "2021-11-06T21:54:35.825Z",
 "atl": 0.500801,
 "atl_change_percentage": 29682.02205,
 "atl_date": "2020-05-11T19:35:23.449Z",
 "roi": null,
 "last_updated": "2024-03-12T14:45:51.922Z",
 "price_change_percentage_24h_in_currency": 0.31867363964320033
 },
 {
 "id": "staked-ether",
 "symbol": "steth",
 "name": "Lido Staked Ether",
 "image": "https://assets.coingecko.com/coins/images/13442/large/steth_logo.png?1696513206",
 "current_price": 3992.84,
 "market_cap": 39293915313,
 "market_cap_rank": 6,
 "fully_diluted_valuation": 39293915313,
 "total_volume": 60970580,
 "high_24h": 4082.03,
 "low_24h": 3969.06,
 "price_change_24h": -37.25970410089303,
 "price_change_percentage_24h": -0.92454,
 "market_cap_change_24h": -454202376.5690079,
 "market_cap_change_percentage_24h": -1.1427,
 "circulating_supply": 9851356.42015919,
 "total_supply": 9851356.42015919,
 "max_supply": null,
 "ath": 4829.57,
 "ath_change_percentage": -17.34622,
 "ath_date": "2021-11-10T14:40:47.256Z",
 "atl": 482.9,
 "atl_change_percentage": 726.64192,
 "atl_date": "2020-12-22T04:08:21.854Z",
 "roi": null,
 "last_updated": "2024-03-12T14:46:15.590Z",
 "price_change_percentage_24h_in_currency": -0.9245361934162203
 },
 {
 "id": "ripple",
 "symbol": "xrp",
 "name": "XRP",
 "image": "https://assets.coingecko.com/coins/images/44/large/xrp-symbol-white-128.png?1696501442",
 "current_price": 0.69467,
 "market_cap": 37964652211,
 "market_cap_rank": 7,
 "fully_diluted_valuation": 69350075011,
 "total_volume": 7264700950,
 "high_24h": 0.743962,
 "low_24h": 0.620454,
 "price_change_24h": 0.07406,
 "price_change_percentage_24h": 11.93338,
 "market_cap_change_24h": 4060790325,
 "market_cap_change_percentage_24h": 11.97737,
 "circulating_supply": 54736825690,
 "total_supply": 99987824103,
 "max_supply": 100000000000,
 "ath": 3.4,
 "ath_change_percentage": -79.57355,
 "ath_date": "2018-01-07T00:00:00.000Z",
 "atl": 0.00268621,
 "atl_change_percentage": 25742.48608,
 "atl_date": "2014-05-22T00:00:00.000Z",
 "roi": null,
 "last_updated": "2024-03-12T14:46:35.206Z",
 "price_change_percentage_24h_in_currency": 11.933375816677435
 },
 {
 "id": "usd-coin",
 "symbol": "usdc",
 "name": "USDC",
 "image": "https://assets.coingecko.com/coins/images/6319/large/usdc.png?1696506694",
 "current_price": 0.998783,
 "market_cap": 30296007103,
 "market_cap_rank": 8,
 "fully_diluted_valuation": 30303069190,
 "total_volume": 11156072386,
 "high_24h": 1.004,
 "low_24h": 0.995449,
 "price_change_24h": -0.002023404697365616,
 "price_change_percentage_24h": -0.20218,
 "market_cap_change_24h": 109709452,
 "market_cap_change_percentage_24h": 0.36344,
 "circulating_supply": 30366403307.6874,
 "total_supply": 30373481805.1593,
 "max_supply": null,
 "ath": 1.17,
 "ath_change_percentage": -14.81478,
 "ath_date": "2019-05-08T00:40:28.300Z",
 "atl": 0.877647,
 "atl_change_percentage": 13.82398,
 "atl_date": "2023-03-11T08:02:13.981Z",
 "roi": null,
 "last_updated": "2024-03-12T14:46:18.045Z",
 "price_change_percentage_24h_in_currency": -0.20217741208487677
 },
 {
 "id": "cardano",
 "symbol": "ada",
 "name": "Cardano",
 "image": "https://assets.coingecko.com/coins/images/975/large/cardano.png?1696502090",
 "current_price": 0.743185,
 "market_cap": 26205753519,
 "market_cap_rank": 9,
 "fully_diluted_valuation": 33466350521,
 "total_volume": 1182836105,
 "high_24h": 0.7861,
 "low_24h": 0.733804,
 "price_change_24h": 0.00881523,
 "price_change_percentage_24h": 1.20038,
 "market_cap_change_24h": 295372156,
 "market_cap_change_percentage_24h": 1.13998,
 "circulating_supply": 35237152841.7937,
 "total_supply": 45000000000,
 "max_supply": 45000000000,
 "ath": 3.09,
 "ath_change_percentage": -75.90542,
 "ath_date": "2021-09-02T06:00:10.474Z",
 "atl": 0.01925275,
 "atl_change_percentage": 3763.2313,
 "atl_date": "2020-03-13T02:22:55.044Z",
 "roi": null,
 "last_updated": "2024-03-12T14:46:37.014Z",
 "price_change_percentage_24h_in_currency": 1.2003812750153855
 },
 {
 "id": "dogecoin",
 "symbol": "doge",
 "name": "Dogecoin",
 "image": "https://assets.coingecko.com/coins/images/5/large/dogecoin.png?1696501409",
 "current_price": 0.169451,
 "market_cap": 24315250939,
 "market_cap_rank": 10,
 "fully_diluted_valuation": 24315178046,
 "total_volume": 2673436127,
 "high_24h": 0.182948,
 "low_24h": 0.168417,
 "price_change_24h": -0.003511687342282744,
 "price_change_percentage_24h": -2.03031,
 "market_cap_change_24h": -461447014.43896484,
 "market_cap_change_percentage_24h": -1.86242,
 "circulating_supply": 143437696383.705,
 "total_supply": 143437846383.705,
 "max_supply": null,
 "ath": 0.731578,
 "ath_change_percentage": -76.81181,
 "ath_date": "2021-05-08T05:08:23.458Z",
 "atl": 0.0000869,
 "atl_change_percentage": 195104.11272,
 "atl_date": "2015-05-06T00:00:00.000Z",
 "roi": null,
 "last_updated": "2024-03-12T14:46:36.295Z",
 "price_change_percentage_24h_in_currency": -2.0303136331971188
 },
 {
 "id": "avalanche-2",
 "symbol": "avax",
 "name": "Avalanche",
 "image": "https://assets.coingecko.com/coins/images/12559/large/Avalanche_Circle_RedWhite_Trans.png?1696512369",
 "current_price": 50.25,
 "market_cap": 19046845410,
 "market_cap_rank": 11,
 "fully_diluted_valuation": 22009499520,
 "total_volume": 1887260006,
 "high_24h": 50.79,
 "low_24h": 46.4,
 "price_change_24h": 2.36,
 "price_change_percentage_24h": 4.93608,
 "market_cap_change_24h": 945634606,
 "market_cap_change_percentage_24h": 5.22415,
 "circulating_supply": 377311933.265917,
 "total_supply": 436001541.778682,
 "max_supply": 720000000,
 "ath": 144.96,
 "ath_change_percentage": -65.24272,
 "ath_date": "2021-11-21T14:18:56.538Z",
 "atl": 2.8,
 "atl_change_percentage": 1698.7654,
 "atl_date": "2020-12-31T13:15:21.540Z",
 "roi": null,
 "last_updated": "2024-03-12T14:46:00.874Z",
 "price_change_percentage_24h_in_currency": 4.936079759399648
 },
 {
 "id": "shiba-inu",
 "symbol": "shib",
 "name": "Shiba Inu",
 "image": "https://assets.coingecko.com/coins/images/11939/large/shiba.png?1696511800",
 "current_price": 0.00003217,
 "market_cap": 18932708538,
 "market_cap_rank": 12,
 "fully_diluted_valuation": 32128760727,
 "total_volume": 1674393553,
 "high_24h": 0.00003441,
 "low_24h": 0.00003199,
 "price_change_24h": -0.000001024030717877,
 "price_change_percentage_24h": -3.08482,
 "market_cap_change_24h": -591582519.8939705,
 "market_cap_change_percentage_24h": -3.02998,
 "circulating_supply": 589265638654085.8,
 "total_supply": 999982367627838,
 "max_supply": null,
 "ath": 0.00008616,
 "ath_change_percentage": -62.66677,
 "ath_date": "2021-10-28T03:54:55.568Z",
 "atl": 5.6366e-11,
 "atl_change_percentage": 57065574.55744,
 "atl_date": "2020-11-28T11:26:25.838Z",
 "roi": null,
 "last_updated": "2024-03-12T14:46:40.025Z",
 "price_change_percentage_24h_in_currency": -3.084824897256561
 },
 {
 "id": "polkadot",
 "symbol": "dot",
 "name": "Polkadot",
 "image": "https://assets.coingecko.com/coins/images/12171/large/polkadot.png?1696512008",
 "current_price": 10.67,
 "market_cap": 14298631396,
 "market_cap_rank": 13,
 "fully_diluted_valuation": 15162372128,
 "total_volume": 622499704,
 "high_24h": 11.23,
 "low_24h": 10.48,
 "price_change_24h": -0.12425738555597654,
 "price_change_percentage_24h": -1.15121,
 "market_cap_change_24h": -171842484.09397888,
 "market_cap_change_percentage_24h": -1.18754,
 "circulating_supply": 1340037502.99398,
 "total_supply": 1420986635.84345,
 "max_supply": null,
 "ath": 54.98,
 "ath_change_percentage": -80.60069,
 "ath_date": "2021-11-04T14:10:09.301Z",
 "atl": 2.7,
 "atl_change_percentage": 295.40649,
 "atl_date": "2020-08-20T05:48:11.359Z",
 "roi": null,
 "last_updated": "2024-03-12T14:46:25.370Z",
 "price_change_percentage_24h_in_currency": -1.1512094151581684
 },
 {
 "id": "the-open-network",
 "symbol": "ton",
 "name": "Toncoin",
 "image": "https://assets.coingecko.com/coins/images/17980/large/ton_symbol.png?1696517498",
 "current_price": 3.7,
 "market_cap": 12843509093,
 "market_cap_rank": 14,
 "fully_diluted_valuation": 18899491227,
 "total_volume": 320589209,
 "high_24h": 3.84,
 "low_24h": 3.06,
 "price_change_24h": 0.585735,
 "price_change_percentage_24h": 18.77943,
 "market_cap_change_24h": 2144272444,
 "market_cap_change_percentage_24h": 20.04136,
 "circulating_supply": 3468602939.81789,
 "total_supply": 5104127090.40447,
 "max_supply": null,
 "ath": 5.29,
 "ath_change_percentage": -29.99839,
 "ath_date": "2021-11-12T06:50:02.476Z",
 "atl": 0.519364,
 "atl_change_percentage": 613.11128,
 "atl_date": "2021-09-21T00:33:11.092Z",
 "roi": null,
 "last_updated": "2024-03-12T14:46:23.358Z",
 "price_change_percentage_24h_in_currency": 18.779433332985498
 },
 {
 "id": "chainlink",
 "symbol": "link",
 "name": "Chainlink",
 "image": "https://assets.coingecko.com/coins/images/877/large/chainlink-new-logo.png?1696502009",
 "current_price": 20.42,
 "market_cap": 12011413532,
 "market_cap_rank": 15,
 "fully_diluted_valuation": 20458889660,
 "total_volume": 877099488,
 "high_24h": 21.42,
 "low_24h": 20.18,
 "price_change_24h": -0.7236419618961669,
 "price_change_percentage_24h": -3.42235,
 "market_cap_change_24h": -396030802.34833145,
 "market_cap_change_percentage_24h": -3.19188,
 "circulating_supply": 587099971.3083414,
 "total_supply": 1000000000,
 "max_supply": 1000000000,
 "ath": 52.7,
 "ath_change_percentage": -61.15628,
 "ath_date": "2021-05-10T00:13:57.214Z",
 "atl": 0.148183,
 "atl_change_percentage": 13713.52233,
 "atl_date": "2017-11-29T00:00:00.000Z",
 "roi": null,
 "last_updated": "2024-03-12T14:46:07.130Z",
 "price_change_percentage_24h_in_currency": -3.422348879977899
 },
 {
 "id": "tron",
 "symbol": "trx",
 "name": "TRON",
 "image": "https://assets.coingecko.com/coins/images/1094/large/tron-logo.png?1696502193",
 "current_price": 0.13189,
 "market_cap": 11582988720,
 "market_cap_rank": 16,
 "fully_diluted_valuation": 11583085698,
 "total_volume": 547113807,
 "high_24h": 0.134105,
 "low_24h": 0.131464,
 "price_change_24h": -0.000319207838419405,
 "price_change_percentage_24h": -0.24144,
 "market_cap_change_24h": -19467988.44286728,
 "market_cap_change_percentage_24h": -0.16779,
 "circulating_supply": 87880374974.8358,
 "total_supply": 87880353384.1314,
 "max_supply": null,
 "ath": 0.231673,
 "ath_change_percentage": -43.07189,
 "ath_date": "2018-01-05T00:00:00.000Z",
 "atl": 0.00180434,
 "atl_change_percentage": 7209.42125,
 "atl_date": "2017-11-12T00:00:00.000Z",
 "roi": {
 "times": 68.41554472513147,
 "currency": "usd",
 "percentage": 6841.554472513148
 },
 "last_updated": "2024-03-12T14:46:30.121Z",
 "price_change_percentage_24h_in_currency": -0.2414423067794016
 },
 {
 "id": "wrapped-bitcoin",
 "symbol": "wbtc",
 "name": "Wrapped Bitcoin",
 "image": "https://assets.coingecko.com/coins/images/7598/large/wrapped_bitcoin_wbtc.png?1696507857",
 "current_price": 71808,
 "market_cap": 11188079150,
 "market_cap_rank": 17,
 "fully_diluted_valuation": 11188079150,
 "total_volume": 517393128,
 "high_24h": 72616,
 "low_24h": 71467,
 "price_change_24h": -249.52944769943133,
 "price_change_percentage_24h": -0.34629,
 "market_cap_change_24h": -48392452.156354904,
 "market_cap_change_percentage_24h": -0.43067,
 "circulating_supply": 155956.89201022,
 "total_supply": 155956.89201022,
 "max_supply": 155956.89201022,
 "ath": 72616,
 "ath_change_percentage": -1.15276,
 "ath_date": "2024-03-11T22:20:19.934Z",
 "atl": 3139.17,
 "atl_change_percentage": 2186.56127,
 "atl_date": "2019-04-02T00:00:00.000Z",
 "roi": null,
 "last_updated": "2024-03-12T14:45:50.311Z",
 "price_change_percentage_24h_in_currency": -0.34629099094599625
 },
 {
 "id": "matic-network",
 "symbol": "matic",
 "name": "Polygon",
 "image": "https://assets.coingecko.com/coins/images/4713/large/polygon.png?1698233745",
 "current_price": 1.18,
 "market_cap": 10938124839,
 "market_cap_rank": 18,
 "fully_diluted_valuation": 11783034940,
 "total_volume": 809719140,
 "high_24h": 1.25,
 "low_24h": 1.17,
 "price_change_24h": -0.031947052072195614,
 "price_change_percentage_24h": -2.64222,
 "market_cap_change_24h": -264502813.61136627,
 "market_cap_change_percentage_24h": -2.36108,
 "circulating_supply": 9282943566.203985,
 "total_supply": 10000000000,
 "max_supply": 10000000000,
 "ath": 2.92,
 "ath_change_percentage": -59.5855,
 "ath_date": "2021-12-27T02:08:34.307Z",
 "atl": 0.00314376,
 "atl_change_percentage": 37389.9212,
 "atl_date": "2019-05-10T00:00:00.000Z",
 "roi": {
 "times": 446.58573602758975,
 "currency": "usd",
 "percentage": 44658.573602758974
 },
 "last_updated": "2024-03-12T14:45:52.027Z",
 "price_change_percentage_24h_in_currency": -2.6422229036766045
 },
 {
 "id": "uniswap",
 "symbol": "uni",
 "name": "Uniswap",
 "image": "https://assets.coingecko.com/coins/images/12504/large/uni.jpg?1696512319",
 "current_price": 14,
 "market_cap": 10536393547,
 "market_cap_rank": 19,
 "fully_diluted_valuation": 13978322482,
 "total_volume": 307867103,
 "high_24h": 14.6,
 "low_24h": 13.8,
 "price_change_24h": -0.09698050652531089,
 "price_change_percentage_24h": -0.688,
 "market_cap_change_24h": -102998389.23400497,
 "market_cap_change_percentage_24h": -0.96809,
 "circulating_supply": 753766667,
 "total_supply": 1000000000,
 "max_supply": 1000000000,
 "ath": 44.92,
 "ath_change_percentage": -68.83754,
 "ath_date": "2021-05-03T05:25:04.822Z",
 "atl": 1.03,
 "atl_change_percentage": 1258.76233,
 "atl_date": "2020-09-17T01:20:38.214Z",
 "roi": null,
 "last_updated": "2024-03-12T14:46:26.696Z",
 "price_change_percentage_24h_in_currency": -0.687998230832545
 },
 {
 "id": "bitcoin-cash",
 "symbol": "bch",
 "name": "Bitcoin Cash",
 "image": "https://assets.coingecko.com/coins/images/780/large/bitcoin-cash-circle.png?1696501932",
 "current_price": 426.89,
 "market_cap": 8395803160,
 "market_cap_rank": 20,
 "fully_diluted_valuation": 8965165952,
 "total_volume": 604504219,
 "high_24h": 455.27,
 "low_24h": 422.1,
 "price_change_24h": -8.84809686859478,
 "price_change_percentage_24h": -2.0306,
 "market_cap_change_24h": -181563338.10722256,
 "market_cap_change_percentage_24h": -2.11677,
 "circulating_supply": 19666324.8966508,
 "total_supply": 21000000,
 "max_supply": 21000000,
 "ath": 3785.82,
 "ath_change_percentage": -88.72297,
 "ath_date": "2017-12-20T00:00:00.000Z",
 "atl": 76.93,
 "atl_change_percentage": 454.92208,
 "atl_date": "2018-12-16T00:00:00.000Z",
 "roi": null,
 "last_updated": "2024-03-12T14:46:26.167Z",
 "price_change_percentage_24h_in_currency": -2.030601377273432
 }
 ]
 """.data(using: .utf8)!
 */

//
//  CurrencyModel.swift
//  currency-converter
//
//  Created by Fahmi Fahreza on 27/02/24.
//

import Foundation

struct Currency: Identifiable, Decodable {
    let id: String
    let base: String
    let date: String
    let lastUpdate: String
    let rate: Double
    let symbol: String
    let name: String
    let timestamp: Int
    let updatedAt: String

    private enum CodingKeys: String, CodingKey {
        case id = "_id", base, date, rate, symbol, name, timestamp
        case lastUpdate = "last_update"
        case updatedAt = "updated_at"
    }
}

//struct Wrapper: Codable {
//    let items: [Currency]
//}
//"_id": "65d8bbb76500e4a8c275ea63",
//"base": "EUR",
//"date": "2024-02-23",
//"last_update": "2024-02-23T15:37:27.486Z",
//"name": "Sierra Leonean Leone",
//"rate": 21431.168185,
//"symbol": "SLL",
//"timestamp": 1708702623,
//"updated_at": "2024-02-27T10:54:48.511Z"

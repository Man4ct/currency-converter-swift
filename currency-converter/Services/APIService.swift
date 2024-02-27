//
//  APIService.swift
//  currency-converter
//
//  Created by Fahmi Fahreza on 27/02/24.
//

import Foundation

class APIService {
    static let shared = APIService()
    private let constant = Constant()
    
    func fetchLatestCurrency() async throws -> [Currency] {
        let url = URL(string: "\(constant.baseURL)/currencies")!
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            let currencies = try JSONDecoder().decode([Currency].self, from: data) // Specify the type explicitly
            return currencies
        } catch {
            throw error
        }
    }
}

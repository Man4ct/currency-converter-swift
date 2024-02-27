//
//  CurrencyViewModel.swift
//  currency-converter
//
//  Created by Fahmi Fahreza on 27/02/24.
//

import Foundation

//class CurrencyViewModel: ObservableObject {
//    
//    @Published var currencies: [Currency] = []
//    @Published var isLoading: Bool = false
//    @Published var errorMessage: String?
//
//    private let apiService = APIService()
//
//    // Functions for API Calls
//    func fetchCurrencies() {
//        // Set isLoading flag to true
//        isLoading = true
//
//        // Make API call to fetch currencies
//               apiService.fetchLatestCurrency { result in
//                   DispatchQueue.main.async {
//                       self.isLoading = false
//                       switch result {
//                       case .success(let currencies):
//                           self.currencies = currencies
//                       case .failure(let error):
//                           self.errorMessage = error.localizedDescription
//                       }
//                   }
//               }
//    }
//
//    // Other functions for data processing, sorting, filtering, etc.
//}

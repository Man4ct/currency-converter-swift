//
//  ContentView.swift
//  currency-converter
//
//  Created by Fahmi Fahreza on 25/02/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var currencyData = []
    @State private var apiService = APIService()
    var body: some View {
        VStack {
            if currencyData.isEmpty == false {
//                TODO: add view to display data
            }
            Text("Currency Data:")
                .padding()
            
        }
        .task {
            do {
                currencyData = try await apiService.fetchLatestCurrency()
                print(currencyData)
            } catch {
                print(error)
            }
           
        }
    }
    
//    func fetchData() {
//        guard let url = URL(string: "http://localhost:8080/latest") else {
//            print("Invalid URL")
//            return
//        }
//        
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            guard let data = data else {
//                print("No data in response: \(error?.localizedDescription ?? "Unknown error")")
//                return
//            }
//            
//            if let decodedData = try? JSONDecoder().decode(CurrencyResponse.self, from: data) {
//                DispatchQueue.main.async {
//                    self.currencyData = "\(decodedData)"
//                }
//            } else {
//                print("Failed to decode response data.")
//            }
//        }.resume()
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CurrencyResponse: Codable {
    let message: Message
}

struct Message: Codable {
    let success: Bool
    let timestamp: Int
    let base: String
    let date: String
    let rates: [String: Double]
}

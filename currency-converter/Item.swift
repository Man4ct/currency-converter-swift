//
//  Item.swift
//  currency-converter
//
//  Created by Fahmi Fahreza on 25/02/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

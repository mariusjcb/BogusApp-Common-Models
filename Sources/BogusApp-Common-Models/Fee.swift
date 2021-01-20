//
//  File.swift
//  
//
//  Created by Marius Ilie on 17/01/2021.
//

import Foundation

public enum FeeType: String, Codable {
    case monthly
}

public struct Fee: Codable, Identifiable {
    public let id: UUID
    public let price: Double
    public let benefits: [Benefit]
    public let type: FeeType
    
    public init(id: UUID, price: Double, benefits: [Benefit], type: FeeType) {
        self.id = id
        self.price = price
        self.benefits = benefits
        self.type = type
    }
}

//
//  File.swift
//  
//
//  Created by Marius Ilie on 17/01/2021.
//

import Foundation

public enum PlanType: String, Codable {
    case monthly
}

public struct Plan: Codable, Identifiable, Equatable, Hashable {
    public let id: UUID
    public let price: Double
    public let benefits: [Benefit]
    public let type: PlanType
    
    public init(id: UUID, price: Double, benefits: [Benefit], type: PlanType) {
        self.id = id
        self.price = price
        self.benefits = benefits
        self.type = type
    }
    
    public static func == (lhs: Plan, rhs: Plan) -> Bool {
        lhs.id == rhs.id
    }
}

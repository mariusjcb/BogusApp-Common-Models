//
//  File.swift
//  
//
//  Created by Marius Ilie on 17/01/2021.
//

import Foundation

public struct Channel: Codable, Identifiable, Equatable, Hashable {
    public let id: UUID
    public let name: String
    public let plans: [Plan]
    
    public init(id: UUID, name: String, plans: [Plan]) {
        self.id = id
        self.name = name
        self.plans = plans
    }
    
    public static func == (lhs: Channel, rhs: Channel) -> Bool {
        lhs.id == rhs.id
    }
}

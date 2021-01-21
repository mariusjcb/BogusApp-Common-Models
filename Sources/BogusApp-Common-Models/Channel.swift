//
//  File.swift
//  
//
//  Created by Marius Ilie on 17/01/2021.
//

import Foundation

public struct Channel: Codable, Identifiable {
    public let id: UUID
    public let name: String
    public let plans: [Plan]
    
    public init(id: UUID, name: String, plans: [Plan]) {
        self.id = id
        self.name = name
        self.plans = plans
    }
}

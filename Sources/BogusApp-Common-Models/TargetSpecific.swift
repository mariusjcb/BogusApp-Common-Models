//
//  File.swift
//  
//
//  Created by Marius Ilie on 17/01/2021.
//

import Foundation

public struct TargetSpecific: Codable, Identifiable, Equatable, Hashable {
    public let id: UUID
    public let title: String
    public let channels: [Channel]
    
    public init(id: UUID, title: String, channels: [Channel]) {
        self.id = id
        self.title = title
        self.channels = channels
    }
    
    public static func == (lhs: TargetSpecific, rhs: TargetSpecific) -> Bool {
        lhs.id == rhs.id
    }
}

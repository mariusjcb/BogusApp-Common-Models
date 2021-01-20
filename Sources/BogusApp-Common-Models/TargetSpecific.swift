//
//  File.swift
//  
//
//  Created by Marius Ilie on 17/01/2021.
//

import Foundation

public struct TargetSpecific: Codable, Identifiable {
    public let id: UUID
    public let title: String
    public let channels: [Channel]
    
    public init(id: UUID, title: String, channels: [Channel]) {
        self.id = id
        self.title = title
        self.channels = channels
    }
}

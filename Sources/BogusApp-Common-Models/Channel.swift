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
    public let fees: [Fee]
}

//
//  File.swift
//  
//
//  Created by Marius Ilie on 17/01/2021.
//

import Foundation

public struct Benefit: Codable, Identifiable {
    public let id: UUID
    public let name: String
    public let type: BenefitType
}

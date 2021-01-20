//
//  File.swift
//  
//
//  Created by Marius Ilie on 17/01/2021.
//

import Foundation

public enum BenefitType: Codable {
    case range(_ range: ClosedRange<Int>)
    case value(_ value: Int)
    case text
    
    private enum CodingKeys: String, CodingKey {
        case range
        case value
        case textOnly
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
            let key = container.allKeys.first
            
            switch key {
            case .textOnly:
                self = .text
            case .value:
                self = .value(try container.decode(Int.self, forKey: .value))
            case .range:
                self = .range(try container.decode(ClosedRange<Int>.self, forKey: .range))
            default:
                throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: container.codingPath, debugDescription: "Error decoding."))
            }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .range(let range):
            try container.encode(range, forKey: .range)
        case .value(let value):
            try container.encode(value, forKey: .value)
        case .text:
            try container.encode(true, forKey: .textOnly)
        }
    }
}

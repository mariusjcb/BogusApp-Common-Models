//
//  File.swift
//  
//
//  Created by Marius Ilie on 17/01/2021.
//

import Foundation

public enum BenefitType: Codable {
    case range(_ range: Range<Int>)
    case value(_ value: Int)
    case text
    
    private enum CodingKeys: String, CodingKey {
        case range
        case value
        case text
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
            let key = container.allKeys.first
            
            switch key {
            case .text:
                self = .text
            case .value:
                self = .value(try container.decode(Int.self, forKey: .value))
            case .range:
                self = .range(try container.decode(Range<Int>.self, forKey: .range))
            default:
                throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: container.codingPath, debugDescription: "Error decoding."))
            }
    }
    
    public func encode(to encoder: Encoder) throws {
        <#TODO#>
    }
}

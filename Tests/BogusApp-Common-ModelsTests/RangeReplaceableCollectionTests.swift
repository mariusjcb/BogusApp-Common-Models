//
//  File.swift
//  
//
//  Created by Marius Ilie on 26.01.2021.
//

import XCTest
@testable import BogusApp_Common_Models

class RangeReplaceableCollectionTests: XCTestCase {
    func test_whenRemovingDuplicates_shouldKeepOrderInOrderedSet() {
        let values = [5, 3, 2, 1, 5, 3, 1, 1, 5, 7, 6, 7, 8, 1]
        let expected = [5, 3, 2, 1, 7, 6, 8]
        XCTAssertEqual(values.orderedSet, expected)
    }
    
    static var allTests = [
        ("test_whenRemovingDuplicates_shouldKeepOrderInOrderedSet", test_whenRemovingDuplicates_shouldKeepOrderInOrderedSet),
    ]
}

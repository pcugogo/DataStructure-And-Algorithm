//
//  StackTests.swift
//  DataStructureTests
//
//  Created by Park Chanwook on 2023/01/28.
//

import XCTest
@testable import DataStructure

final class StackTests: XCTestCase {
    enum Rainbow: String, CaseIterable {
        case red
        case orange
        case yellow
        case green
        case blue
        case deepBlue
        case purple
    }
    let rainbowColors = Rainbow.allCases
    
    private var stack = Stack<Rainbow>([])

    func testPush() {
        rainbowColors.forEach { color in
            stack.push(color)
        }
        
        XCTAssertEqual(stack.storage, rainbowColors)
    }

    func testDequeue() {
        rainbowColors.forEach { color in
            stack.push(color)
        }
        
        var popColors: [Rainbow] = []
        while stack.isEmpty == false {
            guard let color = stack.pop() else { continue }
            popColors.append(color)
        }
        
        XCTAssertEqual(popColors, rainbowColors.reversed())
    }
}

//
//  QueueTests.swift
//  DataStructureTests
//
//  Created by Park Chanwook on 2023/01/28.
//

import XCTest
@testable import DataStructure

final class QueueTests: XCTestCase {
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
    
    private var queue = Queue<Rainbow>([])
    
    func testEnqueue() {
        rainbowColors.forEach { color in
            queue.enqueue(color)
        }
        
        XCTAssertEqual(queue.storage, rainbowColors)
    }
    
    func testDequeue() {
        rainbowColors.forEach { color in
            queue.enqueue(color)
        }
        
        var dequeueColors: [Rainbow] = []
        while queue.isEmpty == false {
            guard let color = queue.dequeue() else { continue }
            dequeueColors.append(color)
        }
        
        XCTAssertEqual(dequeueColors, rainbowColors)
    }
}

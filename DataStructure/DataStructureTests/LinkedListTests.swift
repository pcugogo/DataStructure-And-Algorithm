//
//  LinkedListTests.swift
//  DataStructureTests
//
//  Created by Park Chanwook on 2023/01/29.
//

import XCTest
@testable import DataStructure

class LinkedListTests: XCTestCase {
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
    
    private var linkedList = LinkedList<Rainbow>()

    func testAppend() {
        let redColor = rainbowColors[0]
        linkedList.append(redColor)
        checkExpected(head: redColor, tail: redColor)
        
        let orangeColor = rainbowColors[1]
        linkedList.append(orangeColor)
        checkExpected(head: redColor, tail: orangeColor)
        
        func checkExpected(head: Rainbow, tail: Rainbow) {
            XCTAssert(linkedList.head?.value == head)
            XCTAssert(linkedList.tail?.value == tail)
        }
    }
    
    func testPush() {
        let redColor = rainbowColors[0]
        linkedList.push(redColor)
        checkExpected(head: redColor, tail: redColor)
        XCTAssert(linkedList.count == 1)
        
        let orangeColor = rainbowColors[1]
        linkedList.push(orangeColor)
        checkExpected(head: orangeColor, tail: redColor)
        XCTAssert(linkedList.count == 2)
        
        func checkExpected(head: Rainbow, tail: Rainbow) {
            XCTAssert(linkedList.head?.value == head)
            XCTAssert(linkedList.tail?.value == tail)
        }
    }

    func testInsert() {
        let redColor = rainbowColors[0]
        linkedList.insert(redColor, at: 0)
        checkExpected(head: redColor, tail: redColor)
        XCTAssert(linkedList.count == 1)
        
        let orangeColor = rainbowColors[1]
        linkedList.insert(orangeColor, at: 0)
        checkExpected(head: orangeColor, tail: redColor)
        XCTAssert(linkedList.count == 2)
        
        let yellowColor = rainbowColors[2]
        linkedList.insert(yellowColor, at: 2)
        checkExpected(head: orangeColor, tail: yellowColor)
        XCTAssert(linkedList.count == 3)
        
        func checkExpected(head: Rainbow, tail: Rainbow) {
            XCTAssert(linkedList.head?.value == head)
            XCTAssert(linkedList.tail?.value == tail)
        }
    }
    
    func testRemove() {
        let redColor = rainbowColors[0]
        let orangeColor = rainbowColors[1]
        let yellowColor = rainbowColors[2]
        let greenColor = rainbowColors[3]
        linkedList.append(redColor)
        linkedList.append(orangeColor)
        linkedList.append(yellowColor)
        linkedList.append(greenColor)
        
        linkedList.remove(at: 0)
        checkExpected(head: orangeColor, tail: greenColor)
        XCTAssert(linkedList.count == 3)
        
        linkedList.remove(at: 1)
        checkExpected(head: orangeColor, tail: greenColor)
        XCTAssert(linkedList.count == 2)
        
        linkedList.remove(at: 0)
        checkExpected(head: greenColor, tail: greenColor)
        XCTAssert(linkedList.count == 1)
        
        func checkExpected(head: Rainbow, tail: Rainbow) {
            XCTAssert(linkedList.head?.value == head)
            XCTAssert(linkedList.tail?.value == tail)
        }
    }
    
    func testIsEmpty() {
        XCTAssertTrue(linkedList.isEmpty)
        linkedList.append(rainbowColors[0])
        XCTAssertFalse(linkedList.isEmpty)
    }
    
    func testFindNode() {
        let redColor = rainbowColors[0]
        linkedList.append(redColor)
        XCTAssert(linkedList.node(at: 0)?.value == redColor)
        
        let orangeColor = rainbowColors[1]
        linkedList.append(orangeColor)
        XCTAssert(linkedList.node(at: 1)?.value == orangeColor)
    }
}

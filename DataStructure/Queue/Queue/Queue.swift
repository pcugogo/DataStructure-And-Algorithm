//
//  Queue.swift
//  Queue
//
//  Created by ChanWook Park on 11/06/2020.
//  Copyright © 2020 ChanWookPark. All rights reserved.
//

import Foundation

public struct Queue<Element> {
    private var storage = [Element]()
    
    public var isEmpty: Bool {
        return storage.isEmpty
    }
    
    public var count: Int {
        return storage.count
    }
    
    init(_ element: [Element]) {
        storage = element
    }
    
    public mutating func enqueue(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func dequeue() -> Element? {
        if storage.isEmpty {
            return nil
        } else {
            return storage.removeFirst()
        }
    }
}

extension Queue: CustomStringConvertible {
    public var description: String {
        return self.storage.description
    }
}

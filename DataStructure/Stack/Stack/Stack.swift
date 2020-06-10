//
//  Stack.swift
//  Stack
//
//  Created by ChanWook Park on 08/06/2020.
//  Copyright © 2020 ChanWookPark. All rights reserved.
//

import Foundation

struct Stack<Element> {
    private var storage = Array<Element>()
    
    init(_ element: [Element]) {
        storage = element
    }
    
    public mutating func push(_ element: Element) {
        self.storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        return self.storage.popLast()
    }
    
    public func peek() -> Element? {
        return self.storage.last
    }
    
    public var isEmpry: Bool {
        return self.storage.isEmpty
    }
    
    public var count: Int {
        return self.storage.count
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        return self.storage.description
    }
}


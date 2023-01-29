//
//  Stack.swift
//  DataStructure
//
//  Created by Park Chanwook on 2023/01/28.
//

import Foundation

struct Stack<T> {
    private(set) var storage: Array<T>
    
    var isEmpty: Bool {
        return self.storage.isEmpty
    }
    
    init(_ element: [T]) {
        storage = element
    }
    
    mutating func push(_ element: T) {
        storage.append(element)
    }
    
    mutating func pop() -> T? {
        return storage.popLast()
    }
}

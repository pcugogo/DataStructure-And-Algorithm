//
//  Queue.swift
//  DataStructure
//
//  Created by Park Chanwook on 2023/01/28.
//

import Foundation

struct Queue<T> {
    private(set) var storage: [T]
    
    var isEmpty: Bool {
        return storage.isEmpty
    }
    
    init(_ element: [T]) {
        storage = element
    }
    
    mutating func enqueue(_ element: T) {
        storage.append(element)
    }
    
    mutating func dequeue() -> T? {
        if storage.isEmpty {
            return nil
        } else {
            return storage.removeFirst()
        }
    }
}

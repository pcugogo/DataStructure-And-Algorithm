//
//  LinkedList.swift
//  DataStructure
//
//  Created by Park Chanwook on 2023/01/29.
//

import Foundation

// Array vs LinkedList

// 탐색
// 배열은 index를 알면 데이터에 빠르게 접근할 수 있다. O(1)
// 연결리스트는 데이터를 찾기위해서 Head부터 순차적으로 하나하나 찾아야하기때문에 속도가 느리다. O(n)

// 삽입, 삭제
// 배열은 element를 삽입 또는 삭제 시 데이터들의 위치를 이동 시키기때문에 비효율적이다.
// ex) 1, 2, 3...100에서 10을 삭제하면 10 뒤의 값들을 한칸씩 앞으로 이동한다.
// 연결리스트는 삽입 또는 삭제 시 링크만 변경하면 된다.

// 탐색이 중요한 경우 배열을 사용하고 삽입, 삭제가 중요하다면 링크드리스트를 사용할 수 있다.

class LinkedListNode<T> {
    let value: T
    var next: LinkedListNode<T>?
    
    init(value: T, next: LinkedListNode<T>? = nil) {
        self.value = value
        self.next = next
    }
}

final class LinkedList<T> {
    typealias Node = LinkedListNode<T>
    
    private(set) var head: Node?
    private(set) var tail: Node?
    private(set) var count = 0
    
    var isEmpty: Bool {
        return head == nil
    }
    
    func node(at index: Int) -> Node? {
        if index == 0 { return head }
        var node = head
        for _ in (1 ... index) {
            node = node?.next
        }
        return node
    }
    
    func push(_ value: T) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
        incrementCount()
    }
    
    func append(_ value: T) {
        guard tail != nil else {
            push(value)
            return
        }
        
        tail!.next = Node(value: value)
        tail = tail!.next
        incrementCount()
    }
    
    func insert(_ value: T, at index: Int) {
        if index == 0 || head == nil {
            push(value)
        } else {
            let newNode = Node(value: value)
            let previousNode = node(at: index - 1)
            let nextNode = previousNode?.next
            
            previousNode?.next = newNode
            newNode.next = nextNode
            
            incrementCount()
            
            if index == count - 1 {
                tail = newNode
            }
        }
    }
    
    func remove(at index: Int) {
        assert(index < count)
        
        defer {
            if count > 0 {
                decreaseCount()
            }
        }
        
        guard index != 0 else {
            head = head?.next
            return
        }
        
        var node = head
        var previousNode = node
        for i in (1 ... index) {
            let currentNode = node?.next
            if i == index - 1 {
                previousNode = currentNode
            }
            node = currentNode
        }
        
        previousNode?.next = node?.next
    }
    
    private func incrementCount() {
        count += 1
    }
    
    private func decreaseCount() {
        count -= 1
    }
}

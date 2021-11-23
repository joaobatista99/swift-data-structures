//
//  Queue.swift
//  
//
//  Created by João Victor Batista on 23/11/21.
//

import Foundation

struct StringQueue {
    
    var items: [String] = []
    
    mutating func enqueue(element: String) {
        items.append(element)
    }
    
    mutating func dequeue() -> String?  {
        
        if items.isEmpty {
            return nil
        } else {
            let tempElement = items.first
            items.remove(at: 0)
            return tempElement
        }
    }
    
    func peek() -> String? {
        return items.first
    }
    
    var isEmpty: Bool {
        return items.isEmpty
    }
}

//
//  Stack.swift
//  
//
//  Created by João Victor Batista on 17/11/21.
//

import Foundation

struct StringStack {
    private var array = [String]()
    
    mutating func push(item: String) {
        array.append(item)
    }
    
    mutating func pop() -> String? {
        return array.popLast()
    }
    
    func top() -> String? {
        return array.last
    }
    
    var isEmpty: Bool {
        return array.isEmpty
    }
}

var stack = StringStack()

print(stack.isEmpty)

stack.push(item: "firstItem")

print(stack.top() ?? "Pilha vazia")

stack.push(item: "secondItem")

print(stack.top() ?? "Pilha vazia")

stack.pop()

print(stack.top() ?? "Pilha vazia")

print(stack.isEmpty)

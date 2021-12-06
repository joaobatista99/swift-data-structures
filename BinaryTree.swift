//
//  BinaryTree.swift
//  
//
//  Created by João Victor Batista on 06/12/21.
//

import Foundation

indirect enum StringBinaryTree {
  case empty
  case node(StringBinaryTree, String, StringBinaryTree)
}

// folhas
let leafD = StringBinaryTree.node(.empty, "D", .empty)
let leafE = StringBinaryTree.node(.empty, "E", .empty)
let leafF = StringBinaryTree.node(.empty, "F", .empty)
let leafG = StringBinaryTree.node(.empty, "G", .empty)

// nós intermediários
let nodeB = StringBinaryTree.node(leafD, "B", leafE)
let nodeC = StringBinaryTree.node(leafF, "C", leafG)

// raiz
let tree = StringBinaryTree.node(nodeB, "A", nodeC)


extension StringBinaryTree: CustomStringConvertible {
  var description: String {
    switch self {
    case let .node(left, value, right):
      return "value: \(value),\n left = [" + left.description + "], right = [" + right.description + "]"
    case .empty:
      return ""
    }
  }
}


print(tree)

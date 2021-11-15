//
//  Arrays.swift
//  
//
//  Created by João Victor Batista on 15/11/21.
//

import Foundation

var intArray = [Int]()

var auxIntArray: [Int] = [1,1,2]

/// Adiciona elemento no final do array
intArray.append(1)
print(intArray)

/// Adiciona conteúdos de outro array no final do array
intArray.append(contentsOf: auxIntArray)
print(intArray)

/// Acessa o primeiro elemento do array
let first = intArray.first
print(first ?? "Array vazio")

/// Acessa o último elemento do array
let last = intArray.last
print(last ?? "Array vazio")

/// Retorna o tamanho do array
let count = intArray.count
print(count)

/// Remove o elemento na posiçãop especificada
intArray.remove(at: 0)
print(intArray)

/// Remove todos os elementos do array
intArray.removeAll()
print(intArray)

///Retorna se o array em questão está vazio
let isEmpty = intArray.isEmpty
print(isEmpty)

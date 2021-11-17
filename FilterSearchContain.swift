//
//  FilterSearchContain.swift
//  
//
//  Created by João Victor Batista on 17/11/21.
//

import Foundation

struct Person {
    var name: String
    var age: Int
}

let myName = "João"

let people = [Person(name: "João", age: 21), Person(name: "Bia", age: 34), Person(name: "Pedro", age: 12), Person(name: "Alice", age: 8)]

for person in people {
    if person.name == "João" {
        print(person)
    }
}

/// Recupera o primeiro elemento da coleção que satisfaz a condição
let me = people.first(where: {$0.name == myName})
print(me ?? "Não estou no array")

/// Retorna se a coleção possui alguém com idade maior que 18
let hasAdult = people.contains(where: {$0.age >= 18})
print(hasAdult)

/// Retorna uma nova coleção com os elementos da condição incial que satisfazem a condição
let adults = people.filter({$0.age > 18})
print(adults)


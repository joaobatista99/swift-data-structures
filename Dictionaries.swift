//
//  Dictionaries.swift
//  
//
//  Created by João Victor Batista on 15/11/21.
//

import Foundation

/// Dicionário vazio
var intNames: [Int: String] = [:]

/// Dicionário Populado:
var countryNames: [String: String] = ["BR": "Brasil"]

/// Adição de valores e chaves no dicionário
intNames[1] = "Um"
intNames[2] = "Dois"

/// Retorna uma coleção com as chaves do dicionário
print(intNames.keys)

/// Retorna uma coleção com os valores do dicionário
print(intNames.values)

/// Acesso ao valor associoado à chave '1'
print(intNames[1] ?? "O dicionário não possui a chave '1'")
print(intNames[2] ?? "O dicionário não possui a chave '2'")

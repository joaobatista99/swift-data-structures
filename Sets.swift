//
//  Sets.swift
//  
//
//  Created by João Victor Batista on 15/11/21.
//

import Foundation

var musicGenresSet: Set<String> = ["Rock", "Rap", "MPB"]

var auxMusicGenresSet = Set<String>()

/// Adiciona novo elemento no set
auxMusicGenresSet.insert("Samba")
print(auxMusicGenresSet)

/// Retorna um novo set com os elementos em comum entre os dois sets
let intersectionSet = auxMusicGenresSet.intersection(musicGenresSet)
print(intersectionSet)

/// Retorna um novo set com a união entre dois sets
let unionSet = auxMusicGenresSet.union(musicGenresSet)
print(unionSet)

/// Retorna um novo set com a diferença entre 'musicGenresSet' e 'auxMusicGenresSet'
let diffSet = musicGenresSet.subtracting(auxMusicGenresSet)
print(diffSet)

/// Retorna se os sets não possuem algum elementos em comum
let isDisjoint = auxMusicGenresSet.isDisjoint(with: musicGenresSet)
print(isDisjoint)

/// Retorna se 'auxMusicGenresSet' está contido em 'musicGenresSet'
let isSubset = auxMusicGenresSet.isSubset(of: musicGenresSet)
print(isSubset)

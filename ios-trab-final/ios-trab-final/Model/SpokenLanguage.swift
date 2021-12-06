//
//  SpokenLanguage.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 05/12/21.
//

import Foundation

// MARK: - SpokenLanguage
class SpokenLanguage {
    let englishName, iso639_1, name: String

    init(englishName: String, iso639_1: String, name: String) {
        self.englishName = englishName
        self.iso639_1 = iso639_1
        self.name = name
    }
}

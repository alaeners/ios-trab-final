//
//  SpokenLanguage.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 05/12/21.
//

import Foundation

// MARK: - SpokenLanguage
class SpokenLanguage: Decodable {
    let englishName, iso639_1, name: String
    
    enum CodingKeys: String, CodingKey {
        case englishName = "english_name"
        case iso639_1 = "iso_639_1"
        case name
    }

    init(englishName: String, iso639_1: String, name: String) {
        self.englishName = englishName
        self.iso639_1 = iso639_1
        self.name = name
    }
}

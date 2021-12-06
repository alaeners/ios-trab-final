//
//  Genre.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 05/12/21.
//

import Foundation

// MARK: - Genre
class Genre: Decodable {
    let id: Int
    let name: String

    enum CodingKeys: String, CodingKey {
        case id
        case name
    }
        
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

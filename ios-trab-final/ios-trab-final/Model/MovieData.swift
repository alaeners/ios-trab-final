//
//  MovieData.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 05/12/21.
//

import Foundation

// MARK: - Result
class MovieData: Decodable {
    let id: Int?
    let posterPath: String?

    enum CodingKeys: String, CodingKey {
        case id
        case posterPath = "poster_path"
    }

    init(id: Int?, posterPath: String?) {
        self.id = id
        self.posterPath = posterPath
    }
}

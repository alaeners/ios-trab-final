//
//  MovieDataDetails.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 05/12/21.
//

import Foundation

class MovieDataDetails: Decodable {
    let id: Int?
    let originalTitle, overview: String?
    let posterPath: String?
    let releaseDate: String?
    let title: String?
    let voteAverage: Double?
    
    enum CodingKeys: String, CodingKey {
        case id
        case originalTitle = "original_title"
        case overview
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title
        case voteAverage = "vote_average"
    }

    init(id: Int?, originalTitle: String?, overview: String?,posterPath: String?, releaseDate: String?, title: String?, voteAverage: Double?) {
        self.id = id
        self.originalTitle = originalTitle
        self.overview = overview
        self.posterPath = posterPath
        self.releaseDate = releaseDate
        self.title = title
        self.voteAverage = voteAverage
    }
}

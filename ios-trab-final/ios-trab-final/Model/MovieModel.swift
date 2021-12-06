//
//  MovieModel.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 29/11/21.
//


import Foundation

// MARK: - Welcome
class MovieModel: Decodable {
    let page: Int
    let results: [MovieData]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }

    init(page: Int, results: [MovieData], totalPages: Int, totalResults: Int) {
        self.page = page
        self.results = results
        self.totalPages = totalPages
        self.totalResults = totalResults
    }
}

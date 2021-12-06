//
//  MovieDataDetails.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 05/12/21.
//

import Foundation

class MovieDataDetails {
    let adult: Bool
    let backdropPath: String
    let belongsToCollection: NSNull
    let budget: Int
    let genres: [Genre]
    let homepage: String
    let id: Int
    let imdbID, originalLanguage, originalTitle, overview: String
    let popularity: Double
    let posterPath: String
    let productionCompanies: [ProductionCompany]
    let productionCountries: [ProductionCountry]
    let releaseDate: String
    let revenue, runtime: Int
    let spokenLanguages: [SpokenLanguage]
    let status, tagline, title: String
    let video: Bool
    let voteAverage: Double
    let voteCount: Int

    init(adult: Bool, backdropPath: String, belongsToCollection: NSNull, budget: Int, genres: [Genre], homepage: String, id: Int, imdbID: String, originalLanguage: String, originalTitle: String, overview: String, popularity: Double, posterPath: String, productionCompanies: [ProductionCompany], productionCountries: [ProductionCountry], releaseDate: String, revenue: Int, runtime: Int, spokenLanguages: [SpokenLanguage], status: String, tagline: String, title: String, video: Bool, voteAverage: Double, voteCount: Int) {
        self.adult = adult
        self.backdropPath = backdropPath
        self.belongsToCollection = belongsToCollection
        self.budget = budget
        self.genres = genres
        self.homepage = homepage
        self.id = id
        self.imdbID = imdbID
        self.originalLanguage = originalLanguage
        self.originalTitle = originalTitle
        self.overview = overview
        self.popularity = popularity
        self.posterPath = posterPath
        self.productionCompanies = productionCompanies
        self.productionCountries = productionCountries
        self.releaseDate = releaseDate
        self.revenue = revenue
        self.runtime = runtime
        self.spokenLanguages = spokenLanguages
        self.status = status
        self.tagline = tagline
        self.title = title
        self.video = video
        self.voteAverage = voteAverage
        self.voteCount = voteCount
    }
}

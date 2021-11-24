//
//  MoviesAPI.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 24/11/21.
//

import Foundation

enum MoviesAPI: String {
    case movieRated = "https://www.themoviedb.org/movie/top-rated"
    case moviePerId = "https://www.themoviedb.org/movie/"
}

protocol EndPointType {
    var endpointUrl: URL? { get }
}


extension MoviesAPI: EndPointType {
    
    var endpointUrl: URL? {
        var url: URL?
        
        switch self {
        case .movieRated:
            url = URL(string: "https://www.themoviedb.org/movie/top-rated")
            
        case .moviePerId:
            url = URL(string: "https://www.themoviedb.org/movie/PASSAROIDAQUI")
            
        }
        return url
    }
}

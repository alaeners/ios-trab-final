//
//  ViewModel.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import Foundation
import Alamofire

class ViewModel {
    let token = "?api_key=a2476b7947306191bba091a7f75eb5eb"
    var baseURL = "https://api.themoviedb.org/3/movie/"
    var movieData: MovieData? = nil
    
    func fetchMovies(movieID: String) {
        baseURL = "https://api.themoviedb.org/3/movie/top_rated\(token)"
        if !movieID.isEmpty { baseURL = "https://api.themoviedb.org/3/movie/\(movieID)\(token)" }
        
        Alamofire.request(baseURL).responseJSON { response in
            switch response.result {
            case .success(let data):
                print(data)
            case .failure(let error):
                print(error)
            }
        }
    }
    func getInitialProps() -> InitialViewProps {
        InitialViewProps(img: movieData?.backdropPath ?? "")
    }
    
    func getDetailsProps() -> DetailViewProps {
        DetailViewProps()
    }
}


struct Movies {
    
}

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
    var movieModel: MovieModel? = nil
    var moviesData: [MovieData]? = nil
    var movieID: String
    
    init(movieID: String) {
        self.movieID = movieID
    }
    
    func fetchMovies(movieID: String, _ callBack: @escaping (MovieModel?, String?) -> Void) {
        baseURL = "https://api.themoviedb.org/3/movie/top_rated\(token)"
        if !movieID.isEmpty { baseURL = "https://api.themoviedb.org/3/movie/\(movieID)\(token)" }
        
        Alamofire.request(baseURL).responseJSON { response in
            guard let data = response.data, response.error == nil else { return  }

            switch response.result {
            case .success:
                do { self.movieModel = try JSONDecoder().decode(MovieModel.self, from: data) }
                catch { print(error) }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

    func setupData(model: MovieModel?) -> [MovieData]? {
        moviesData = model?.results ?? []
        return model?.results ?? nil
    }
    
    func getInitialProps(index: Int) -> InitialViewProps {
        InitialViewProps(img: moviesData?[index].backdropPath ?? "")
    }

    func getDetailsProps(index: Int) -> DetailViewProps {
        DetailViewProps(movieImg: moviesData?[index].backdropPath ?? "",
                        moveiTitle: moviesData?[index].title ?? "",
                        movieDesc: moviesData?[index].overview ?? "")
    }
}

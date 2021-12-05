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
    var movieID: String
    
    init(movieID: String) {
        self.movieID = movieID
    }
    
    func fetchMovies(movieID: String, _ callBack: @escaping ([MovieData]?, String?) -> Void) {
        baseURL = "https://api.themoviedb.org/3/movie/top_rated\(token)"
        if !movieID.isEmpty { baseURL = "https://api.themoviedb.org/3/movie/\(movieID)\(token)" }
        
        Alamofire.request(baseURL).responseJSON { response in
            guard let data = response.data, response.error == nil else { return  }

            switch response.result {
            case .success:
                do { self.movieModel = try JSONDecoder().decode(MovieModel.self, from: data) } catch { print(error) }
                callBack(self.setupData(), nil)
            case .failure(let error):
                callBack(nil, error.localizedDescription)
            }
        }
    }

    func setupData() -> [MovieData] {
        guard let safeMoviesData = movieModel?.results else { return []}
        return safeMoviesData
    }
    
    func getInitialProps(index: Int) -> InitialViewProps {
        InitialViewProps(img: setupData()[index].backdropPath)
    }

    func getDetailsProps(index: Int) -> DetailViewProps {
        DetailViewProps(movieImg: setupData()[index].backdropPath,
                        moveiTitle: setupData()[index].title,
                        movieDesc: setupData()[index].overview)
    }
}

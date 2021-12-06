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
    var moviePerID: MovieData? = nil
    
    func fetchAllMovies(_ callBack: @escaping ([MovieData]?, String?) -> Void) {
        baseURL = "https://api.themoviedb.org/3/movie/top_rated\(token)"
        
        Alamofire.request(baseURL).responseJSON { response in
            guard let data = response.data, response.error == nil else { return  }
            
            switch response.result {
            case .success:
                do { self.movieModel = try JSONDecoder().decode(MovieModel.self, from: data) } catch { print(error) }
                callBack(self.setupAllMovies(), nil)
            case .failure(let error):
                callBack(nil, error.localizedDescription)
            }
        }
    }
    
    func fetchMoviesPerID(movieID: String, _ callBack: @escaping (MovieData?, String?) -> MovieData) {
        baseURL = "https://api.themoviedb.org/3/movie/\(movieID)\(token)"
        
        Alamofire.request(baseURL).responseJSON { response in
            guard let data = response.data, response.error == nil else { return  }
            
            switch response.result {
            case .success:
                do { self.moviePerID = try JSONDecoder().decode(MovieData.self, from: data) } catch { print(error) }
                callBack(self.moviePerID, nil)
            case .failure(let error):
                callBack(nil, error.localizedDescription)
            }
        }
    }
    
    func setupAllMovies() -> [MovieData] {
        guard let safeMoviesData = movieModel?.results else { return []}
        return safeMoviesData
    }
    
    func getInitialProps(index: Int) -> InitialCollectionViewCellProps {
        InitialCollectionViewCellProps(imgPosterPath: setupAllMovies()[index].posterPath)
    }
    
    func getDetailsProps(moviePerID: MovieData) -> DetailViewProps {
        let rateConverted = String(moviePerID.voteAverage)
        return DetailViewProps(movieImg: moviePerID.posterPath,
                               moveiTitle: moviePerID.title,
                               movieDesc: moviePerID.overview,
                               movieYear: moviePerID.releaseDate,
                               movieRating: "\(rateConverted)/10")
    }
}

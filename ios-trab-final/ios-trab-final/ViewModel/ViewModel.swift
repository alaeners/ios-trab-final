//
//  ViewModel.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import Foundation
import Alamofire

class ViewModel {
    func fetchMovies(url: String, movieID: String) {
        Alamofire.request(url, method: .get, encoding: JSONEncoding.default).responseJSON { response in
            switch response.result {
            case .success(let jsonData):
                print(jsonData)
                DispatchQueue.main.async {
                    
                    //usar o resultado em algo
                    
                }
            case .failure(let error):
                print(error)
                //mandar dar uma nova tentativa aqui
            }
        }
    }
    
    func getInitialProps() -> InitialViewProps {
        InitialViewProps()
    }
    
    func getDetailsProps() -> DetailViewProps {
        DetailViewProps()
    }
}

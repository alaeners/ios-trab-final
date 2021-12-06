//
//  DetailViewProps.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import Foundation
import UIKit

class DetailViewProps {
    var image: UIImage?
    var title: String
    var description: String
    var year: String
    var rating: String
    
    init(movieImg: UIImage,
         movieTitle: String,
         movieDesc: String,
         movieYear: String,
         movieRating: String) {
        image = movieImg
        title = movieTitle
        description = movieDesc
        year = movieYear
        rating = movieRating
    }
    
    init() {
        image = UIImage()
        title = String()
        description = String()
        year = String()
        rating = String()
    }
}

//
//  InitialCollectionViewCellProps.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import Foundation
import UIKit

class InitialCollectionViewCellProps {
    var imageBasePath: String = "https://image.tmdb.org/t/p/w500"
    
    init(imgPosterPath: String) {
        imageBasePath = "\(imageBasePath)\(imgPosterPath)"
    }
}

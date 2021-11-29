//
//  DetailViewProps.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import Foundation

class DetailViewProps {
    var image: String
    var title: String
    var description: String
    
    init(movieImg: String, moveiTitle: String, movieDesc: String) {
        image = movieImg
        title = moveiTitle
        description = movieDesc
    }
}

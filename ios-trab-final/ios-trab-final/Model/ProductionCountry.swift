//
//  ProductionCountry.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 05/12/21.
//

import Foundation

// MARK: - ProductionCountry
class ProductionCountry {
    let iso3166_1, name: String

    init(iso3166_1: String, name: String) {
        self.iso3166_1 = iso3166_1
        self.name = name
    }
}

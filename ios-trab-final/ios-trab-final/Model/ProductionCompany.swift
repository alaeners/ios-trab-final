//
//  ProductionCompany.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 05/12/21.
//

import Foundation

// MARK: - ProductionCompany
class ProductionCompany {
    let id: Int
    let logoPath, name, originCountry: String

    init(id: Int, logoPath: String, name: String, originCountry: String) {
        self.id = id
        self.logoPath = logoPath
        self.name = name
        self.originCountry = originCountry
    }
}

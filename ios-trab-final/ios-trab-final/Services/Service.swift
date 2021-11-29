//
//  Service.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 29/11/21.
//

import Foundation

import UIKit

class Movie {
 var title: String
 var oreview: String

 public init(title: String, oreview: String) {
     self.title = title
     self.oreview = oreview
 }

 public init?(json: [String: Any]) {
     guard
         let title = json["title"] as? String,
         let oreview = json["oreview"] as? String else {
             return nil

     }

     self.title = title
     self.oreview = oreview
 }
}

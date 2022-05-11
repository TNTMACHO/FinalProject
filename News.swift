//
//  News.swift
//  Most Popular News
//
//  Created by Manav Tandon on 05/06/22.
//   
//

// Data Model for News

import Foundation

struct News : Codable {
    let results : [Results]?
}
struct Results  : Codable {
    let url : String?
    let byline : String?
    let title : String?
    let published_date : String?
}

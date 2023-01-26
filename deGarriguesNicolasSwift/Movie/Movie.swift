//
//  Movie.swift
//  deGarriguesNicolasSwift
//
//  Created by Nicolas de Garrigues on 26/01/2023.
//

import Foundation

struct Movie: Decodable {
    let title: String
    let description: String
    let rating: Double
    let poster: String
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case description = "overview"
        case rating = "vote_average"
        case poster = "poster_path"
    }
}

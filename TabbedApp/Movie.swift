//
//  Movie.swift
//  TabbedApp
//
//  Created by Claire Reynaud on 19/03/2018.
//  Copyright © 2018 Claire Reynaud EIRL. All rights reserved.
//

import Foundation

class Movie: Codable, CustomStringConvertible {
    
    enum CodingKeys: String, CodingKey {
        case title
        case overview
        case voteAverage = "vote_average"
        case releaseDate = "release_date"
    }
    
    var title = ""
    var overview = ""
    var voteAverage = 0.0
    var releaseDate = Date()
    
    static func movies() -> [Movie] {
        if let data = JSONHelper.jsonData(fromJSONFile: "BestMovie") {
            let decoder = JSONDecoder()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            dateFormatter.timeZone = TimeZone(identifier: "GMT")
            decoder.dateDecodingStrategy = .formatted(dateFormatter)
            do {
                let movies = try decoder.decode([Movie].self, from: data)
                return movies
            } catch {
                print(error)
            }
        }
        return [Movie]()
    }
    
    var description: String {
        return "\(title) - \(releaseDate) - \(voteAverage) - \(overview)"
    }
}

//
//  FilmDetay.swift
//  filmKitabi
//
//  Created by muhammet on 30.03.2022.
//

import Foundation

struct FilmDetay : Codable{
    let title : String
    let year : String
    let genre : String
    let writer : String
    let actors : String
    let plot : String
    let awards : String
    let poster : String
    let metascore : String
    let imdbRating : String
    let imdbId: String
    let runtime : String
    let released : String
    
    private enum CodingKeys : String , CodingKey{
        case title = "Title"
        case year = "Year"
        case genre = "Genre"
        case writer = "Writer"
        case actors = "Actors"
        case plot = "Plot"
        case awards = "Awards"
        case poster = "Poster"
        case metascore = "Metascore"
        case imdbRating = "imdbRating"
        case imdbId = "imdbID"
        case runtime = "Runtime"
        case released = "Released"
        
        
    }
    
}

//
//  MovieInfo.swift
//  Assignment-15
//
//  Created by Eka Kelenjeridze on 03.11.23.
//

import UIKit

enum MovieGenre: String {
    case action = "Action"
    case adventure = "Adventure"
    case horror = "Horror"
    case comedy = "Comedy"
}

struct MovieInfo {
    let image: UIImage?
    let title: String
    let genre: MovieGenre
    var rating: Double
    //    var addToFavorites: Bool
    
    init(image: UIImage?, title: String, genre: MovieGenre, rating: Double) {
        self.image = image
        self.title = title
        self.genre = genre
        self.rating = rating
        //        self.addToFavorites = addToFavorites
    }
    
    static let nowOnCinema = [
        MovieInfo(
            image: UIImage(named: "TheBatman"),
            title: "The Batman", genre: .action,
            rating: 8.1
        ),
        MovieInfo(
            image: UIImage(named: "Uncharted"),
            title: "Uncharted",
            genre: .adventure,
            rating: 7.9
        ),
        MovieInfo(
            image: UIImage(named: "TheExorcismOfGod"),
            title: "The Exorcism Of God",
            genre: .horror,
            rating: 5.6
        ),
        MovieInfo(
            image: UIImage(named: "TurningRed"),
            title: "Turning Red",
            genre: .comedy,
            rating: 7.1
        ),
        MovieInfo(
            image: UIImage(named: "SpiderManNoWayHome"),
            title: "Spider-Man: No Way Home",
            genre: .action,
            rating: 8.1
        ),
        MovieInfo(
            image: UIImage(named: "Morbius"),
            title: "Morbius",
            genre: .action,
            rating: 5.3
        )
    ]
}

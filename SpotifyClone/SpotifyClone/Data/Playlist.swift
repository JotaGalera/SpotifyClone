//
//  Playlist.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 07/02/2021.
//

import Foundation

struct Playlist: Identifiable {
    var id = UUID()
    
    var name: String
    var image: String
    var description: String
    var likes: Int
    var lenght: String
    var isPersonalized: Bool
    var songs: [Song]
}

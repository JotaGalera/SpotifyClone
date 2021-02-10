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
    var isPersonalized: Bool
}

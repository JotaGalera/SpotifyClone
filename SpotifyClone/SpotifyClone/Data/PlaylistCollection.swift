//
//  PlaylistCollection.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 07/02/2021.
//

import Foundation

struct PlaylistCollection: Identifiable {
    var id = UUID()
    
    var title: String
    var playlists: [Playlist]
}

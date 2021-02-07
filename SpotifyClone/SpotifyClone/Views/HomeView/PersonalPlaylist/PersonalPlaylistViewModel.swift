//
//  PersonalPlaylistViewModel.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 07/02/2021.
//

import Foundation

class PersonalPlaylistViewModel: ObservableObject {
    var playlists: [Playlist]
    
    init(playlists: [Playlist] = Helper.personalPlaylist) {
        self.playlists = playlists
    }
}

//
//  ReproducePlaylistViewModel.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 14/2/21.
//

import Foundation

class ReproducePlaylistViewModel: ObservableObject {
    var playlist: Playlist
    
    init(playlist: Playlist) {
        self.playlist = playlist
    }
}

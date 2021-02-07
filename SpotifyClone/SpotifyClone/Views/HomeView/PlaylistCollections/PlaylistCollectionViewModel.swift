//
//  PlaylistCollectionViewModel.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 07/02/2021.
//

import Foundation

class PlaylistCollectionViewModel: ObservableObject {
    var collections: [Playlist]
    
    init(collections: [Playlist]) {
        self.collections = collections
    }
}

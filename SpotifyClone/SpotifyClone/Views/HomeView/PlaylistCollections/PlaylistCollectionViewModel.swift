//
//  PlaylistCollectionViewModel.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 07/02/2021.
//

import Foundation

class PlaylistCollectionViewModel: ObservableObject {
    var collections: PlaylistCollection
    var collections2: [PlaylistCollection]
    
    init(collections: PlaylistCollection = Helper.collectionPersonalPlaylist,
         collections2: [PlaylistCollection] = [Helper.collectionPersonalPlaylist, Helper.collectionPopularPlaylist]) {
        self.collections = collections
        self.collections2 = collections2
    }
}

//
//  PlaylistCollectionViewModel.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 07/02/2021.
//

import Foundation

class PlaylistCollectionViewModel: ObservableObject {
    var personalCollection: PlaylistCollection
    var collections: [PlaylistCollection]
    
    init(personalCollection: PlaylistCollection = Helper.collectionPersonalPlaylist,
         collections: [PlaylistCollection] = [Helper.collectionPopPlaylist, Helper.collectionPopularPlaylist]) {
        self.personalCollection = personalCollection
        self.collections = collections
    }
}

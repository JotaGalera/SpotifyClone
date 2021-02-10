//
//  PodcastViewModel.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 10/2/21.
//

import Foundation

class PodcastViewModel: ObservableObject {
    var podcasts: PodcastCollection
    
    init(podcasts: PodcastCollection = Helper.collectionPodcast) {
        self.podcasts = podcasts
    }
}

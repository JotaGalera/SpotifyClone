//
//  PodcastCollection.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 10/2/21.
//

import Foundation

struct PodcastCollection {
    var id = UUID()
    
    var title: String
    var podcasts: [Podcast]
}

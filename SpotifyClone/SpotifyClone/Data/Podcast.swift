//
//  Podcast.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 10/2/21.
//

import Foundation

struct Podcast: Identifiable {
    var id = UUID()
    
    var name: String
    var image: String
    var broadcastDate: BroadcastDate?
    var lenght: String?
}

enum BroadcastDate: String {
    case Mon
    case Tue
    case Wed
    case Thu
    case Fri
    case Sat
    case Sun
}

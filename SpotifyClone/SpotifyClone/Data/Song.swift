//
//  Song.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 12/2/21.
//

import Foundation

struct Song: Identifiable {
    var id = UUID()
    
    var name: String
    var artists: String
    var image: String
}

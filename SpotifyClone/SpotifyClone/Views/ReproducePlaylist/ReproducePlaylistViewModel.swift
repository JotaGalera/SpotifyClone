//
//  ReproducePlaylistViewModel.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 14/2/21.
//

import Foundation
import SwiftUI

class ReproducePlaylistViewModel: ObservableObject {
    var playlist: Playlist
    
    init(playlist: Playlist) {
        self.playlist = playlist
    }
    
    func getPrimaryColorOfTheImage() -> UIColor {
        return UIImage(named: playlist.image)?.averageColor ?? UIColor(Color("black"))
    }
}

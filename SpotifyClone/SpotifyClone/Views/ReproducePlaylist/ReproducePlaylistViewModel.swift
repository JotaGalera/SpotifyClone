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
    var primaryColorOfTheImage: UIColor
    
    init(playlist: Playlist) {
        self.playlist = playlist
        primaryColorOfTheImage = UIImage(named: playlist.image)?.averageColor ?? UIColor(Color("black"))
    }
    
    func getPrimaryColorOfTheImage() -> UIColor {
        return primaryColorOfTheImage
    }
}

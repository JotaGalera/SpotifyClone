//
//  PlaylistCollectionView.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 07/02/2021.
//

import SwiftUI

struct PlaylistCollectionView: View {
    var playlistCollectionVM = PlaylistCollectionViewModel()
    
    var body: some View {
        VStack {
            ForEach(0..<playlistCollectionVM.collections2.count) { index in
                PlaylistCollectionsRow(titleCollection: playlistCollectionVM.collections2[index].title,
                                       playlists: playlistCollectionVM.collections2[index].playlists)
            }
            
        }
    }
}

struct PlaylistCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            PlaylistCollectionView()
        }
    }
}

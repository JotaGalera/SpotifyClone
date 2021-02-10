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
            ForEach(0..<playlistCollectionVM.collections.count) { index in
                PlaylistCollectionsRow(titleCollection: playlistCollectionVM.collections[index].title,
                                       playlists: playlistCollectionVM.collections[index].playlists)
            }
            
        }
        .padding(.bottom, 20)
    }
}

struct PersonalPlaylistCollectionView: View {
    var playlistCollectionVM = PlaylistCollectionViewModel()
    
    var body: some View {
        VStack {
            PlaylistCollectionsRow(titleCollection: playlistCollectionVM.personalCollection.title,
                                   playlists: playlistCollectionVM.personalCollection.playlists)
        }
        .padding(.bottom, 20)
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

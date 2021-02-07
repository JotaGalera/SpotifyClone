//
//  PlaylistCollections.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 07/02/2021.
//

import SwiftUI

struct PlaylistCollectionsRow: View {
    var playlistCollectionVM = PlaylistCollectionViewModel()
    var titleCollection: String
    var playlists: [Playlist]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(titleCollection)
                .modifier(TitleText())
                .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(0..<playlists.count)
                    { index in
                        PlaylistCollectionCell(image: playlists[index].image,
                                               name: playlists[index].name,
                                               isPersonalized: playlists[index].isPersonalized)
                            .frame(width: UIScreen.screenWidth/3)
                    }
                }
            }
            .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight / 6)
        }
        .foregroundColor(.white)
    }
}

struct PlaylistCollections_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            PlaylistCollectionsRow(titleCollection: "Recently Played",
                                   playlists: Helper.personalPlaylistArray)
        }
    }
}

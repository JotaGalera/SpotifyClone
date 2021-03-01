//
//  PlaylistContentRow.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 11/2/21.
//

import SwiftUI

struct PlaylistContentRow: View {
    var playlist: Playlist
    
    var body: some View {
        GeometryReader { geometry in
            LazyVStack(spacing:0) {
                ForEach(0..<playlist.songs.count) { index in
                    NavigationLink(
                        destination: AudioPlayerView(playlist: playlist, selectedSongPosition: index),
                        label: {
                            PlaylistContentCell(image: playlist.songs[index].image,
                                                name: playlist.songs[index].name,
                                                artist: playlist.songs[index].artists)
                                .frame(width: geometry.size.width, height: geometry.size.height/10)
                        })
                }
            }
        }
    }
}

struct PlaylistContentRow_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white, Color(UIColor.backgroundBlack!)]), startPoint: .top, endPoint: .center)
                .edgesIgnoringSafeArea(.all)
            PlaylistContentRow(playlist: Helper.popPlaylist1)
        }
    }
}

//
//  PlaylistContentRow.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 11/2/21.
//

import SwiftUI

struct PlaylistContentRow: View {
    var songs: [Song]
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing:0) {
                ForEach(songs) { song in
                    PlaylistContentCell(image: song.image, name: song.name, artist: song.artists)
                        .frame(width: geometry.size.width, height: geometry.size.height/10)
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
            PlaylistContentRow(songs: Helper.queenSongArray)
        }
    }
}

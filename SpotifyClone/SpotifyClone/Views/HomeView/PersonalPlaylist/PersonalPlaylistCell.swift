//
//  personalPlaylistCell.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 04/02/2021.
//

import SwiftUI

struct PersonalPlaylistCell: View {
    var playlist: Playlist
    
    var body: some View {
        NavigationLink(
            destination: ReproducePlaylistView(),
            label: {
                HStack {
                    GeometryReader { geometry in
                        ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .foregroundColor(Color(UIColor.darkGray!))
                                HStack {
                                    Image(playlist.image)
                                        .resizable()
                                        .cornerRadius(5.0)
                                        .frame(width: geometry.size.width/2.7, height: geometry.size.height)
                                    Spacer().frame(width: 8)
                                    Text(playlist.name)
                                        .foregroundColor(.white)
                                        .bold()
                                    Spacer()
                                }
                        }
                        .frame(width: geometry.size.width, height: geometry.size.height)
                    }
                }
            }
        )
    }
}

struct PersonalPlaylistCell_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            PersonalPlaylistCell(playlist: Helper.personalPlaylist1)
        }
    }
}

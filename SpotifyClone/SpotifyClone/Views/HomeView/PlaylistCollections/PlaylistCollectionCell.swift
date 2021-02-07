//
//  PlaylistCollectionCell.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 07/02/2021.
//

import SwiftUI

struct PlaylistCollectionCell: View {
    var image: String
    var name: String
    var isPersonalized: Bool
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                if isPersonalized {
                    Image(image)
                        .resizable()
                        .cornerRadius(100)
                } else {
                    Image(image)
                        .resizable()
                }
                
                Text(name)
                    .font(.footnote)
                    
            }
            .padding(.leading)
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color.clear)
        }
    }
}

struct PlaylistCollectionCell_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistCollectionCell(image: "likedSong", name: "Liked Songs", isPersonalized: true)
    }
}

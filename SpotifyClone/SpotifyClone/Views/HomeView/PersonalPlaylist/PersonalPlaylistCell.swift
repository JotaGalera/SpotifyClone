//
//  personalPlaylistCell.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 04/02/2021.
//

import SwiftUI

struct PersonalPlaylistCell: View {
    var image: String
    var name: String
    
    var body: some View {
        HStack {
            GeometryReader { geometry in
                ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color(UIColor.darkGray!))
                        HStack {
                            Image(image)
                                .resizable()
                                .cornerRadius(5.0)
                                .frame(width: geometry.size.width/2.7, height: geometry.size.height)
                            Spacer().frame(width: 8)
                            Text(name)
                                .foregroundColor(.white)
                                .bold()
                            Spacer()
                        }
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}

struct PersonalPlaylistCell_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            PersonalPlaylistCell(image: "likedSong", name: "Liked Songs")
        }
    }
}

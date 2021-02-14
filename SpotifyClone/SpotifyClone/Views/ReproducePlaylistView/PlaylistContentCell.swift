//
//  PlaylistContentCell.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 11/2/21.
//

import SwiftUI

struct PlaylistContentCell: View {
    var image: String
    var name: String
    var artist: String
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Image(image)
                    .resizable()
                    .frame(width: geometry.size.width/6,
                           height: geometry.size.width/6)
            
                VStack(alignment: .leading) {
                    Text(name)
                        .bold()
                    Text(artist)
                        .font(.subheadline)
                        .foregroundColor(Color(UIColor.lightGray))
                }
                
                Spacer()
                
                Button(action: {
                    // TODO: Open more actions
                }, label: {
                    Image(systemName: "ellipsis")
                })
            }
            .padding(.leading)
            .padding(.trailing)
            .frame(width: geometry.size.width)
            .foregroundColor(.white)
        }
    }
}

struct PlaylistContentCell_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white, Color(UIColor.backgroundBlack!)]), startPoint: .top, endPoint: .center)
                .edgesIgnoringSafeArea(.all)
            PlaylistContentCell(image: Helper.izalSong1.image,
                                name: Helper.izalSong1.name,
                                artist: Helper.izalSong1.artists)
        }
    }
}

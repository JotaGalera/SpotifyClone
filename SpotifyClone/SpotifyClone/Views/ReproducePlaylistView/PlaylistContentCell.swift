//
//  PlaylistContentCell.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 11/2/21.
//

import SwiftUI

struct PlaylistContentCell: View {
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Image("queen")
                    .resizable()
                    .frame(width: geometry.size.width/6,
                           height: geometry.size.width/6)
            
                VStack(alignment: .leading) {
                    Text("Death On Two Legs")
                        .bold()
                    Text("Death On Two Legs")
                }
                
                Spacer()
                
                Button(action: {
                    // TODO: Open more actions
                }, label: {
                    Image(systemName: "ellipsis")
                })
            }
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
            PlaylistContentCell()
        }
    }
}

//
//  ReproducePlaylistView.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 11/2/21.
//

import SwiftUI

struct ReproducePlaylistView: View {
    var body: some View {
        VStack {
            GeometryReader { geometry in
                ScrollView() {
                    GeometryReader { geometry in
                        Image("queen")
                            .resizable()
                            .padding()
                            .frame(width: geometry.size.width)
                            .shadow(color: .black, radius: 10, x: 0, y: 10)
                    }
                    .frame(width: 320, height: 320)
                    
                    PlaylistContentView()
                    
                    PlaylistContentRow()
                        .frame(width: geometry.size.width)
                }
                .frame(width: geometry.size.width)
            }
        }
        .frame(width: UIScreen.screenWidth)
    }
}

struct ReproducePlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white, Color(UIColor.backgroundBlack!)]), startPoint: .top, endPoint: .center)
                .edgesIgnoringSafeArea(.all)
            ReproducePlaylistView()
        }
    }
}

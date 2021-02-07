//
//  PlaylistCollections.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 07/02/2021.
//

import SwiftUI

struct PlaylistCollectionsView: View {
    var titleSection: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(titleSection)
                .modifier(TitleText())
                .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    PlaylistCollectionCell(image: "likedSong", name: "Liked Songs")
                        
                    PlaylistCollectionCell(image: "mostPopular", name: "Most Popular Songs")
                        
                    PlaylistCollectionCell(image: "workFromHome", name: "Work From Home")
                        
                }
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight / 6)
            }
        }
        .foregroundColor(.white)
    }
}

struct PlaylistCollections_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            PlaylistCollectionsView(titleSection: "Recently played")
        }
    }
}

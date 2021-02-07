//
//  PersonalPlaylistView.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 04/02/2021.
//

import SwiftUI

struct PersonalPlaylistView: View {
    var body: some View {
        VStack {
            HStack {
                PersonalPlaylistCell(image: "likedSong", name: "Liked Song")
                PersonalPlaylistCell(image: "queen", name: "Queen")
            }
            HStack {
                PersonalPlaylistCell(image: "greenDay", name: "Green Day")
                PersonalPlaylistCell(image: "izal", name: "Izal")
            }
            HStack {
                PersonalPlaylistCell(image: "mostPopular", name: "Most Popular")
                PersonalPlaylistCell(image: "workFromHome", name: "Work From Home")
            }
        }
        .padding()
        .frame(width: UIScreen.screenWidth,
               height: UIScreen.screenHeight /
                (UIDevice.current.userInterfaceIdiom == .phone ? 3.5 : 2.5))
    }
}

struct PersonalPlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            PersonalPlaylistView()
        }
    }
}

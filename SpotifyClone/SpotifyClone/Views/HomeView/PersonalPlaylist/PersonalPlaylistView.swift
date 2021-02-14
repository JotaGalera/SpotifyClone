//
//  PersonalPlaylistView.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 04/02/2021.
//

import SwiftUI

struct PersonalPlaylistView: View {
    @StateObject var personalPlaylistVM = PersonalPlaylistViewModel()
    
    var body: some View {
        VStack {
            ForEach(0..<personalPlaylistVM.playlists.count) { index in
                if index % 2 == 0 {
                    HStack {
                        PersonalPlaylistCell(playlist: personalPlaylistVM.playlists[index])
                        PersonalPlaylistCell(playlist: personalPlaylistVM.playlists[index+1])
                    }
                }
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

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
                PersonalPlaylistCell()
                PersonalPlaylistCell()
            }
            HStack {
                PersonalPlaylistCell()
                PersonalPlaylistCell()
            }
            HStack {
                PersonalPlaylistCell()
                PersonalPlaylistCell()
            }
        }
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

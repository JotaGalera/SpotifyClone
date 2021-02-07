//
//  personalPlaylistCell.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 04/02/2021.
//

import SwiftUI

struct PersonalPlaylistCell: View {
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(Color(UIColor.darkGray!))
                HStack {
                    Image("music1")
                        .resizable()
                        .cornerRadius(5.0)
                        .frame(width: 70, height: 70)
                    Spacer().frame(width: 8)
                    Text("First playlist")
                        .foregroundColor(.white)
                        .bold()
                    Spacer()
                }
            }
            .frame(width: UIScreen.screenWidth / 2.2, height: 70)
        }
    }
}

struct PersonalPlaylistCell_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            PersonalPlaylistCell()
        }
    }
}

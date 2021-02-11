//
//  PlaylistContentRow.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 11/2/21.
//

import SwiftUI

struct PlaylistContentRow: View {
    var body: some View {
        GeometryReader { geometry in
            PlaylistContentCell()
                .padding()
                .frame(width: geometry.size.width)
        }
    }
}

struct PlaylistContentRow_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white, Color(UIColor.backgroundBlack!)]), startPoint: .top, endPoint: .center)
                .edgesIgnoringSafeArea(.all)
            PlaylistContentRow()
        }
    }
}

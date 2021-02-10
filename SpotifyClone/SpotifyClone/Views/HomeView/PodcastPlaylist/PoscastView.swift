//
//  PoscastView.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 10/2/21.
//

import SwiftUI

struct PoscastView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("New episodes")
                .modifier(TitleText())
                .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    PodcastCell()
                        .frame(width: UIScreen.screenWidth/2.3, height: UIScreen.screenWidth/2.3)
                    PodcastCell()
                        .frame(width: UIScreen.screenWidth/2.3, height: UIScreen.screenWidth/2.3)
                }
            }
            .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight / 5)
        }
        .foregroundColor(.white)
        .padding(.bottom, 20)
    }
}

struct PoscastView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            PoscastView()
        }
    }
}

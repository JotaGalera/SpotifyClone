//
//  PodcastView.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 10/2/21.
//

import SwiftUI

struct PodcastView: View {
    var podcastVM: PodcastViewModel = PodcastViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(podcastVM.podcasts.title)
                .modifier(TitleText())
                .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(podcastVM.podcasts.podcasts) { podcast in
                        PodcastCell(image: podcast.image,
                                    name: podcast.name,
                                    broadcastDate: podcast.broadcastDate ?? nil,
                                    lenght: podcast.lenght)
                            .frame(width: UIScreen.screenWidth/2.5, height: UIScreen.screenWidth/1.8 )
                            .padding(.leading)
                    }
                }
            }
            .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight / 4)
        }
        .foregroundColor(.white)
        .padding(.bottom, 20)
    }
}

struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            PodcastView()
        }
    }
}

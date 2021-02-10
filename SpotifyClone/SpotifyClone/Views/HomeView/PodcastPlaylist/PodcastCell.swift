//
//  PodcastCell.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 10/2/21.
//

import SwiftUI

struct PodcastCell: View {
    var image: String
    var name: String
    var broadcastDate: BroadcastDate?
    var lenght: String?
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                Image(image)
                    .resizable()
                    .cornerRadius(geometry.size.width/20)
                    .frame(width: geometry.size.width, height: geometry.size.height - 50)
                
                if broadcastDate != nil, lenght != nil {
                    Text(name)
                        .font(.footnote)
                        .bold()
                    
                    Text("\(broadcastDate?.rawValue ?? "") · \(lenght ?? "")")
                        .font(.footnote)
                }
            }
            
            .background(Color.clear)
        }
    }
}

struct PodcastCell_Previews: PreviewProvider {
    static var previews: some View {
        PodcastCell(image: "swiftPodcast", name: "Podcast", broadcastDate: .Sat, lenght: "50min")
    }
}

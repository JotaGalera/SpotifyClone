//
//  PodcastCell.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 10/2/21.
//

import SwiftUI

struct PodcastCell: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                Image("workFromHome")
                    .resizable()
                    .cornerRadius(geometry.size.width/20)
                    
                
                Text("Nadie Sabe Nada")
                    .font(.footnote)
                    .bold()
            }
            .padding(.leading)
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color.clear)
        }
    }
}

struct PodcastCell_Previews: PreviewProvider {
    static var previews: some View {
        PodcastCell()
    }
}

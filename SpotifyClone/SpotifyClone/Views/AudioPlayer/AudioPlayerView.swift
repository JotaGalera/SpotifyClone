//
//  AudioPlayerView.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 25/2/21.
//

import SwiftUI

struct AudioPlayerView: View {
    var body: some View {
        VStack {
            Spacer()
            
            AudioPlayerHeaderView()
                
            Spacer()
            
            AudioPlayerContentView()
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight/1.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            AudioPlayerFooterView()
            
            Spacer()
        }
        .foregroundColor(.white)
        .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight)
        
    }
}

struct AudioPlayerHeaderView: View {
    var body: some View {
        HStack {
            Button(action: {
                //
            }, label: {
                Image(systemName: "chevron.down")
            })
            
            Spacer()
            
            Text("Playlist name")
                .font(.footnote)
            
            Spacer()
            
            Button(action: {
                //
            }, label: {
                Image(systemName: "ellipsis")
            })
        }
        .padding()
    }
}

struct AudioPlayerFooterView: View {
    var body: some View {
        HStack {
            Button(action: {
                //
            }, label: {
                Image(systemName: "hifispeaker")
            })
            
            Spacer()
            
            Button(action: {
                //
            }, label: {
                Image(systemName: "text.insert")
            })
        }.padding()
    }
}

struct AudioPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(UIColor(.gray)), Color(UIColor.darkGray!)]),
                           startPoint: .top,
                           endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            AudioPlayerView()
        }
    }
}

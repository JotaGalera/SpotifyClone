//
//  PlaylistContentView.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 11/2/21.
//

import SwiftUI

struct PlaylistContentView: View {
    var description: String
    var likes: Int
    var lenght: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(description)
                .font(.footnote)
            HStack {
                Image("spotifyIcon")
                    .resizable()
                    .opacity(1.0)
                    .frame(width: 20, height: 20)
                
                Text("Spotify")
                    .font(.footnote)
                    .bold()
            }
            HStack {
                VStack(alignment: .leading, spacing: 15) {
                    Text("\(likes) · \(lenght)")
                        .font(.footnote)
                    
                    HStack(spacing: 30) {
                        Button(action: {
                            // TODO: Add to the library
                        }, label: {
                            Image(systemName: "heart")
                                .resizable()
                                .frame(width: 20, height: 20)
                        })
                        
                        Button(action: {
                            // TODO: Download
                        }, label: {
                            Image(systemName: "arrow.down.circle")
                                .resizable()
                                .frame(width: 20, height: 20)
                        })
                        
                        Button(action: {
                            // TODO: Open more actions
                        }, label: {
                            Image(systemName: "ellipsis")
                                .resizable()
                                .frame(width: 20, height: 5)
                        })
                    }
                }
                
                Spacer()
                
                PlayButtonView()
            }
        }
        .padding()
        .foregroundColor(.white)
        .frame(width: UIScreen.screenWidth)
    }
}



struct PlayButtonView: View {
    var body: some View {
        Button(action: {
            // TODO: Open more actions
        }, label: {
            ZStack {
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Image(systemName: "play.circle.fill")
                    .resizable()
                    .foregroundColor(.green)
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                ZStack {
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Image(systemName: "shuffle")
                        .resizable()
                        .foregroundColor(.green)
                        .frame(width: 10, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                .offset(x: 20, y: 20)
                
            }
        })
        
    }
}

struct PlaylistContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white, Color(UIColor.backgroundBlack!)]), startPoint: .top, endPoint: .center)
                .edgesIgnoringSafeArea(.all)
            PlaylistContentView(description: "The best of the pop",
                                likes: 145000,
                                lenght: "1h 29m")
        }
    }
}

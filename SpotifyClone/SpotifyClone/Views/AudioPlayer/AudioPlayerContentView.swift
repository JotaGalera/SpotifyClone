//
//  AudioPlayerContentView.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 25/2/21.
//

import SwiftUI

struct AudioPlayerContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Image("izalSong")
                    .resizable()
                    .frame(width: geometry.size.width/1.1, height: geometry.size.width/1.1)
                    .shadow(radius: 10)
            
                HStack {
                    VStack(alignment: .leading) {
                        Text("Autoterapia")
                            .font(.custom("HelveticaNeue-Light", size: 26))
                            .bold()
                        
                        Text("IZAL")
                            .font(.subheadline)
                    }
                    Spacer()
                    
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                .padding()
                            
                ZStack(alignment: .leading) {
                    Capsule().fill(Color.white.opacity(0.08))
                        .frame(width: geometry.size.width/1.1, height: 6)
                    
                    Capsule().fill(Color.green)
                        .frame(width: geometry.size.width/1.1/2, height: 6)
                    
                    Circle()
                        .frame(width: 6*2.5, height: 6*2.5)
                        .padding(.leading, geometry.size.width/2.3)
                }
                
                HStack {
                    Text("2:50")
                        .font(.footnote)
                    
                    Spacer()
                    
                    Text("-2:50")
                        .font(.footnote)
                }
                .padding(.leading)
                .padding(.trailing)
                
                HStack {
                    Button(action: {
                        //
                    }, label: {
                        Image(systemName: "shuffle")
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        //
                    }, label: {
                        Image(systemName: "backward.end.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        //
                    }, label: {
                        Image(systemName: "play.circle.fill")
                            .resizable()
                            .frame(width: 60, height: 60)
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        //
                    }, label: {
                        Image(systemName: "forward.end.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        //
                    }, label: {
                        Image(systemName: "repeat")
                    })
                }
                .padding()
            }
            
        }
    }
}

struct AudioPlayerContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(UIColor(.gray)), Color(UIColor.darkGray!)]),
                           startPoint: .top,
                           endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            AudioPlayerContentView()
                .foregroundColor(.white)
        }
    }
}

//
//  HomeView.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 04/02/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            RadialGradient(gradient: Gradient(colors: [Color("lightPurple"), .black]),
                           center: .topLeading,
                           startRadius: 100,
                           endRadius: 500)
                .offset(y: -180.0)
            
            VStack {
                HStack {
                    Text("Good Evening")
                        .font(.system(size: 25))
                        .bold()
                        
                    Spacer()
                    
                    Button(action: {
                        // TODO : open setting view
                    }, label: {
                        Image(systemName: "gearshape")
                            .font(.system(size: 23))
                    })
                }
                .foregroundColor(.white)
                .padding(.top,25)
                .padding()
                
                PersonalPlaylistView()
                
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    let gradientColors = Gradient(colors: [.blue, .black])
        
    static var previews: some View {
        ZStack {
            HomeView()
        }
    }
}
 
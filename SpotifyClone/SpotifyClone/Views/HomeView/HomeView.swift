//
//  HomeView.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 04/02/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(UIColor.backgroundBlack!).edgesIgnoringSafeArea(.all)
                HomeContentView()
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
        
    }
}

struct HomeContentView: View {
    var backgroundColor: Gradient = Gradient(colors: [Color("lightPurple"), Color(UIColor.backgroundBlack!)])
    
    var body: some View {
        ScrollView {
            ZStack {
                RadialGradient(gradient: backgroundColor,
                               center: .topLeading,
                               startRadius: 100,
                               endRadius: 500)
                    .offset(y: -180.0)
                
                VStack {
                    HStack {
                        Text("Good Evening")
                            .modifier(TitleText())
                            
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
                    
                    PersonalPlaylistCollectionView()
                        
                    PodcastView()
                        
                    PlaylistCollectionView()
                    
                    Spacer()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            HomeView()
        }
    }
}
 

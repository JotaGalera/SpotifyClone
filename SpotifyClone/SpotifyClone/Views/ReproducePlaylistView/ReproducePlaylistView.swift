//
//  ReproducePlaylistView.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 11/2/21.
//

import SwiftUI

struct ReproducePlaylistView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var reproducePlaylistVM: ReproducePlaylistViewModel
    
    var backgroundColor: Gradient = Gradient(colors: [Color("lightPurple"), Color(UIColor.backgroundBlack!)])
    
    var backButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "chevron.left")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
            }
        }
    }
    
    init(playlist: Playlist) {
        self.reproducePlaylistVM = ReproducePlaylistViewModel(playlist: playlist)
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: backgroundColor,
                           startPoint: .top,
                           endPoint: .center)
                .edgesIgnoringSafeArea(.all)
            VStack {
                GeometryReader { geometry in
                    ScrollView() {
                        HStack(alignment: .top, spacing: 0) {
                            backButton
                                .padding(.top)
                                .padding(.leading)
                                
                            GeometryReader { geometry in
                                Image(reproducePlaylistVM.playlist.image)
                                    .resizable()
                                    .padding()
                                    .frame(width: geometry.size.width)
                                    .shadow(color: .black, radius: 10, x: 0, y: 10)
                            }
                            .frame(width: geometry.size.width - geometry.size.width/5,
                                   height: geometry.size.width - geometry.size.width/5)
                            .padding(.leading)
                            .padding(.trailing)
                            
                            Spacer()
                        }
                        .frame(width: geometry.size.width)
                        
                        PlaylistContentView(description: reproducePlaylistVM.playlist.description,
                                            likes: reproducePlaylistVM.playlist.likes,
                                            lenght: reproducePlaylistVM.playlist.lenght)
                        
                        PlaylistContentRow(songs: reproducePlaylistVM.playlist.songs)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                    }
                    .frame(width: geometry.size.width)
                }
            }
            .frame(width: UIScreen.screenWidth)
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .onAppear() {
            
        }
    }
    
}

struct ReproducePlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ReproducePlaylistView(playlist: Helper.personalPlaylist2)
        }
    }
}

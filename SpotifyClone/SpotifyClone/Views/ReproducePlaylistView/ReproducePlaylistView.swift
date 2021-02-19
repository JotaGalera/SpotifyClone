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
            ZStack(alignment: .leading) {
                backButton
                    .position(x: 30, y: 20)
                
                GeometryReader { geometry in
                    ScrollView() {
                        
                        ImageContent(image: reproducePlaylistVM.playlist.image)
                            .frame(width: geometry.size.width - geometry.size.width/5,
                                   height: geometry.size.width - geometry.size.width/5)
                        
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
    }
}

struct ImageContent: View {
    var image: String
    
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            GeometryReader { geometry in
                Image(image)
                    .resizable()
                    .padding()
                    
                    .aspectRatio(contentMode: .fill)
                    .offset(y: max(100 - CGFloat(Double(geometry.frame(in: .global).minY * 1.3)), 0))
                    .frame(width: geometry.size.width,
                           height: getHeigh(from: geometry))
                    .shadow(color: .black, radius: 10, x: 0, y: 10)
                    .opacity(Double(geometry.frame(in: .global).minY)/300 + 0.90)
                    
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.top, 7)
            
            Spacer()
        }
    }
    
    private func getHeigh(from geometry: GeometryProxy) -> CGFloat {
        return min(
            geometry.frame(in: .global).minY/1.7 + (geometry.size.width - geometry.size.width/5),
            UIScreen.screenWidth - UIScreen.screenWidth/8)
    }
}

struct ReproducePlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ReproducePlaylistView(playlist: Helper.personalPlaylist2)
        }
    }
}

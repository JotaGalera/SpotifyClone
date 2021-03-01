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
    var backgroundColor: Gradient
    
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
        
        self.backgroundColor = Gradient(colors: [Color(reproducePlaylistVM.getPrimaryColorOfTheImage()), Color(UIColor.backgroundBlack!)])
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            LinearGradient(gradient: backgroundColor,
                           startPoint: .top,
                           endPoint: .center)
                .edgesIgnoringSafeArea(.all)
            
            backButton
                .position(x: 30, y: 20)
                .zIndex(1)
            
            GeometryReader { geometry in
                ScrollView() {
                    LazyVStack {
                        ImageContent(image: reproducePlaylistVM.playlist.image)
                            .frame(width: geometry.size.width - geometry.size.width/5,
                                   height: geometry.size.width - geometry.size.width/3)
                        
                        PlaylistContentView(description: reproducePlaylistVM.playlist.description,
                                            likes: reproducePlaylistVM.playlist.likes,
                                            lenght: reproducePlaylistVM.playlist.lenght)
                        
                        PlaylistContentRow(playlist: reproducePlaylistVM.playlist)
                        
                    }
                }
            }
        }
        .frame(width: UIScreen.screenWidth)
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct ImageContent: View {
    var image: String
    
    var body: some View {
        VStack(alignment: .center) {
            GeometryReader { geometry in
                VStack(alignment: .center) {
                    Image(image)
                        .resizable()
                        .padding()
                        .aspectRatio(contentMode: .fill)
                        .offset(y: getOffset(from: geometry))
                        .frame(width: getWidth(from: geometry),
                               height: getHeight(from: geometry))
                        .shadow(color: .black, radius: 20, x: 0, y: 10)
                        .opacity(getOpacity(from: geometry))
                        .padding(.top, 60)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.top, 12)
        }
    }
    
    private func getOffset(from geometry: GeometryProxy) -> CGFloat {
        return -CGFloat(Double(geometry.frame(in: .global).minY * 0.6))
    }
    
    private func getHeight(from geometry: GeometryProxy) -> CGFloat {
        return min(
            geometry.frame(in: .global).minY/1.7 + (geometry.size.width - geometry.size.width/7),
            UIScreen.screenWidth - UIScreen.screenWidth/8
        )
    }
    
    private func getWidth(from geometry: GeometryProxy) -> CGFloat {
        return geometry.frame(in: .global).minX/10
    }
    
    private func getOpacity(from geometry: GeometryProxy) -> Double {
        return Double(geometry.frame(in: .global).minY)/100 + 0.90
    }
}

struct ReproducePlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ReproducePlaylistView(playlist: Helper.personalPlaylist2)
        }
    }
}

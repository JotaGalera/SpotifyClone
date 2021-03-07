//
//  AudioPlayerView.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 25/2/21.
//

import SwiftUI

struct AudioPlayerView: View {
    @Environment(\.presentationMode) var presentationMode
    var audioPlayerVM: AudioPlayerViewModel
    var backgroundColor: Gradient
    
    init(playlist: Playlist, selectedSongPosition: Int?) {
        audioPlayerVM = AudioPlayerViewModel(playlist: playlist, currentSongPosition: selectedSongPosition)
        
        backgroundColor = Gradient(colors: [Color(audioPlayerVM.getPrimaryColorOfTheImage()), Color(UIColor.backgroundBlack!)])
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: backgroundColor,
                startPoint: .top,
                endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                AudioPlayerHeaderView(presentationMode: presentationMode, playlistTitle: audioPlayerVM.getPlaylistName())
                    
                Spacer()
                
                AudioPlayerContentView(audioPlayerVM: audioPlayerVM)
                    .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight/1.5)
                
                Spacer()
                
                AudioPlayerFooterView()
                
                Spacer()
            }
            .environmentObject(audioPlayerVM)
            .foregroundColor(.white)
            .navigationTitle("")
            .navigationBarHidden(true)
            .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight)
            .onAppear() {
                audioPlayerVM.play()
            }
        }
        .gesture(
            DragGesture(minimumDistance: 50)
                .onEnded { _ in presentationMode.wrappedValue.dismiss() }
        )
    }
}

struct AudioPlayerHeaderView: View {
    var presentationMode: Binding<PresentationMode>
    var playlistTitle: String
    
    var body: some View {
        HStack {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "chevron.down")
            })
            
            Spacer()
            
            Text(playlistTitle)
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
            AudioPlayerView(playlist: Helper.popPlaylist1, selectedSongPosition: 0)
        }
    }
}

//
//  ReproducePlaylistView.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 11/2/21.
//

import SwiftUI

struct ReproducePlaylistView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
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
                                Image("queen")
                                    .resizable()
                                    .padding()
                                    .frame(width: geometry.size.width)
                                    .shadow(color: .black, radius: 10, x: 0, y: 10)
                            }
                            .frame(width: 320, height: 320)
                            .padding(.leading)
                            .padding(.trailing)
                            
                            Spacer()
                        }
                        .frame(width: geometry.size.width)
                        
                        PlaylistContentView()
                        
                        PlaylistContentRow()
                            .frame(width: geometry.size.width)
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

struct ReproducePlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ReproducePlaylistView()
        }
    }
}

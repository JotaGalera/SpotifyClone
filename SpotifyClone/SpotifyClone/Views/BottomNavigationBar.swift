//
//  BottomNavigationBar.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 03/02/2021.
//

import SwiftUI

struct BottomNavigationBar: View {
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor.darkGray
    }
    
    var body: some View {
        TabView {
            MockView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            Text("Your Library")
                .tabItem {
                    Image(systemName: "books.vertical")
                    Text("Your Library")
                }
        }
        .accentColor(.white)
    }
}

struct BottomNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            BottomNavigationBar()
        }
    }
}

struct MockView: View {
    var body: some View {
        Color.black.edgesIgnoringSafeArea(.all)
    }
}

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
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }
    }
        
    var body: some View {
        NavigationView {
            TabView {
                HomeView()
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
}

struct BottomNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            BottomNavigationBar()
        }
    }
}

//
//  Helper.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 07/02/2021.
//

import Foundation

class Helper {
    // Personal Playlist
    static var personalPlaylist1 = Playlist(name: "Liked Song", image: "likedSong", isPersonalized: false)
    static var personalPlaylist2 = Playlist(name: "Queen", image: "queen", isPersonalized: true)
    static var personalPlaylist3 = Playlist(name: "Izal", image: "izal", isPersonalized: true)
    static var personalPlaylist4 = Playlist(name: "Most Popular", image: "mostPopular", isPersonalized: false)
    static var personalPlaylist5 = Playlist(name: "Work From Home", image: "workFromHome", isPersonalized: false)
    static var personalPlaylist6 = Playlist(name: "Green Day", image: "greenDay", isPersonalized: true)
    
    static var personalPlaylistArray: [Playlist] = [personalPlaylist1, personalPlaylist2, personalPlaylist3, personalPlaylist4, personalPlaylist5, personalPlaylist6]
    
    // Popular Playlist
    
    static var popularPlaylist1 = Playlist(name: "International Pop", image: "internationalPop", isPersonalized: false)
    static var popularPlaylist2 = Playlist(name: "Retro", image: "retroMusic", isPersonalized: false)
    static var popularPlaylist3 = Playlist(name: "Classic", image: "classicMusic", isPersonalized: false)
    static var popularPlaylist4 = Playlist(name: "Chill", image: "chillMusic", isPersonalized: false)
    static var popularPlaylist5 = Playlist(name: "Electro Music", image: "electroMusic", isPersonalized: false)
    
    
    static var popularPlaylistArray: [Playlist] = [popularPlaylist1, popularPlaylist2, popularPlaylist3, popularPlaylist4, popularPlaylist5]
    
    // Collection Playlist
    static var collectionPersonalPlaylist: PlaylistCollection = PlaylistCollection (title: "Recently Played", playlists: personalPlaylistArray.shuffled())
    static var collectionPopularPlaylist: PlaylistCollection = PlaylistCollection (title: "Popular Played", playlists: popularPlaylistArray.shuffled())
}

//
//  Helper.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 07/02/2021.
//

import Foundation

class Helper {
    // Personal
    static var personalPlaylist1 = Playlist(name: "Liked Song", image: "likedSong", isPersonalized: false)
    static var personalPlaylist2 = Playlist(name: "Queen", image: "queen", isPersonalized: true)
    static var personalPlaylist3 = Playlist(name: "Izal", image: "izal", isPersonalized: true)
    static var personalPlaylist4 = Playlist(name: "Most Popular", image: "mostPopular", isPersonalized: false)
    static var personalPlaylist5 = Playlist(name: "Work From Home", image: "workFromHome", isPersonalized: false)
    static var personalPlaylist6 = Playlist(name: "Green Day", image: "greenDay", isPersonalized: true)
    
    static var personalPlaylistArray: [Playlist] = [personalPlaylist1, personalPlaylist2, personalPlaylist3, personalPlaylist4, personalPlaylist5, personalPlaylist6]
    
    // Popular
    static var popularPlaylist1 = Playlist(name: "International Pop", image: "internationalPop", isPersonalized: false)
    static var popularPlaylist2 = Playlist(name: "Retro", image: "retroMusic", isPersonalized: false)
    static var popularPlaylist3 = Playlist(name: "Classic", image: "classicMusic", isPersonalized: false)
    static var popularPlaylist4 = Playlist(name: "Chill", image: "chillMusic", isPersonalized: false)
    static var popularPlaylist5 = Playlist(name: "Electro Music", image: "electroMusic", isPersonalized: false)
    
    static var popularPlaylistArray: [Playlist] = [popularPlaylist1, popularPlaylist2, popularPlaylist3, popularPlaylist4, popularPlaylist5]
    
    // Pop
    static var popPlaylist1 = Playlist(name: "Viral Hits", image: "viralHits", isPersonalized: false)
    static var popPlaylist2 = Playlist(name: "Soft Pop Hits", image: "softPopHits", isPersonalized: false)
    static var popPlaylist3 = Playlist(name: "Best Latin Pop", image: "bestLatinPop", isPersonalized: false)
    static var popPlaylist4 = Playlist(name: "Radio", image: "radio", isPersonalized: false)
    
    
    static var popPlaylistArray: [Playlist] = [popPlaylist1, popPlaylist2, popPlaylist3, popPlaylist4]
    
    // Collection Playlist
    static var collectionPersonalPlaylist: PlaylistCollection = PlaylistCollection (title: "Recently Played", playlists: personalPlaylistArray.shuffled())
    static var collectionPopularPlaylist: PlaylistCollection = PlaylistCollection (title: "Popular Played", playlists: popularPlaylistArray.shuffled())
    static var collectionPopPlaylist: PlaylistCollection = PlaylistCollection(title: "POP", playlists: popPlaylistArray.shuffled())
    
    // Podcast
    static var podcast1 = Podcast(name: "Swift Podcast", image: "swiftPodcast", broadcastDate: .Sat, lenght: "50min")
    static var podcast2 = Podcast(name: "", image: "browsePodcast")
    
    static var podcastArray: [Podcast] = [podcast1, podcast2]
    
    // Collection Podcast
    static var collectionPodcast: PodcastCollection = PodcastCollection(title: "New Episodes", podcasts: podcastArray)
}

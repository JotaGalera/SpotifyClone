//
//  Helper.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 07/02/2021.
//

import Foundation

class Helper {
    // Queen songs
    static var song1 = Song(name: "Bohemian Rhapsody", artists: "Queen", image: "queenSong")
    static var song2 = Song(name: "Don´t Stop Me Now", artists: "Queen", image: "queenSong")
    static var song3 = Song(name: "I Want To Break Free", artists: "Queen", image: "queenSong")
    static var song4 = Song(name: "Another One Bites the Dust", artists: "Queen", image: "queenSong")
    static var song5 = Song(name: "We Will Rock You", artists: "Queen", image: "queenSong")
    static var song6 = Song(name: "We Are The Champions", artists: "Queen", image: "queenSong")
    static var song7 = Song(name: "Under Pressure", artists: "Queen", image: "queenSong")
    static var song8 = Song(name: "Radio Ga Ga", artists: "Queen", image: "queenSong")
    static var song9 = Song(name: "Who Want To Live Forever", artists: "Queen", image: "queenSong")
    static var song10 = Song(name: "The Show Must Go On", artists: "Queen", image: "queenSong")
    static var song11 = Song(name: "Let Me Live", artists: "Queen", image: "queenSong")
    static var song12 = Song(name: "Thank God It´s Christmas", artists: "Queen", image: "queenSong")
    
    static var queenSongArray: [Song] = [song1, song2, song3, song4, song5, song6, song7, song8, song9, song10, song11, song12]
    
    // Personal
    static var personalPlaylist1 = Playlist(name: "Liked Song", image: "likedSong", description: "Your liked songs", likes: 0, lenght: "1h 20m", isPersonalized: false, songs: queenSongArray)
    static var personalPlaylist2 = Playlist(name: "Queen", image: "queen", description: "The best of Queen", likes: 145000, lenght: "2h 1m", isPersonalized: true, songs: queenSongArray)
    static var personalPlaylist3 = Playlist(name: "Izal", image: "izal", description: "The best of Izal", likes: 90000, lenght: "1h 34m", isPersonalized: true, songs: queenSongArray)
    static var personalPlaylist4 = Playlist(name: "Most Popular", image: "mostPopular", description: "Most popular songs", likes: 100000, lenght: "1h 45m", isPersonalized: false, songs: queenSongArray)
    static var personalPlaylist5 = Playlist(name: "Work From Home", image: "workFromHome", description: "Working efficiently", likes: 50000, lenght: "2h 20m", isPersonalized: false, songs: queenSongArray)
    static var personalPlaylist6 = Playlist(name: "Green Day", image: "greenDay", description: "The best of Green Day", likes: 88756, lenght: "1h 23m", isPersonalized: true, songs: queenSongArray)
    
    static var personalPlaylistArray: [Playlist] = [personalPlaylist1, personalPlaylist2, personalPlaylist3, personalPlaylist4, personalPlaylist5, personalPlaylist6]
    
    // Popular
    static var popularPlaylist1 = Playlist(name: "International Pop", image: "internationalPop", description: "The best of the Pop", likes: 1, lenght: "1h 1m", isPersonalized: false, songs: queenSongArray)
    static var popularPlaylist2 = Playlist(name: "Retro", image: "retroMusic", description: "", likes: 1, lenght: "1h 1m", isPersonalized: false, songs: queenSongArray)
    static var popularPlaylist3 = Playlist(name: "Classic", image: "classicMusic", description: "", likes: 1, lenght: "1h 1m", isPersonalized: false, songs: queenSongArray)
    static var popularPlaylist4 = Playlist(name: "Chill", image: "chillMusic", description: "", likes: 1, lenght: "1h 1m", isPersonalized: false, songs: queenSongArray)
    static var popularPlaylist5 = Playlist(name: "Electro Music", image: "electroMusic", description: "", likes: 1, lenght: "1h 1m", isPersonalized: false, songs: queenSongArray)
    
    static var popularPlaylistArray: [Playlist] = [popularPlaylist1, popularPlaylist2, popularPlaylist3, popularPlaylist4, popularPlaylist5]
    
    // Pop
    static var popPlaylist1 = Playlist(name: "Viral Hits", image: "viralHits", description: "", likes: 1, lenght: "1h 1m", isPersonalized: false, songs: queenSongArray)
    static var popPlaylist2 = Playlist(name: "Soft Pop Hits", image: "softPopHits", description: "", likes: 1, lenght: "1h 1m", isPersonalized: false, songs: queenSongArray)
    static var popPlaylist3 = Playlist(name: "Best Latin Pop", image: "bestLatinPop", description: "", likes: 1, lenght: "1h 1m", isPersonalized: false, songs: queenSongArray)
    static var popPlaylist4 = Playlist(name: "Radio", image: "radio", description: "", likes: 1, lenght: "1h 1m", isPersonalized: false, songs: queenSongArray)
    
    
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

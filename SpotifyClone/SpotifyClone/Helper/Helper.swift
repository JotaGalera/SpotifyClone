//
//  Helper.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 07/02/2021.
//

import Foundation

class Helper {
    // Liked Songs
    static var likedSongArray: [Song] = [greenDaySong1, greenDaySong2, izalSong1, izalSong2, queenSong1, queenSong2]
    // Work from home Songs
    static var workFromHomeSongArray: [Song] = [greenDaySong3, greenDaySong4, izalSong3, izalSong4, queenSong3, queenSong4]
    // Most Popular Songs
    static var mostPopularSongArray: [Song] = [greenDaySong5, greenDaySong6, izalSong5, izalSong6, queenSong5, queenSong6]
    
    // Green Day songs
    static var greenDaySong1 = Song(name: "Burnout", artists: "Green Day", image: "greenDaySong")
    static var greenDaySong2 = Song(name: "Having a Blast", artists: "Green Day", image: "greenDaySong")
    static var greenDaySong3 = Song(name: "Chump", artists: "Green Day", image: "greenDaySong")
    static var greenDaySong4 = Song(name: "Longview", artists: "Green Day", image: "greenDaySong")
    static var greenDaySong5 = Song(name: "Welcome to Paradise", artists: "Green Day", image: "greenDaySong")
    static var greenDaySong6 = Song(name: "Pulling Teeth", artists: "Green Day", image: "greenDaySong")
    static var greenDaySong7 = Song(name: "Basket Case", artists: "Green Day", image: "greenDaySong")
    static var greenDaySong8 = Song(name: "She", artists: "Green Day", image: "greenDaySong")
    static var greenDaySong9 = Song(name: "Sassafras Roots", artists: "Green Day", image: "greenDaySong")
    static var greenDaySong10 = Song(name: "When I Come Around", artists: "Green Day", image: "greenDaySong")
    static var greenDaySong11 = Song(name: "Coming Clean", artists: "Green Day", image: "greenDaySong")
    static var greenDaySong12 = Song(name: "Emenius Sleepus", artists: "Green Day", image: "greenDaySong")
    static var greenDaySong13 = Song(name: "In the End", artists: "Green Day", image: "greenDaySong")
    static var greenDaySong14 = Song(name: "F.O.D.", artists: "Green Day", image: "greenDaySong")
    static var greenDaySong15 = Song(name: "All by Myself", artists: "Green Day", image: "greenDaySong")
    
    static var greenDaySongArray: [Song] = [greenDaySong1, greenDaySong2, greenDaySong3, greenDaySong4, greenDaySong5, greenDaySong6, greenDaySong7, greenDaySong8, greenDaySong9, greenDaySong10, greenDaySong11, greenDaySong12, greenDaySong13, greenDaySong14, greenDaySong15]
    // Izal songs
    static var izalSong1 = Song(name: "Autoterapia", artists: "Izal", image: "izalSong")
    static var izalSong2 = Song(name: "El Pozo", artists: "Izal", image: "izalSong")
    static var izalSong3 = Song(name: "Ruido Blanco", artists: "Izal", image: "izalSong")
    static var izalSong4 = Song(name: "Bill Murray", artists: "Izal", image: "izalSong")
    static var izalSong5 = Song(name: "Pausa", artists: "Izal", image: "izalSong")
    static var izalSong6 = Song(name: "Santa Paz", artists: "Izal", image: "izalSong")
    static var izalSong7 = Song(name: "Canción para Nadie", artists: "Izal", image: "izalSong")
    static var izalSong8 = Song(name: "La Increible Historia del Hombre Que Podía Volar", artists: "Izal", image: "izalSong")
    static var izalSong9 = Song(name: "El Temblor", artists: "Izal", image: "izalSong")
    static var izalSong10 = Song(name: "Temas Amables", artists: "Izal", image: "izalSong")
    static var izalSong11 = Song(name: "Variables", artists: "Izal", image: "izalSong")
    static var izalSong12 = Song(name: "Thank God It´s Christmas", artists: "Izal", image: "izalSong")
    
    static var izalSongArray: [Song] = [izalSong1, izalSong2, izalSong3, izalSong4, izalSong5, izalSong6, izalSong7, izalSong8, izalSong9, izalSong10, izalSong11, izalSong12]
    
    // Queen songs
    static var queenSong1 = Song(name: "Bohemian Rhapsody", artists: "Queen", image: "queenSong")
    static var queenSong2 = Song(name: "Don´t Stop Me Now", artists: "Queen", image: "queenSong")
    static var queenSong3 = Song(name: "I Want To Break Free", artists: "Queen", image: "queenSong")
    static var queenSong4 = Song(name: "Another One Bites the Dust", artists: "Queen", image: "queenSong")
    static var queenSong5 = Song(name: "We Will Rock You", artists: "Queen", image: "queenSong")
    static var queenSong6 = Song(name: "We Are The Champions", artists: "Queen", image: "queenSong")
    static var queenSong7 = Song(name: "Under Pressure", artists: "Queen", image: "queenSong")
    static var queenSong8 = Song(name: "Radio Ga Ga", artists: "Queen", image: "queenSong")
    static var queenSong9 = Song(name: "Who Want To Live Forever", artists: "Queen", image: "queenSong")
    static var queenSong10 = Song(name: "The Show Must Go On", artists: "Queen", image: "queenSong")
    static var queenSong11 = Song(name: "Let Me Live", artists: "Queen", image: "queenSong")
    static var queenSong12 = Song(name: "Thank God It´s Christmas", artists: "Queen", image: "queenSong")
    
    static var queenSongArray: [Song] = [queenSong1, queenSong2, queenSong3, queenSong4, queenSong5, queenSong6, queenSong7, queenSong8, queenSong9, queenSong10, queenSong11, queenSong12]
    
    // Personal
    static var personalPlaylist1 = Playlist(name: "Liked Song", image: "likedSong", description: "Your liked songs", likes: 0, lenght: "1h 20m", isPersonalized: false, songs: likedSongArray)
    static var personalPlaylist2 = Playlist(name: "Queen", image: "queen", description: "The best of Queen", likes: 145000, lenght: "2h 1m", isPersonalized: true, songs: queenSongArray)
    static var personalPlaylist3 = Playlist(name: "Izal", image: "izal", description: "The best of Izal", likes: 90000, lenght: "1h 34m", isPersonalized: true, songs: izalSongArray)
    static var personalPlaylist4 = Playlist(name: "Most Popular", image: "mostPopular", description: "Most popular songs", likes: 100000, lenght: "1h 45m", isPersonalized: false, songs: mostPopularSongArray)
    static var personalPlaylist5 = Playlist(name: "Work From Home", image: "workFromHome", description: "Working efficiently", likes: 50000, lenght: "2h 20m", isPersonalized: false, songs: workFromHomeSongArray)
    static var personalPlaylist6 = Playlist(name: "Green Day", image: "greenDay", description: "The best of Green Day", likes: 88756, lenght: "1h 23m", isPersonalized: true, songs: greenDaySongArray)
    
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

//
//  AudioPlayerViewModel.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 28/2/21.
//

import Foundation
import AVFoundation
import SwiftUI

class AudioPlayerViewModel: ObservableObject {
    var playlist: Playlist
    var currentSongPosition: Int?
    
    @Published var isPlaying: Bool = false
    
    init(playlist: Playlist, currentSongPosition: Int?) {
        self.playlist = playlist
        self.currentSongPosition = currentSongPosition
        isPlaying = AudioPlayerSingleton.instance.isPlaying
    }
    
    func getPrimaryColorOfTheImage() -> UIColor {
        return UIImage(named: getImage())?.averageColor ?? UIColor(Color("black"))
    }
    
    func getSecondaryColorOfTheImage() -> UIColor {
        guard let secondaryColor = UIImage(named: getImage())?.averageColor else { return UIColor(Color("black")) }
        secondaryColor.withAlphaComponent(1.0)
        
        return secondaryColor.withAlphaComponent(1.0)
    }
    
    func getPlaylistName() -> String {
        return playlist.name
    }
    
    func getImage() -> String {
        guard let position = currentSongPosition else { return "Unknown song" }
        let image = playlist.songs[position].image
        return image
    }
    
    func getSongName() -> String {
        guard let position = currentSongPosition else { return "Unknown song" }
        let songName = playlist.songs[position].name
        return songName
    }
    
    func getSongArtists() -> String {
        guard let position = currentSongPosition else { return "Unknown artists" }
        let artists = playlist.songs[position].artists
        return artists
    }
    
    func playMusic() {
        if isPlaying {
            pause()
        } else {
            play()
        }
    }
    
    func play() {
        guard let position = currentSongPosition else { return }
        let songName = playlist.songs[position].name
        AudioPlayerSingleton.instance.play(songName: songName)
        isPlaying = AudioPlayerSingleton.instance.isPlaying
    }
    
    private func pause() {
        AudioPlayerSingleton.instance.pause()
        isPlaying = AudioPlayerSingleton.instance.isPlaying
    }
}

class AudioPlayerSingleton {
    static var instance = AudioPlayerSingleton()
    var audioPlayer: AVAudioPlayer = AVAudioPlayer()
    var isPlaying: Bool = false
    
    private init(){}
    
    func play(songName: String) {
        guard let song = NSDataAsset(name: songName) else { return }
        self.isPlaying = true
        do {
            self.audioPlayer = try AVAudioPlayer(data: song.data)
            self.audioPlayer.prepareToPlay()
            do {
                  try AVAudioSession.sharedInstance().setCategory(.playback)
               } catch(let error) {
                   print(error.localizedDescription)
               }
            self.audioPlayer.play()
            self.isPlaying = true
        } catch {
            print("error")
        }
    }
    
    func pause() {
        self.isPlaying = false
        self.audioPlayer.stop()
    }
}

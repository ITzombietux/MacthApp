//
//  SoundManager.swift
//  Match App
//
//  Created by zombietux on 23/01/2019.
//  Copyright © 2019 Christopher Ching. All rights reserved.
//

import Foundation
import AVFoundation

class SoundManager {
    
    static var audioPlayer:AVAudioPlayer?
    
    enum SoundEffect {
        
        case flip
        case shuffle
        case match
        case nomatch
    }
    
    static func playSound(_ effect:SoundEffect) {
        
        var soundFilename = ""
        
        // Determine which sound effect we want to play
        // And set the approproate filename
        switch effect {
            
        case .flip:
            soundFilename = "cardflip"
            
        case .shuffle:
            soundFilename = "shuffle"
            
        case .match:
            soundFilename = "dingcorrect"
        
        case .nomatch:
            soundFilename = "dingwrong"
        }
        
        // Get the path to the sount file inside the bundle
        let bundlePath = Bundle.main.path(forResource: soundFilename, ofType: "wav")
        
        guard bundlePath != nil else {
            print("Couldn't find sound file \(soundFilename) in the bundle")
            return
        }
        
        // Create a URL object from this string path
        let sountURL = URL(fileURLWithPath: bundlePath ?? "")
        
        do {
            // Create audio player onject
            audioPlayer = try AVAudioPlayer(contentsOf: sountURL)
            
            // Play the sound
            audioPlayer?.play()
            
        } catch {
            // Couldn't create audio player object, log the error
            print("Couldn't create the audio player object for sound file \(soundFilename)")
        }
    }
}

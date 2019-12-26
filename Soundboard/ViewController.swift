//
//  ViewController.swift
//  Soundboard
//
//  Created by KYT on 2019/12/26.
//  Copyright © 2019 tgnco1218. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func aTapped(_ sender: Any) {
        
        // Getting the url
        let url = Bundle.main.url(forResource: "a", withExtension: "mp3")
        
        // make sure that we've got the url, otherwise abord
        guard url != nil else {
            return
        }
        
        // Create the audio player and play the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer!.play()
        }
        catch {
            print("error")
        }
    }
    
    @IBAction func bTapped(_ sender: Any) {
        
        // Getting the url
        let url = Bundle.main.url(forResource: "b", withExtension: "mp3")
        
        // make sure that we've got the url, otherwise abord
        guard url != nil else {
            return
        }
        
        // Create the audio player and play the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer!.play()
        }
        catch {
            print("error")
        }
    }
    
    @IBAction func cTapped(_ sender: Any) {
        
        // Getting the url
        let url = Bundle.main.url(forResource: "c", withExtension: "mp3")
        
        // make sure that we've got the url, otherwise abord
        guard url != nil else {
            return
        }
        
        // Create the audio player and play the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer!.play()
        }
        catch {
            print("error")
        }
    }
    
    @IBAction func dTapped(_ sender: Any) {
        // Getting the url
        let url = Bundle.main.url(forResource: "d", withExtension: "mp3")
        
        // make sure that we've got the url, otherwise abord
        guard url != nil else {
            return
        }
        
        // Create the audio player and play the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer!.play()
        }
        catch {
            print("error")
        }
    }
}


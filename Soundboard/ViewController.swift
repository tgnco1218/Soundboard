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
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let selectedButton = sender.tag
        
        switch selectedButton {
        case 1:
            let url = Bundle.main.url(forResource: "a", withExtension: "mp3")
            guard url != nil else {
                return
            }
            playButtonSoundWith(url: url!)
        case 2:
            let url = Bundle.main.url(forResource: "b", withExtension: "mp3")
            guard url != nil else {
                return
            }
            playButtonSoundWith(url: url!)
        case 3:
            let url = Bundle.main.url(forResource: "c",withExtension: "mp3")
            guard url != nil else {
                return
            }
            playButtonSoundWith(url: url!)
        case 4:
            let url = Bundle.main.url(forResource: "d",withExtension: "mp3")
            guard url != nil else {
                return
            }
            playButtonSoundWith(url: url!)
        default:
            return
            
        }
    }
    
    func playButtonSoundWith(url: URL) {
        // Create the audio player and play the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }
        catch {
            print("error")
        }
    }  
}


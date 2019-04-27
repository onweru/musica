//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
  var audioPlayer : AVAudioPlayer!
      
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        let tag = sender.tag
        playSound(noteNumber: tag)
    }
  
  
  func playSound(noteNumber: Int) {
       let soundURL = Bundle.main.url(forResource: "note\(noteNumber)", withExtension: "wav")
      
      do {
        audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
      } catch {
        print(error)
      }
      audioPlayer.play()
    }

}


//
//  ViewController.swift
//  kidsStudy
//
//  Created by Eminko on 3.03.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    

    var audioPlayer : AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 30
       
    }


    @IBAction func buttonClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "homeToList", sender: nil)
        
    }
}


/*
 if let player = audioPlayer, player.isPlaying {
     // Stop playing
     player.stop()
     print("Song Stopped")
     
 }else{
     //playing  Code
     print("Song Played")
     let source = Bundle.main.path(forResource: "kurt", ofType: "mp3")
     let url = URL(fileURLWithPath: source!)
     
     do {
         
         audioPlayer = try AVAudioPlayer(contentsOf: url)
         audioPlayer?.play()
     }catch{
         print("error")
     }
     
 }
 */

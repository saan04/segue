//
//  ThirdViewController.swift
//  firstapp
//
//  Created by Saanvi Nair on 17/10/22.
//

import UIKit
import AVFoundation

class ThirdViewController: UIViewController {
    
    var player = AVAudioPlayer()
    
    
    @IBAction func playAudio(_ sender: Any) {
        player.play()
    }
    
    
    @IBAction func pauseAudio(_ sender: Any) {
        player.pause()
    }
    
    
    @IBAction func replayAudio(_ sender: Any) {
        player.currentTime = 0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            let audioPath = Bundle.main.path(forResource: "u2", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf:NSURL(fileURLWithPath: audioPath!)as URL)
        }
        catch{
            
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

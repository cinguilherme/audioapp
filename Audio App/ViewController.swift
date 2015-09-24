//
//  ViewController.swift
//  Audio App
//
//  Created by Gulherme Cintra on 24/09/15.
//  Copyright (c) 2015 Gulherme Cintra. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer = AVAudioPlayer()
    
    
    @IBOutlet weak var volumeSlider: UISlider!
    @IBOutlet weak var seekSlider: UISlider!
    @IBOutlet weak var musciNameLabel: UILabel!
    
    
    @IBAction func pause(sender: AnyObject) {
        player.stop()
    }
    
    @IBAction func stop(sender: AnyObject) {
        player.stop()
    }
    
    @IBAction func play(sender: AnyObject) {
        player.play()
    }
    
    
    @IBAction func volumeUpdate(sender: AnyObject) {
        player.volume = volumeSlider.value
    }
    
    
    @IBAction func seekUpdate(sender: AnyObject) {
        //tobedone
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var audioPath = NSBundle.mainBundle().pathForResource("bach", ofType: "mp3")
        
        var url:NSURL = NSURL(fileURLWithPath: audioPath!)!
        
        var erro:NSError? = nil
        
        player = AVAudioPlayer(contentsOfURL: url, error: &erro)
        
        if erro == nil {
            player.prepareToPlay()
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


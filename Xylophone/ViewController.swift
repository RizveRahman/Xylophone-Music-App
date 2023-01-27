//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audio:AVPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(selectSound: sender.currentTitle!)

    }
    
    func playSound(selectSound : String) {
        let url = Bundle.main.url(forResource: selectSound, withExtension: "wav")
        audio = AVPlayer.init(url: url!)
        audio.play()
    }

}


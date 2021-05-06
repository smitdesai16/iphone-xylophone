//
//  ViewController.swift
//  IPhone Xylophone
//
//  Created by Madhura Ambre on 5/4/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func PlaySound(_ sender: UIButton) {
        let url = Bundle.main.url(forResource: sender.currentTitle!, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}


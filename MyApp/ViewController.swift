//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func buttonClick(_ sender: UIButton) {
        let videoURL = URL(string: "http://www.ebookfrenzy.com/ios_book/movie/movie.mov")

        let player = AVPlayer(url: videoURL!)

        let playerViewController = AVPlayerViewController()
        playerViewController.player = player

        self.present(playerViewController, animated: true)

        playerViewController.player!.play()
    }
}

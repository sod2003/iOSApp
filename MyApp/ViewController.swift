//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pv1: UIProgressView!
    
    var iv1: UIImageView!
    
    var timer1: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            
        timer1 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateProgress), userInfo: nil, repeats: true)

    }

    @objc func updateProgress() {
        pv1.progress += 0.2
        
        if pv1.progress == 1.0 {
            
            pv1.isHidden = true
            
            iv1 = UIImageView()
            iv1.frame = CGRect(x: 30, y: 100, width: 150, height: 150)
            iv1.contentMode = .scaleAspectFit
            iv1.backgroundColor = .black
            iv1.image = UIImage(named: "lion.jpg")
            
            self.view.addSubview(iv1)
            
            
        }
    }
   
}

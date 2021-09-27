//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var label1: UILabel!
    
    var layer1: CALayer!
    var layer2: CALayer!
    var layer3: CALayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        layer1 = tf1.layer
        
        layer1.cornerRadius = 20
        layer1.borderColor = UIColor.black.cgColor
        layer1.borderWidth = 2
        
        layer2 = label1.layer
        
        layer2.cornerRadius = 10
        layer2.borderColor = UIColor.red.cgColor
        layer2.borderWidth = 2
        
        layer3 = self.view.layer
        
        layer3.borderColor = UIColor.yellow.cgColor
        layer3.borderWidth = 5
        layer3.cornerRadius = 10
        
    }
    
}

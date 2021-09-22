//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var sc1: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func handleClick(_ sender: Any) {
        
        if sc1.selectedSegmentIndex == 0 {
            
            view1.isHidden = false
            view2.isHidden = true
            
        } else {
            
            view1.isHidden = true
            view2.isHidden = false
            
        }
    }
    
    
   
}

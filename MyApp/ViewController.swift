//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var presentButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "First View"
        
        //self.navigationController?.isNavigationBarHidden = true
        
    }

    @IBAction func click1(_ sender: Any) {
        
        
    }
    
    @IBAction func presentButtonClick(_ sender: UIButton) {
        
    }
    
   
}

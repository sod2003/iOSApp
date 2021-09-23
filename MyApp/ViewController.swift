//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var button1: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func clickButton(_ sender: UIButton) {
        
    }
    
    // Code to transfer information to next screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextScreen = segue.destination as! SecondViewController
        
        nextScreen.string1 = tf1.text
        nextScreen.string2 = tf2.text
        nextScreen.string3 = "lion.jpg"
    }
    
   
}

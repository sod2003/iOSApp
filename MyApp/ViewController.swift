//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var label1: UILabel!
    
    var dateAndTimeInfo: Date!
    var dateFormatter1: DateFormatter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func clickButton(_ sender: UIButton) {
        dateAndTimeInfo = Date()
        
        dateFormatter1 = DateFormatter()
        
        dateFormatter1.timeStyle = .short
        dateFormatter1.dateStyle = .short
        
        label1.text = dateFormatter1.string(from: dateAndTimeInfo as Date)
    }
    
}

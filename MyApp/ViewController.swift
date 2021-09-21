//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tv1: UITextField!
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var wv1: WKWebView!
    
    var url1: URL! // to assign a URL
    
    var request1: URLRequest! //to create a request
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            
        

    }

    @IBAction func clickButton(_ sender: Any) {
        url1 = URL(string: tv1.text!)
        
        request1 = URLRequest(url: url1)
        
        wv1.load(request1)
    }
    
   
}

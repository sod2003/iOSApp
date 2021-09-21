//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var toolbar1: UIToolbar!
    @IBOutlet weak var b1: UIBarButtonItem!
    @IBOutlet weak var b2: UIBarButtonItem!
    @IBOutlet weak var b3: UIBarButtonItem!
    
    @IBOutlet weak var wv1: WKWebView!
    
    var url1: URL! // to assign a URL
    
    var request1: URLRequest! //to create a request
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func clickButton(_ sender: UIBarButtonItem) {
        var string = "http://" + (sender.title?.lowercased())!
        string += ".com"
        url1 = URL(string: string)
        
        request1 = URLRequest(url: url1)
        
        wv1.load(request1)
    }
    
   
}

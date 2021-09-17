//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    var tf1: UITextField!
    var label: UILabel!
    var b1: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // code to display Textfield on UI
        tf1 = UITextField()
        tf1.frame = CGRect(x: 20, y: 100, width: 200, height: 40)
        
        tf1.text = ""
        tf1.textColor = .black
        tf1.textAlignment = .center
        tf1.keyboardType = .default
        tf1.returnKeyType = .done
        tf1.isSecureTextEntry = true
        tf1.backgroundColor = .yellow
        
        self.view.addSubview(tf1)
        
        //code to display Label
        label = UILabel()
        label.frame = CGRect(x: 20, y: 180, width: 200, height: 40)
        
        label.textColor = .white
        label.backgroundColor = .blue
        label.textAlignment = .center
        label.numberOfLines = 1
        
        self.view.addSubview(label)
        
        //code to display Button
        b1 = UIButton()
        b1.frame = CGRect(x: 20, y: 220, width: 200, height: 40)
        
        b1.setTitle("Click Here", for: .normal)
        b1.backgroundColor = .red
        b1.setTitleColor(.white, for: .normal)
        
        b1.addTarget(self, action: #selector(click1), for: .touchUpInside)
        
        self.view.addSubview(b1)
        
        self.view.backgroundColor = .darkGray
    }
    
    @objc func click1() {
        
        label.text = tf1.text
        
    }


}


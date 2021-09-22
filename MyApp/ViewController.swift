//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var alertButton: UIButton!
    @IBOutlet weak var actionButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func clickAlert(_ sender: Any) {
        let alertButton = UIAlertController(title: "Displaying Alert Message", message: "Enter Message Here", preferredStyle: .alert)
        
        alertButton.addAction(UIAlertAction(title: "Close", style: .default, handler: {_ in
            print("Close button clicked")
            self.view.backgroundColor = .green
        }))
        
        alertButton.addAction(UIAlertAction(title: "Sign out", style: .destructive, handler: {_ in
            print("Signout button clicked")
            self.view.backgroundColor = .red
        }))
        
        self.present(alertButton, animated: true, completion: nil)
    }
    
    @IBAction func clickAction(_ sender: Any) {
        let actionSheet = UIAlertController(title: "Category Name", message: "Select any options", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Option 1", style: .default, handler: {_ in
            print("Option 1 selected")
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Option 2", style: .default, handler: {_ in
            print("Option 2 selected")
        }))
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    
   
}

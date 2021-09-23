//
//  SecondViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/23/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var iv1: UIImageView!
    
    var string1: String!
    var string2: String!
    var string3: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        label1.text = "\(String(describing: string1))"
        label2.text = "\(String(describing: string2))"
        
        iv1.image = UIImage(named: string3)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

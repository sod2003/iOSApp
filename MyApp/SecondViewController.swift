//
//  SecondViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/24/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var iv2: UIImageView!
    
    var string1text: String!
    var string2Image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "\(string1text ?? "Optional")"
        iv2.image = string2Image
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

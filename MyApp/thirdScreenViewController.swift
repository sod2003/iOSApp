//
//  thirdScreenViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/22/21.
//

import UIKit

class thirdScreenViewController: UIViewController {

    @IBOutlet weak var finalPoptoRootButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func finalPopToRootButtonClick(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
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

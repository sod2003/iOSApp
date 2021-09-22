//
//  secondScreenViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/22/21.
//

import UIKit

class secondScreenViewController: UIViewController {

    @IBOutlet weak var popButton: UIButton!
    @IBOutlet weak var popToRootButton: UIButton!
    @IBOutlet weak var dismissButton: UIButton!
    @IBOutlet weak var pushToNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Second View"
    }
    
    @IBAction func popButtonClick(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func popToRootButtonClick(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func dismissButtonClick(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pushToNextButtonClick(_ sender: UIButton) {
        
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

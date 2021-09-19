//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var iv1: UIImageView!
    @IBOutlet weak var pc1: UIPageControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let image: UIImage = UIImage(imageLiteralResourceName: "lion.jpg")
        iv1.image = image


    }

    @IBAction func clickPageControl(_ sender: Any) {
        let index: Int = pc1.currentPage
        if index == 0 {
            let image: UIImage = UIImage(imageLiteralResourceName: "lion.jpg")
            iv1.image = image
        }
        
        if index == 1 {
            let image: UIImage = UIImage(imageLiteralResourceName: "tiger.jpg")
            iv1.image = image
        }
        
        if index == 2 {
            let image: UIImage = UIImage(imageLiteralResourceName: "bear.jpg")
            iv1.image = image
        }
    }
   
}

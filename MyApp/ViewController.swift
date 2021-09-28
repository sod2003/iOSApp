//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stackView1: UIStackView!
    @IBOutlet weak var sc1: UISegmentedControl!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var iv1: UIImageView!
    @IBOutlet weak var tv1: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func clickHandler(_ sender: UISegmentedControl) {
        
        let i: Int = sc1.selectedSegmentIndex

            if i == 0 {

                label1.text = "Bengaluru"
                iv1.image = UIImage(named: "lion.jpg")
                tv1.text = "Bengaluru (also called Bangalore) is the capital of India's southern Karnataka state. The center of India's high-tech industry, the city is also known for its parks and nightlife. By Cubbon Park, Vidhana Soudha is a Neo-Dravidian legislative building. Former royal residences include 19th-century Bangalore Palace, modeled after England’s Windsor Castle, and Tipu Sultan’s Summer Palace, an 18th-century teak structure"
            } else if i == 1 {

                label1.text = "Hyderabad"
                iv1.image = UIImage(named: "lion.jpg")
                tv1.text = "Hyderabad is the capital of southern India's Telangana state. A major center for the technology industry, it's home to many upscale restaurants and shops. Its historic sites include Golconda Fort, a former diamond-trading center that was once the Qutb Shahi dynastic capital. The Charminar, a 16th-century mosque whose 4 arches support towering minarets, is an old city landmark near the long-standing Laad Bazaar."
            }

            else {

                label1.text = "Mumbai"
                iv1.image = UIImage(named: "lion.jpg")
                tv1.text = "Mumbai (formerly called Bombay) is a densely populated city on India’s west coast. A financial center, it's India's largest city. On the Mumbai Harbour waterfront stands the iconic Gateway of India stone arch, built by the British Raj in 1924. Offshore, nearby Elephanta Island holds ancient cave temples dedicated to the Hindu god Shiva. The city's also famous as the heart of the Bollywood film industry."
            }
    }
}

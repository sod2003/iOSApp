//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var iv1: UIImageView!
    
    var array1: [String] = []
    var imageArray1: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView1.delegate = self
        tableView1.dataSource = self
        
        array1 = ["Sean", "Tommy", "El Duderino", "Johnny 5"]
        
        imageArray1 = ["lion.jpg"]
        
    }
    
    // TableView Protocol Methods Implementation
    
    // Number of Sections in TableView
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Number of Rows per Section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    // Create the rows and display the data
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "identifier1", for: indexPath)
        tableCell.textLabel?.text = array1[indexPath.row]
        tableCell.imageView?.image = UIImage(named: imageArray1[0])
        tableCell.accessoryType = .detailDisclosureButton
        
        
        return tableCell
    }
    
    // Header title for Section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Names"
    }
    
    // Footer title for Section
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "End"
    }
    
    // Click a Table row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        label1.text = array1[indexPath.row]
        iv1.image = UIImage(named: imageArray1[0])
    }
    
    // Select Detail Disclosure Button
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        label1.text = array1[indexPath.row]
        iv1.image = UIImage(named: imageArray1[0])
    }
}

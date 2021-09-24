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
    @IBOutlet weak var button1: UIButton!
    
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
        return 2
    }
    
    // Number of Rows per Section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    // Create the rows and display the data
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "identifier1", for: indexPath)
        
        if indexPath.section == 0 {
            tableCell.textLabel?.text = array1[indexPath.row]
            tableCell.imageView?.image = UIImage(named: imageArray1[0])
            tableCell.accessoryType = .detailDisclosureButton
        } else {
            tableCell.textLabel?.text = array1[indexPath.row] + " 2"
            tableCell.imageView?.image = UIImage(named: imageArray1[0])
            tableCell.accessoryType = .detailDisclosureButton
        }
        
        return tableCell
    }
    
    // Header title for Section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Names"
            
        } else {
            return "Names again"
        }
    }
    
    // Footer title for Section
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "End"
    }
    
    // Section Index Titles
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        let indexArray = ["One", "Two"]
        return indexArray
    }
    
    // Click a Table row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        label1.text = tableView.cellForRow(at: indexPath)?.textLabel?.text
        iv1.image = UIImage(named: imageArray1[0])
    }
    
    // Select Detail Disclosure Button
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        label1.text = tableView.cellForRow(at: indexPath)?.textLabel?.text
        iv1.image = UIImage(named: imageArray1[0])
    }
    @IBAction func clickButton(_ sender: UIButton) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextScreen = segue.destination as! SecondViewController
        
        nextScreen.string1text = label1.text
        nextScreen.string2Image = iv1.image
    }
}

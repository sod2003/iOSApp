//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pv1: UIPickerView!
    @IBOutlet weak var label1: UILabel!
    
    var component1Array: [String] = []
    var component2Array: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        component1Array = ["One", "Two", "Three", "Four", "Five"]
        
        component2Array = ["Yellow", "Blue", "Green", "Orange"]
        
        pv1.delegate = self
        pv1.dataSource = self
        
    }
    
    // Number of components in PickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    // Number of rows in a component
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return component1Array.count
        } else {
            return component2Array.count
        }
    }
    
    // Display the information in rows
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return component1Array[row]
        } else {
            return component2Array[row]
        }
    }
    
    // When user selects any row in a component
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            label1.text = component1Array[row]
        } else {
            label1.text = component2Array[row]
        }
    }
}

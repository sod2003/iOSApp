//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    
    var pv1: UIPickerView!
    
    var countryNamesArray: [String] = []
    
    var dp1: UIDatePicker!
    var dateFormatter1: DateFormatter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countryNamesArray = ["USA", "UK", "India", "Australia", "UAE", "China"]
        
        //code for pickerview
        pv1 = UIPickerView()
        pv1.backgroundColor = .darkGray
        tf1.inputView = pv1 //assigns pickerview to TextField's Keyboard Input View
        
        pv1.delegate = self
        pv1.dataSource = self
        
        //code for datepicker
        dp1 = UIDatePicker()
        dp1.backgroundColor = .gray
        dp1.datePickerMode = .dateAndTime
        dp1.addTarget(self, action: #selector(dp1Click), for: .valueChanged)
        tf2.inputView = dp1
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countryNamesArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countryNamesArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tf1.text = countryNamesArray[row]
    }
    
    // Date Picker Function
    @objc func dp1Click() {
        dateFormatter1 = DateFormatter()
        
        dateFormatter1.dateStyle = .medium
        dateFormatter1.timeStyle = .medium
        
        tf2.text = dateFormatter1.string(from: dp1.date)
    }
    
    //Keyboard Hiding
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tf1.resignFirstResponder()
        tf2.resignFirstResponder()
    }
}

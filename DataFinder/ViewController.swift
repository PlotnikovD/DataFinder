//
//  ViewController.swift
//  DataFinder
//
//  Created by Dmitrii on 25.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dataTextField: UITextField!
    @IBOutlet var monthTextField: UITextField!
    @IBOutlet var yearTextField: UITextField!
    @IBOutlet weak var resultLable: UILabel!
    
    @IBAction func findDay(_ sender: UIButton) {
        
        guard let day = dataTextField.text, let month = monthTextField.text, let year = yearTextField.text else { return }
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        let dateFormator = DateFormatter()
        dateFormator.locale = Locale(identifier: "ru_Ru")
        
        dateFormator.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponents) else { return }
        
        let weekDay = dateFormator.string(from: date)
        let capitalizedWeekday = weekDay.capitalized
        
        resultLable.text = weekDay
    }
        
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        }
    }
    


//
//  pickDateVc.swift
//  date
//
//  Created by ios on 02/01/23.
//

import UIKit

class pickDateVc: UIViewController {
    
    @IBOutlet var mainTF: UITextField!
    @IBOutlet var picker: UIDatePicker!
    
    @IBOutlet var picker2: UIDatePicker!
    @IBOutlet var mainTF2: UITextField!
    
    let dateformatter = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("its date pick vc")
        picker.datePickerMode = .date
        print(picker as Any)
        setupPicker()
        actionCalender()
        setupPicker2()
    }
    
    func setupPicker2(){
        picker2.datePickerMode = .time
        mainTF2.inputView = picker2
        
        //MARK:- FOR done button
        //Write toolbar code for done button
            let toolBar = UIToolbar()
            toolBar.barStyle = .default
            toolBar.isTranslucent = true
        let cancelBtn = UIBarButtonItem(title: "Cancel", style: .done, target: self, action: #selector(onClickCancelBtn))
            let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
            let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(onClickDoneButton))
            toolBar.setItems([cancelBtn ,space, doneButton], animated: false)
            toolBar.isUserInteractionEnabled = true
            toolBar.sizeToFit()
            mainTF2.inputAccessoryView = toolBar //Change your TextField name here
    }
    
    @objc func onClickDoneButton() {
        self.view.endEditing(true)
    }
    
    @objc func onClickCancelBtn(){
        self.view.endEditing(true)
    }
    
    //MARK:- VALIDATION FOR DATE FOR FIVE YEARS
    func actionCalender(){
        let calender = Calendar(identifier: .gregorian)
        let currentdate = Date()
        picker.minimumDate = currentdate
        
        var components = DateComponents()
        components.calendar = calender
        components.month = +3
        let maxdate = calender.date(byAdding: components, to: currentdate)!
        picker.maximumDate = maxdate
    }
    
    func setupPicker(){
        dateformatter.dateFormat = "MM/dd/yyyy"
        mainTF.inputView = picker
        
        //MARK:- For done button
        //Write toolbar code for done button
            let toolBar = UIToolbar()
            toolBar.barStyle = .default
            toolBar.isTranslucent = true
            let cancelBtn = UIBarButtonItem(title: "Cancel", style: .done, target: self, action: #selector(onClickCancelBtn))
            let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
            let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(onClickDoneButton))
            toolBar.setItems([cancelBtn, space, doneButton], animated: false)
            toolBar.isUserInteractionEnabled = true
            toolBar.sizeToFit()
            mainTF.inputAccessoryView = toolBar //Change your TextField name here
    }
    
    //MARK:- VALUE CHANGED
    @IBAction func actionDate(_ sender: Any) {
        print("value changed")
        mainTF.text = dateformatter.string(from: picker.date)
    }
    
    @IBAction func actionDate2(_ sender: Any) {
        let dateformate = DateFormatter()
        dateformate.dateFormat = "hh:mm:ss a"
        mainTF2.text = dateformate.string(from: picker2.date)
    }
}

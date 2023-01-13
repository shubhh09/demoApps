//
//  dataPickerVc.swift
//  date
//
//  Created by ios on 03/01/23.
//

import UIKit

class dataPickerVc: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var mainTF: UITextField!
    
    let dataArray = ["shubham","rohit","prince","vinay","vishal","golu","vipin"]
    @IBOutlet var dataPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("hey its data picker vc")
        setupPicker()
    }
    
     func setupPicker(){
        dataPicker.delegate = self
        dataPicker.dataSource = self
        
        //Write toolbar code for done button
            let toolBar = UIToolbar()
            toolBar.barStyle = .default
            toolBar.isTranslucent = true
            let cancelBtn = UIBarButtonItem(title: "Cancel", style: .done, target: self, action: #selector(onClickCancel))
            let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
            let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(onClickDone))
            doneButton.tintColor = .black
            toolBar.setItems([cancelBtn ,space, doneButton], animated: false)
            toolBar.isUserInteractionEnabled = true
            toolBar.sizeToFit()
        let toolbarCustomHeight: CGFloat = 64
        toolBar.heightAnchor.constraint(equalToConstant: toolbarCustomHeight).isActive = true
            mainTF.inputAccessoryView = toolBar //Change your TextField name here
        mainTF.inputView = dataPicker
    }
    
    @objc func onClickDone(){
        print("on click done btn")
        self.view.endEditing(true)
    }
    
    @objc func onClickCancel(){
        print("on click cancel btn")
        self.view.endEditing(true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let row = dataArray[row]
        return row
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(dataArray[row])
        mainTF.text = dataArray[row]
    }
}

//
//  dateVc.swift
//  map_app
//
//  Created by ios on 31/12/22.
//

import UIKit

class dateVc: UIViewController {

    @IBOutlet var datePickr: UIDatePicker!
    @IBOutlet var mainTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
            print("its date vc")
        dateFormate()
        self.view.backgroundColor = .red 
    }
    
    func dateFormate(){
        let dateFormate = DateFormatter()
        mainTF.inputView = datePickr
        mainTF.text = dateFormate.string(from: datePickr.date)
        print(mainTF.text ?? "nil")
        print(dateFormate.string(from: datePickr.date))
    }
}

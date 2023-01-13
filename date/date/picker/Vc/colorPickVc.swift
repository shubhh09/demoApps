//
//  colorPickVc.swift
//  date
//
//  Created by ios on 02/01/23.
//

import UIKit

enum customColor {
    static let firstColor = UIColor(named: "Color")
    static let secondColor = UIColor(named: "Color2")
    static let thirdColor = UIColor(named: "Color3")
}

class colorPickVc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("hey its colorpick vc")
        self.view.backgroundColor = customColor.firstColor
        self.view.tintColor = customColor.thirdColor
    }
}

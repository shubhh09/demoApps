//
//  MessageSecondVc.swift
//  date
//
//  Created by ios on 10/01/23.
//

import UIKit

class MessageSecondVc: UIViewController {
    @IBOutlet var firstTV: UITableView!
    var i = 0
    var j = 0
    let dataArray1:[String] = ["hello good morning","what are you doing","where are you"]
    let dataArray2:[String] = ["good morning","Setting the the right constraint of your view inside the table view cell (mostly it includes giving your view proper top , bottom and traling constraints)","at just home"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("its message second vc")
        firstTV.delegate = self
        firstTV.dataSource = self
        self.firstTV.backgroundColor = .white

        firstTV.translatesAutoresizingMaskIntoConstraints = false
        firstTV!.rowHeight = UITableView.automaticDimension
        firstTV.estimatedRowHeight = 500
    }
}

extension MessageSecondVc: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray1.count + dataArray2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row%2 == 0 {
        let cell = firstTV.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath) as!
            firstCell
            cell.mainLbl1.text = dataArray1[0]
        return cell;
        }else{
            let cell = firstTV.dequeueReusableCell(withIdentifier: "SecondCell", for: indexPath) as!
                SecondCell
            print("j",j)
            cell.mainLbl2.text = dataArray2[1]
            return cell;
        }
    }
}

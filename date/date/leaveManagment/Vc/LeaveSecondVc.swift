//
//  LeaveSecondVc.swift
//  date
//
//  Created by ios on 03/01/23.
//

import UIKit

class leaveCellSecond: UITableViewCell {
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}
class LeaveSecondVc: UIViewController {

    @IBOutlet var firstTV: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("its leave second vc")
        firstTV.delegate = self
        firstTV.dataSource = self
    }
    
}

extension LeaveSecondVc: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = firstTV.dequeueReusableCell(withIdentifier: "leaveCellSecond", for: indexPath) as! leaveCellSecond
        return cell;
    }
    
    
}

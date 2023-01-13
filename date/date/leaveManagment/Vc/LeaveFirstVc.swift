//
//  LeaveFirstVc.swift
//  date
//
//  Created by ios on 03/01/23.
//

import UIKit

class leaveCellfirst: UITableViewCell {
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}
class LeaveFirstVc: UIViewController {
    @IBOutlet var firstTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("its leave first vc")
        self.setupTable()
    }
    
    private func setupTable(){
        firstTV.delegate = self
        firstTV.dataSource = self
    }
}

extension LeaveFirstVc: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = firstTV.dequeueReusableCell(withIdentifier: "leaveCellfirst", for: indexPath) as! leaveCellfirst
        return cell;
    }
}

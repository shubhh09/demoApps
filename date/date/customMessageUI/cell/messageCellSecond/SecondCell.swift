//
//  SecondCell.swift
//  date
//
//  Created by ios on 10/01/23.
//

import UIKit

class SecondCell: UITableViewCell {

    @IBOutlet var mainLbl2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.contentView.backgroundColor = .white
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

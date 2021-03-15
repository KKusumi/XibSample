//
//  TableViewCell.swift
//  XibSample
//
//  Created by kusumi on 2021/03/15.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var testLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

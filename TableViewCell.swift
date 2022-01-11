//
//  TableViewCell.swift
//  TableView
//
//  Created by Shilpa on 11/01/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var empidLabel: UILabel!
    
    @IBOutlet var photo: UIImageView!
    @IBOutlet var designationLabel: UILabel!
    @IBOutlet var salary: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

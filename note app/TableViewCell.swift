//
//  TableViewCell.swift
//  note app
//
//  Created by Amjad on 23/05/1444 AH.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var describtionLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

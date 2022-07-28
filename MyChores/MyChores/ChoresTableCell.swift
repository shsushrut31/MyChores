//
//  ChoresTableCell.swift
//  MyChores
//
//  Created by sushrut on 28/07/22.
//

import UIKit

class ChoresTableCell: UITableViewCell {

    @IBOutlet weak var lblChore: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

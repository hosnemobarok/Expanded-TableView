//
//  RecordingCell.swift
//  ExTableView
//
//  Created by Md Hosne Mobarok on 19/2/22.
//

import UIKit

class RecordingCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

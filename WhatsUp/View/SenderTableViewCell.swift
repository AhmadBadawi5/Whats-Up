//
//  SenderTableViewCell.swift
//  WhatsUp
//
//  Created by Ahmed Badawi.
//

import UIKit

class SenderTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        view.layer.cornerRadius =  10
        view.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var label: UILabel!
    
}

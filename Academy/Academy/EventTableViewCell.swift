//
//  EventTableViewCell.swift
//  Academy
//
//  Created by Federica Ventriglia on 29/11/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {

    /* outlets and variables */
    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var dateLabel: UILabel?
    @IBOutlet weak var contentCellView: UIView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func config(){
        self.contentCellView.backgroundColor = UIColor(red:0.93, green:0.88, blue:0.77, alpha:0.6)
        self.contentCellView.layer.cornerRadius = self.contentCellView.bounds.height*0.2

        self.clipsToBounds = true
        self.titleLabel?.text = "Event Name"
        self.dateLabel?.text = "N/A"
    }

}

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
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var contentCellView: UIView!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func config(forEvent event: Event){
        self.contentCellView.backgroundColor = UIColor.clear
        self.contentCellView.clipsToBounds = true
        self.titleLabel.text = event.title
        self.contentCellView.layer.cornerRadius = min(self.contentCellView.bounds.width, self.contentCellView.bounds.height) * 0.1
       
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short

        self.dateLabel.text = dateFormatter.string(from: event.date)
        
        self.backgroundImage.image = event.image
    }

}

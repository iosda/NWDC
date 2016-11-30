//
//  NotificationTableViewCell.swift
//  Academy
//
//  Created by Federica Ventriglia on 30/11/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {

    /* outlets */
    @IBOutlet weak var notificationImageView: UIImageView!
    @IBOutlet weak var notificationLabel: UILabel!
    
    @IBOutlet weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
     
    func config() {
        self.backgroundColor = UIColor.clear
        self.containerView.backgroundColor = UIColor.clear
        
        self.containerView.layer.cornerRadius = min(self.containerView.bounds.width, self.containerView.bounds.height) * 0.1
        self.containerView.backgroundColor = UIColor(red:0.97, green:0.97, blue:0.95, alpha:0.4)

        self.notificationLabel.text = "The Vapor lecture has been added on Monday at 16:00 in the Board Room"
    
        self.notificationImageView.layer.cornerRadius = self.notificationImageView.bounds.height/2
        self.notificationImageView.contentMode = .scaleAspectFit
        
    }

}

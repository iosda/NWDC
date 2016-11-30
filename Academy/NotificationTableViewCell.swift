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
        self.containerView.backgroundColor = UIColor(red:0.93, green:0.88, blue:0.77, alpha:0.6)
        self.containerView.layer.cornerRadius = self.containerView.bounds.height*0.2
        
        self.notificationLabel.text = "The Vapor lecture has been added on Monday at 16:00 in the Board Room"
        
        self.notificationImageView.layer.cornerRadius = self.notificationImageView.bounds.height/2
        self.notificationImageView.contentMode = .scaleAspectFit
        
    }

}

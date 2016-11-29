//
//  LectureTableViewCell.swift
//  Academy
//
//  Created by Federica Ventriglia on 29/11/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

class LectureTableViewCell: UITableViewCell {
    
    /* OUTLETS AND VARIABLES */
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateAndTimeLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var user1: UIImageView!
    @IBOutlet weak var user2: UIImageView!
    @IBOutlet weak var user3: UIImageView!
    @IBOutlet weak var user4: UIImageView!
    @IBOutlet weak var user5: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func config() {
        self.backgroundColor = UIColor(red:0.97, green:0.97, blue:0.95, alpha:1.0)
        self.layer.cornerRadius = 8
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: -1, height: 1)
        self.clipsToBounds = true
        
        self.user1.layer.cornerRadius = self.user1.bounds.height/2
        self.user2.layer.cornerRadius = self.user2.bounds.height/2
        self.user3.layer.cornerRadius = self.user3.bounds.height/2
        self.user4.layer.cornerRadius = self.user4.bounds.height/2
        self.user5.layer.cornerRadius = self.user5.bounds.height/2

        self.nameLabel.text = "Vapor"
        self.dateAndTimeLabel.text = "NOT AVAIABLE YET"
        self.locationLabel.text = "N/A"
        self.user1.contentMode = .scaleAspectFit
        self.user1.image = UIImage(named:"giacomoIcon")
     
    }
}


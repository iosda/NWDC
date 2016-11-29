//
//  UserTableViewCell.swift
//  Academy
//
//  Created by Federica Ventriglia on 29/11/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    /* outlets and variables */
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var classLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
    
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
        
        self.profileImage.layer.cornerRadius = self.profileImage.bounds.height/2
        self.profileImage.contentMode = .scaleAspectFit
        self.profileImage.image = UIImage(named:"GiacomoIcon")
        
        self.nameLabel.text = "Giacomo Leopizzi"
        self.emailLabel.text = "gi.le@hotmail.it"
        self.typeLabel.text = "STUDENT"
        self.classLabel.text = "MORNING CLASS"

    }
}

//
//  CommentsTableViewCell.swift
//  Academy
//
//  Created by Federica Ventriglia on 02/12/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

class CommentsTableViewCell: UITableViewCell {

    // outlets
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var contentCellView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func config(forEvent comment: Comment) {
        self.contentCellView.backgroundColor = UIColor(red:23/255, green:23/255, blue:23/255, alpha:1.0)
        self.userImage.image = comment.user.image
        self.userImage.isRound = true 
        self.userImage.contentMode = .scaleAspectFill
        self.commentLabel.text = comment.commentText
    }

}

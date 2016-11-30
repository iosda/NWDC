//
//  Event.swift
//  Academy
//
//  Created by Federica Ventriglia on 30/11/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

class Event {
    let title : String
    let image : UIImage
    let date : Date
    
    public init(title: String, image: UIImage, date: Date) {
        self.title = title
        self.image = image
        self.date = date 
    }
}

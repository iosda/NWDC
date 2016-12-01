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
    
    var lectures : [Lecture] = []
    
    public init(title: String, image: UIImage, date: Date) {
        self.title = title
        self.image = image
        self.date = date 
    }
}



class Lecture {
    let title : String
    let image : UIImage
    let date : Date
    let host: User
    
    public init(title: String, image: UIImage, date: Date, host: User) {
        self.title = title
        self.image = image
        self.date = date
        self.host = host
    }
}

class User {
    let name : String
    let image : UIImage
 
    public init(name: String, image: UIImage) {
        self.name = name
        self.image = image
    }
}

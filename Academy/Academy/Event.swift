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
    let location: String
    
    public init(title: String, image: UIImage, date: Date, host: User, location: String) {
        self.title = title
        self.image = image
        self.date = date
        self.host = host
        self.location = location
    }
}

class User {
    let name : String
    let image : UIImage
    let email: String
 
    public init(name: String, image: UIImage, email: String) {
        self.name = name
        self.image = image
        self.email = email
    }
    
}

class Device {
    let uniqueID : Int
    let type: String
    let image: UIImage
    
    public init (uniqueID: Int, type: String, image: UIImage){
        self.uniqueID = uniqueID
        self.type = type
        self.image = image
    }
    
}

class Comment {
    let user: User
    let commentText: String
    
    public init (user: User, commentText: String) {
        self.user = user
        self.commentText = commentText
    }
}

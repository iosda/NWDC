//
//  DatModel.swift
//  Academy
//
//  Created by Federica Ventriglia on 29/11/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

final class DataModel {
    
// MARK 1: to implement
    public static let shared = DataModel()
    
    public var events : [Event] = []
    
    public var lectures : [Lecture] = []
    
    public var me : User = User(name: "Federica", image: UIImage(named: "giacomoIcon")!, email: "gi.le@gmail.com")
    
    public var testEvent = Event(title: "Share Knowledge", image: UIImage(named: "giacomoIcon")!, date: Date())
    public var testEvent2 = Event(title: "Monday 15th", image: UIImage(named:"giacomo1")!, date: Date())
    
    private init() { }
    

    
}

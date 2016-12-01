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
    
    public var me : User = User(name: "Federica", image: UIImage(named: "giacomoIcon")! )
    
    private init() { }
    

    
}

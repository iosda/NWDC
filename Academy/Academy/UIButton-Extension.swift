//
//  UIButton-Extension.swift
//  Academy
//
//  Created by Federica Ventriglia on 01/12/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

extension UIButton {
    @IBInspectable var isRound : Bool {
        get {
            // Check for the layer radius
            return self.imageView?.layer.cornerRadius != 0 ? true : false //self.layer.cornerRadius != 0 ? true : false
        }
        
        set {
            if newValue {
                // Make Round!
            self.layer.cornerRadius = self.layer.bounds.height/2
            } else {
                // False
            self.layer.cornerRadius = 0
            }
        }
    }
}

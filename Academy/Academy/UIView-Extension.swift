//
//  UIView-Extension.swift
//  Academy
//
//  Created by Federica Ventriglia on 02/12/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable var isCurved : Bool {
        get {
            // Check for the layer radius
            return self.layer.cornerRadius != 0 ? true : false //self.layer.cornerRadius != 0 ? true : false
        }
        
        set {
            if newValue {
                // Make Round!
                self.layer.cornerRadius = self.layer.bounds.height*0.1
            } else {
                // False
                self.layer.cornerRadius = 0
            }
        }
    }

}

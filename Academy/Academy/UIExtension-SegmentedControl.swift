//
//  UIExtension-SegmentedControl.swift
//  Academy
//
//  Created by Federica Ventriglia on 01/12/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

extension UISegmentedControl {
    
    
    @IBInspectable var  cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var heightSize: CGFloat {
        get {
            return layer.bounds.height
        }
        set {
            layer.frame.size.height = newValue
        }
    }
    
}

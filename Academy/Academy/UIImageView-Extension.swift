//
//  UIImageView-Extension.swift
//  Academy
//
//  Created by Federica Ventriglia on 02/12/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

extension UIImageView {
    
    @IBInspectable var isRound : Bool {
        get {
            // Check for the layer radius
            return self.layer.cornerRadius != 0 ? true : false
        }
        
        set {
            if newValue {
                // Make Round!
                self.clipsToBounds = true
                self.layer.cornerRadius = self.bounds.height * 0.5
            } else {
                // Make sad...
                self.layer.cornerRadius = 0
            }
        }
    }
    
    // Bounds non è scelto a caso, rispetto a frame
    // Caffè pagato al primo che indovina il perchè
    open override var bounds: CGRect {
        didSet {
            // Se questo viene chiamato, qualcosa (5 euro che sono i constraint) ha modificato il bounds, e noi da
            // bravi precisini aggiorniamo il raggio di curvatura. Ma solo se necessario ovviamente...
            isRound = Bool(isRound)
        }
    }
}

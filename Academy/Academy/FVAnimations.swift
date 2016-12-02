//
//  FVAnimations.swift
//  Academy
//
//  Created by Federica Ventriglia on 02/12/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

final public class FVAnimations {
    
    private init() { }
    
    static public func dissolve(forBuildInOfTheView view: UIView, withDuration duration: TimeInterval = 0.5) {
        DispatchQueue.main.async {
            view.alpha = 0
            
            UIView.animate(withDuration: duration) {
                view.alpha = 1
            }
        }
    }
    
    static public func dissolve(forBuildOutOfTheView view: UIView, withDuration duration: TimeInterval = 0.5) {
        DispatchQueue.main.async {
            UIView.animate(withDuration: duration) {
                view.alpha = 0
            }
        }
    }
    
    static public func slideUp(forItem view: UIView, withDuration duration: TimeInterval = 0.5) {
        DispatchQueue.main.async {
            
            let slideTransformation = CATransform3DTranslate( CATransform3DIdentity, 0, -50, 0)
            view.layer.transform = slideTransformation
            UIView.animate(withDuration: duration, animations: {
                view.layer.transform = CATransform3DIdentity
            })
        }
    }
    
    static public func slideRight(forItem view: UIView, withDuration duration: TimeInterval = 0.5) {
        DispatchQueue.main.async {
            
            let slideTransformation = CATransform3DTranslate( CATransform3DIdentity, -50, 0, 0)
            view.layer.transform = slideTransformation
            UIView.animate(withDuration: duration, animations: {
                view.layer.transform = CATransform3DIdentity
            })
        }
    }
    
    static public func slideDown(forItem view: UIView, withDuration duration: TimeInterval = 0.5) {
        DispatchQueue.main.async {
    
            let slideTransformation = CATransform3DTranslate( CATransform3DIdentity, 0, +50, 0)
            view.layer.transform = slideTransformation
            UIView.animate(withDuration: duration, animations: {
                view.layer.transform = CATransform3DIdentity
            })
        }
    }

    static public func slideLeft(forItem view: UIView, withDuration duration: TimeInterval = 0.5) {
        DispatchQueue.main.async {
            
            let slideTransformation = CATransform3DTranslate( CATransform3DIdentity, +50, 0, 0)
            view.layer.transform = slideTransformation
            UIView.animate(withDuration: duration, animations: {
                view.layer.transform = CATransform3DIdentity
            })
        }
    }

    
}

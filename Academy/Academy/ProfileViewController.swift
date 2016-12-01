//
//  ProfileViewController.swift
//  Academy
//
//  Created by Federica Ventriglia on 29/11/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    /* outlets and variables */
    @IBOutlet weak var segmentControl: UISegmentedControl!
    let screenSize = UIScreen.main.bounds
    @IBOutlet weak var favoritesView: UIView!
    @IBOutlet weak var personalView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setting up the segment control frame
        segmentControl.frame.size.height = screenSize.height*0.06
        segmentControl.frame.size.width = screenSize.width*0.7
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func showComponent(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 0.5, animations: {
                self.favoritesView.alpha = 1.0
                self.personalView.alpha = 0.0
            })
        }
        else {
            UIView.animate(withDuration: 0.5, animations: {
                self.favoritesView.alpha = 0.0
                self.personalView.alpha = 1.0
            })
        }
    }
    
    
}

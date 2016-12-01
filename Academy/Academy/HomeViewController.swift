//
//  HomeViewController.swift
//  Academy
//
//  Created by Federica Ventriglia on 29/11/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    /* outlets and variables */
    @IBOutlet weak var homeTableView: UITableView!
    var numberOfCells = 6
    let cellSpacingHeight: CGFloat = 4
    let cellHeight: CGFloat = 140
    let screenSize: CGRect = UIScreen.main.bounds

    
    var images = [UIImage(named:"giacomo1"),UIImage(named:"gicomo2"),UIImage(named:"giacomo3"),UIImage(named:"giacomo1"),UIImage(named:"gicomo2"),UIImage(named:"giacomo3")]

    override func viewDidLoad() {
        super.viewDidLoad()

        /* adding background color */
        
        homeTableView.backgroundColor = UIColor.clear
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        self.navigationController?.visibleViewController?.navigationItem.title = "Home"
        
        UIView.animate(withDuration: 1.0, animations: {
            self.homeTableView.alpha = 1.0
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /* animation test */
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        homeTableView.alpha = 0.0
    }
    
    
    /* table view functions */
    
    // Number of sections
   func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfCells
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 8
    }
    
    //custom cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell", for: indexPath) as! EventTableViewCell
        
        
        
        let testEvent = Event(title: "Share Knowledge", image: UIImage(named: "giacomoIcon")!, date: Date())
        
        cell.config(forEvent:  testEvent)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return screenSize.height*0.25
    }
    
    // Set the spacing between sections
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 8
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        let cell = tableView.cellForRow(at: indexPath) as? EventTableViewCell
        cell?.contentCellView.layer.borderWidth = 1
        cell?.contentCellView.layer.borderColor = UIColor.white.cgColor

        self.performSegue(withIdentifier: "EventVC", sender: self)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: {
            cell?.contentCellView.layer.borderWidth = 0
        })
        
        return nil
    }
    
    //animation
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
       
        cell.alpha = 0.0
//        
//       let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 10, 0)
//        cell.layer.transform = rotationTransform
//        
        UIView.animate(withDuration: 1.0, animations: {
            cell.alpha = 1.0
            
            //cell.layer.transform = CATransform3DIdentity
        })
    }
    
    
}

//
//  NotificationsViewController.swift
//  Academy
//
//  Created by Federica Ventriglia on 29/11/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

class NotificationsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    /* outlets and variables */
    @IBOutlet weak var notificationsTableView: UITableView!
    var numberOfCells = 6
    var notificationTime: Bool = false
    
    let screenSize: CGRect = UIScreen.main.bounds

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        notificationsTableView.backgroundColor = UIColor.clear
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        self.navigationController?.visibleViewController?.navigationItem.title = "Notifications"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfCells
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "notifCell", for: indexPath) as! NotificationTableViewCell
        
        cell.config()
        
        if notificationTime == true {
            cell.notificationImageView.image = UIImage(named:"notificationTimeImage")
        }
        else {
            cell.notificationImageView.image = UIImage(named: "notificationFileImage")
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return screenSize.height*0.15
    }
    
    
    // animation
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

//
//  SearchViewController.swift
//  Academy
//
//  Created by Federica Ventriglia on 29/11/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    /* outlets and variables */
    @IBOutlet weak var searchTableView: UITableView!
    
    let userCellHeight:CGFloat = 160
    let lectureCellHeight:CGFloat = 200
    let sectionSpacingHeigth: CGFloat = 32
    var numberOfUsers = 2
    var numberOfLectures = 3
    
    let screenSize: CGRect = UIScreen.main.bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        searchTableView.backgroundColor = UIColor.clear
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        self.navigationController?.visibleViewController?.navigationItem.title = "Search"
//        self.navigationController?.navigationItem.title = "Search"
//        self.navigationItem.title = "Search"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /* table view methods */
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return numberOfUsers
        }
        else {
            return numberOfLectures
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as! UserTableViewCell
            cell.config()
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "lectureCell", for: indexPath) as! LectureTableViewCell
            cell.config()
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
        return screenSize.height*0.22
        }
        else {
            return screenSize.height*0.25
        }
    }
    
    // Set the spacing between sections
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return sectionSpacingHeigth
    }
    
    
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        
        if indexPath.section == 0 {
            return nil
        }
        else {
        let cell = tableView.cellForRow(at: indexPath) as? LectureTableViewCell
            cell?.layer.shadowColor = UIColor.white.cgColor
            cell?.layer.shadowOffset = CGSize(width: -1, height: 1)
            
//            cell?.contentView.layer.borderWidth = 1
//            cell?.contentView.layer.borderColor = UIColor.white.cgColor
//          
            performSegue(withIdentifier: "goToLecture", sender: self)
        print("you tapped the cell \(indexPath.row)")
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() +  1, execute: {
            cell?.contentView.layer.shadowColor = UIColor.clear.cgColor
                
            })
            return nil
        }
    }

    
/*
    // Make the background color show through
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
  */ 
    //title section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       tableView.tableHeaderView?.sizeToFit()
        switch section {
        case 0:
            return "USERS"
        case 1:
            return "LECTURES"
            
        default:
            return ""
        }
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

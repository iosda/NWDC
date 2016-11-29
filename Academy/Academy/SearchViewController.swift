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
    
    let userCellHeight:CGFloat = 93
    let lectureCellHeight:CGFloat = 140
    let cellSpacingHeigth: CGFloat = 16
    var numberOfUsers = 2
    var numberOfLectures = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        searchTableView.backgroundColor = UIColor.clear
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
        return userCellHeight
        }
        else {
            return lectureCellHeight
        }
    }
    
    // Set the spacing between sections
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 16
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.section).")
        
        //self.performSegue(withIdentifier: "EventVC", sender: self)
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }

    // Make the background color show through
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
   
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
        tableView.reloadSectionIndexTitles()
    }
   
}

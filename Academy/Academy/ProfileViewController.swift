//
//  ProfileViewController.swift
//  Academy
//
//  Created by Federica Ventriglia on 29/11/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    /* outlets and variables */
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var profileTableView: UITableView!
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var studentLabel: UILabel!
    @IBOutlet weak var classLabel: UILabel!
    @IBOutlet weak var firstLine: UIView!

    
    
    var numberOfCells = 6
    let screenSize = UIScreen.main.bounds
    var showedLectures : [Lecture] = []
    var user = DataModel.shared.me
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setting up the segment control frame
        segmentControl.frame.size.height = screenSize.height*0.06
        
        //setting up the user informations
        self.getUserInfo()
        
    }
    
    func getUserInfo() {
        self.nameLabel.text = self.user.name
        self.profileImage.image = self.user.image
        self.profileImage.layer.cornerRadius = profileImage.bounds.height/2
        self.profileImage.contentMode = .scaleAspectFill
        self.emailLabel.text = self.user.email

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        self.navigationController?.visibleViewController?.navigationItem.title = "Profile"
       
        // Federica Ventriglia Animations 
        
        FVAnimations.dissolve(forBuildInOfTheView: nameLabel, withDuration: 0.2)
        FVAnimations.dissolve(forBuildInOfTheView: profileImage, withDuration: 0.2)
        FVAnimations.dissolve(forBuildInOfTheView: emailLabel, withDuration: 0.4)
        FVAnimations.dissolve(forBuildInOfTheView: studentLabel, withDuration: 0.5)
        FVAnimations.dissolve(forBuildInOfTheView: classLabel, withDuration: 0.6)
        FVAnimations.dissolve(forBuildInOfTheView: firstLine, withDuration: 0.7)
        FVAnimations.dissolve(forBuildInOfTheView: segmentControl, withDuration: 0.8)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return showedLectures.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteCell", for: indexPath) as! LectureTableViewCell
        // cell.config(forLecture: showedLectures[indexPath.row] )
        cell.config()
        return cell
    }
    
    @IBAction func showComponent(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case Index.favourites.rawValue:
            showedLectures = DataModel.shared.lectures.filter({ $0.title == "Ciao" })
            
        case Index.personal.rawValue:
            showedLectures = DataModel.shared.lectures.filter({ $0.host === DataModel.shared.me })
            
        default:
            showedLectures = []
        }
        
            profileTableView.reloadData()
    }
    
    enum Index : Int {
        case favourites = 0
        case personal = 1
    }
    
    // animations 2: cells
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0.0
        
        UIView.animate(withDuration: 0.5, animations: {
            cell.alpha = 1.0
        })
    }
    
}

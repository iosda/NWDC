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
    let screenSize = UIScreen.main.bounds
    @IBOutlet weak var profileTableView: UITableView!
    @IBOutlet weak var profileImage: UIImageView!
    
    var numberOfCells = 6
    
    var showedLectures : [Lecture] = []
    var user = User(name: "Giacomo Leopizzi", image: UIImage(named: "giacomoIcon")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setting up the segment control frame
        segmentControl.frame.size.height = screenSize.height*0.06
        
        //setting up the user informations
        profileImage.layer.cornerRadius = profileImage.bounds.height/2
        profileImage.contentMode = .scaleAspectFill
        profileImage.image = user.image
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        navigationItem.title = "Profile"

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
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteCell", for: indexPath)
        /*
         cell.config(forLecture: showedLectures[indexPath.row] )
         */
        
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
    
}

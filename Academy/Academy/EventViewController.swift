//
//  EventViewController.swift
//  Academy
//
//  Created by Federica Ventriglia on 29/11/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

class EventViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    // outlets and variables
    @IBOutlet weak var dateCollectionView: UICollectionView!
    @IBOutlet weak var lecturesTableView: UITableView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var firstLine: UIView!
    @IBOutlet weak var secondLine: UIView!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var speakersLabel: UILabel!
    let screenSize = UIScreen.main.bounds
    var hasMoved : Bool = false
    
    var numberOfDays = 3
    var days = ["5","6","7"]
    var nameDays = ["M","T","W"]
    
    
   
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        // Federica Ventriglia Animations 
        FVAnimations.dissolve(forBuildInOfTheView: self.titleLabel, withDuration: 0.2)
        FVAnimations.dissolve(forBuildInOfTheView: self.descriptionTextView, withDuration: 0.3)
        FVAnimations.dissolve(forBuildInOfTheView: self.firstLine, withDuration: 0.4)
        FVAnimations.dissolve(forBuildInOfTheView: self.dateCollectionView, withDuration: 0.5)
        FVAnimations.dissolve(forBuildInOfTheView: self.secondLine, withDuration: 0.6)
        FVAnimations.dissolve(forBuildInOfTheView: self.speakersLabel, withDuration: 0.7)
        FVAnimations.dissolve(forBuildInOfTheView: self.lecturesTableView, withDuration: 0.2)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "Event Page"
        self.navigationItem.titleView?.tintColor = UIColor(red: 142/255, green: 142/255, blue: 149/255, alpha: 1.0)

    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfDays
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dateCell", for: indexPath) as! DateCollectionViewCell
        
        cell.dateButton.titleLabel?.textColor = UIColor(red: 142/255, green: 142/255, blue: 142/255, alpha: 1.0)
        cell.dateButton.titleLabel?.text = days[indexPath.row]
        cell.dayLabel.text = nameDays[indexPath.row]
        
        if !hasMoved {
            let indexPath = IndexPath(item: (numberOfDays - 1) / 2, section: 0)
            self.dateCollectionView.scrollToItem(at: indexPath, at: UICollectionViewScrollPosition.centeredHorizontally, animated: false)
            hasMoved = true
        }
        
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let dimension = self.dateCollectionView.bounds.height * 0.88
        return CGSize(width: dimension*0.46 , height: dimension)
    }

    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let smartInset = screenSize.width - 15
        return UIEdgeInsetsMake(0, smartInset, 0, smartInset)
    }
    
    // cell animation
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
      cell.alpha = 0.0
        UIView.animate(withDuration: 1.0, animations: {
            cell.alpha = 1.0
        })
    }
 
    
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 5
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LectureTableViewCell
//        
//        cell.config()
//        return cell
//    }
//    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    
    
}

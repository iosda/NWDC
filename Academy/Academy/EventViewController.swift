//
//  EventViewController.swift
//  Academy
//
//  Created by Federica Ventriglia on 29/11/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

class EventViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    
    @IBOutlet weak var dateCollectionView: UICollectionView!
    @IBOutlet weak var lecturesTableView: UITableView!
    
    let screenSize = UIScreen.main.bounds
    
    var hasMoved : Bool = false
    
    var numberOfDays = 3
    var days = ["5","6","7"]
    var nameDays = ["M","T","W"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfDays
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dateCell", for: indexPath) as! DateCollectionViewCell
        
        
        cell.dateButton.titleLabel?.text = days[indexPath.row]
        cell.dayLabel.text = nameDays[indexPath.row]
        
        if !hasMoved {
            print("DONE _____________________________________________________________________________________")
            let indexPath = IndexPath(item: (numberOfDays - 1) / 2, section: 0)
            self.dateCollectionView.scrollToItem(at: indexPath, at: UICollectionViewScrollPosition.centeredHorizontally, animated: false)
            hasMoved = true
        }
        
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 64 , height: 90)
    }

    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let smartInset = screenSize.width - 15
        return UIEdgeInsetsMake(0, smartInset, 0, smartInset)
    }
   /*
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset = collectionView.bounds.width * (1.0 / CGFloat(numberOfDays) + 1.0)
        
        return UIEdgeInsetsMake(0, inset, 0, inset)
    }*/
//    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
//        
//        let totalCellWidth = CellWidth * CellCount
//        let totalSpacingWidth = CellSpacing * (CellCount - 1)
//        
//        let leftInset = (collectionViewWidth - CGFloat(totalCellWidth + totalSpacingWidth)) / 2;
//        let rightInset = leftInset
//        
//        return UIEdgeInsetsMake(0, leftInset, 0, rightInset)
//    }
//    
    
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

//
//  LectureViewController.swift
//  Academy
//
//  Created by Federica Ventriglia on 29/11/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

class LectureViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var commentsTableView: UITableView!
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var dateAndTimeLabel: UILabel!
    @IBOutlet weak var userIcon: UIImageView!
    let screenSize = UIScreen.main.bounds
    
    @IBOutlet weak var infosHeightConstraint: NSLayoutConstraint!
    let fakeComment = Comment(user: DataModel.shared.me , commentText: "This lecture is very very very very very very very very very very interesting")

    let fakeLecture = Lecture(title: "Vapor", image: UIImage(named:"vapor")!, date: Date(), host: DataModel.shared.me, location: "Board Room")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationItem.title = "Lecture"
        self.navigationItem.title = "Lecture"
        self.commentsTableView.backgroundColor = UIColor.clear
        
        self.setAuthor(forUser: fakeComment.user)

    }

    func setAuthor (forUser user: User) {
        self.userIcon.clipsToBounds = true
        self.userIcon.image = user.image
        self.userIcon.contentMode = .scaleAspectFill

    }
    
    func setDate(forLecture lecture: Lecture) {
       self.dateAndTimeLabel.text = String(describing: lecture.date)
       self.locationLabel.text = lecture.location.capitalized
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        FVAnimations.dissolve(forBuildInOfTheView: infoView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "commentCell", for: indexPath) as! CommentsTableViewCell
        
        //cell.config()
        cell.config(forEvent: fakeComment)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return screenSize.height*0.15
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        FVAnimations.dissolve(forBuildInOfTheView: cell, withDuration: 0.2)
    }
    
    //MARK: UIScrollViewDelegate
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let scrollY = scrollView.contentOffset.y
        
      print(scrollY)
        if scrollY < 0 {
            let scaleRatio = 1 - scrollY / 200
            infoView.transform = CGAffineTransform(scaleX: scaleRatio, y: scaleRatio)
            
        } else if scrollY > 0 {
            let headerHeightMovingSpeed = -scrollY / 2
            let minHeight: CGFloat = view.frame.height * infosHeightConstraint.multiplier / 3
            let constant: CGFloat = view.frame.height * infosHeightConstraint.multiplier - minHeight
            
            infosHeightConstraint.constant = max(-constant, headerHeightMovingSpeed)
            view.layoutIfNeeded()
        }
    }
    

    
    
}

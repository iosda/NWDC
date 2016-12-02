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
    let screenSize = UIScreen.main.bounds
    
    let fakeComment = Comment(user: DataModel.shared.me , commentText: "This lecture is very very very very very very very very very very interesting")

    let fakeLecture = Lecture(title: "Vapor", image: UIImage(named:"vapor")!, date: Date(), host: DataModel.shared.me)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationItem.title = "Lecture"
        self.navigationItem.title = "Lecture"
        self.commentsTableView.backgroundColor = UIColor.clear
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
        return 50
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
        FVAnimations.dissolve(forBuildInOfTheView: cell)
    }

    
}

//
//  PersonalView.swift
//  Academy
//
//  Created by Federica Ventriglia on 01/12/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

class PersonalView: UIViewController,UITableViewDataSource,UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personalCell", for: indexPath)
        return cell
    }


}

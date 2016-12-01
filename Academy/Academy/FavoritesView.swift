//
//  FavoritesView.swift
//  Academy
//
//  Created by Federica Ventriglia on 01/12/2016.
//  Copyright © 2016 Federica Ventriglia. All rights reserved.
//

import UIKit

class FavoritesView: UIView,UITableViewDelegate,UITableViewDataSource {

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteCell", for: indexPath)
        return cell
    }
    
}

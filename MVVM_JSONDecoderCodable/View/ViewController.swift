//
//  ViewController.swift
//  MVVM_JSONDecoderCodable
//
//  Created by GlobalLogic on 01/08/20.
//  Copyright © 2020 Apurva Gaikwad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    var userviewModel = UserViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        userviewModel.vc = self
        userviewModel.getAllUserData()
        tableview.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")
    }
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        userviewModel.arrUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as? UserCell
        let modelUser = userviewModel.arrUsers[indexPath.row]
        cell?.modelUser = modelUser
        return cell!
    }
}

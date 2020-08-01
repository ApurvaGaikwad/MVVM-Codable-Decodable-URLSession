//
//  UserViewModel.swift
//  MVVM_JSONDecoderCodable
//
//  Created by GlobalLogic on 01/08/20.
//  Copyright © 2020 Apurva Gaikwad. All rights reserved.
//

import UIKit

class UserViewModel {
    weak var vc: ViewController? // to avoid retain cycle
    var arrUsers = [UserModel]()
    
    func getAllUserData() {
        URLSession.shared.dataTask(with: URL(string: "https://5e99a9b1bc561b0016af3540.mockapi.io/jet2/api/v1/blogs?page=%201&limit=10")!) { (data, response, error) in
            if error == nil {
                if let data = data {
                    do {
                        let userResponse = try JSONDecoder().decode([UserModel].self, from: data)
                        print(userResponse)
//                        for modelUser in userResponse {
//                            self.arrUsers.append(modelUser)
//                        }
                        self.arrUsers.append(contentsOf: userResponse)
                        print(self.arrUsers)
                        DispatchQueue.main.async {
                            self.vc?.tableview.reloadData()
                        }
                    } catch let err {
                        print(err.localizedDescription)
                    }
                }
            } else {
                print(error?.localizedDescription)
            }
        }.resume()
    }
}



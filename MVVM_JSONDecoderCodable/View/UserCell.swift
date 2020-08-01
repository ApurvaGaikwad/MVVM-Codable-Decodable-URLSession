//
//  UserCell.swift
//  MVVM_JSONDecoderCodable
//
//  Created by GlobalLogic on 01/08/20.
//  Copyright © 2020 Apurva Gaikwad. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {
    
    @IBOutlet weak var contentsLabel: UILabel!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var commentslabel: UILabel!
    var modelUser: UserModel? {
        didSet {
            setConfiguration()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setConfiguration() {
        if let comment = modelUser?.comments, let like = modelUser?.likes, let content = modelUser?.content {
            commentslabel.text = "\(comment)"
            likesLabel.text = "\(like)"
            contentsLabel.text = content
        } else {
            commentslabel.text = "No comments"
            likesLabel.text = "No likes"
            contentsLabel.text = "No content"
        }
    }
    
}

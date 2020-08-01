//
//  UserModel.swift
//  MVVM_JSONDecoderCodable
//
//  Created by GlobalLogic on 01/08/20.
//  Copyright © 2020 Apurva Gaikwad. All rights reserved.
//


import Foundation
import UIKit

struct UserModel : Codable {
    let id : String?
    let createdAt : String?
    let content : String?
    let comments : Int?
    let likes : Int?
    let media : [Media]?
    let user : [User]?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case createdAt = "createdAt"
        case content = "content"
        case comments = "comments"
        case likes = "likes"
        case media = "media"
        case user = "user"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
        content = try values.decodeIfPresent(String.self, forKey: .content)
        comments = try values.decodeIfPresent(Int.self, forKey: .comments)
        likes = try values.decodeIfPresent(Int.self, forKey: .likes)
        media = try values.decodeIfPresent([Media].self, forKey: .media)
        user = try values.decodeIfPresent([User].self, forKey: .user)
    }

//    func getStatusColor () -> (String, UIColor) {
//
//    }
}

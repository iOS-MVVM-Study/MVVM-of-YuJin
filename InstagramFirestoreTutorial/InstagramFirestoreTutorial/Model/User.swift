//
//  User.swift
//  InstagramFirestoreTutorial
//
//  Created by 이유진 on 2022/03/17.
//

import Foundation

struct User {
    let email: String
    let fullname: String
    let profileImageUrl: String
    let userName: String
    let uid: String
    
    init(dictionary: [String: Any]){
        self.email = dictionary["email"] as? String ?? ""
        self.fullname = dictionary["fullName"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.userName = dictionary["userName"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
}

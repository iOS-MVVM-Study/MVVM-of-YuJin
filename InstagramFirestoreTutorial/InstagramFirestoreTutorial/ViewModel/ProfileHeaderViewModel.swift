//
//  ProfileHeaderViewModel.swift
//  InstagramFirestoreTutorial
//
//  Created by 이유진 on 2022/03/17.
//

import Foundation

struct ProfileHeaderViewModel{
    let user: User
    
    var fullname: String{
        return user.fullname
    }
    
    var profileImageUrl: URL?{
        return URL(string: user.profileImageUrl)
    }
    
    init(user: User) {
        self.user = user
    }
}

//
//  AuthService.swift
//  InstagramFirestoreTutorial
//
//  Created by 이유진 on 2022/03/04.
//

import UIKit
import Firebase

struct AuthCredentials{
    let email: String
    let password: String
    let fullName: String
    let userName: String
    let profileImage: UIImage
}

struct AuthService {
    static func registerUser(withCredential credentials: AuthCredentials,
                             completion: @escaping(Error?) -> Void){
        ImageUploader.uploadImage(image: credentials.profileImage){ imageUrl in
            Auth.auth().createUser(withEmail: credentials.email,
                                   password: credentials.password){ (result, error) in
                if let error = error{
                    print("DEBUG : Falied to registerUser \(error.localizedDescription)")
                    return
                }
                guard let uid = result?.user.uid else { return }
                let data: [String: Any] = ["email" : credentials.email,
                                           "fullName": credentials.fullName,
                                           "profileImageUrl" : imageUrl,
                                           "uid" : uid,
                                           "userName" : credentials.userName]
                Firestore.firestore().collection("users").document(uid).setData(data, completion: completion)
            }
        }
    }
}

//
//  User.swift
//  KatFish
//
//  Created by Leandro Nunez on 12/1/16.
//  Copyright © 2016 Jermaine Kelly. All rights reserved.
//

import Foundation
import SwiftyJSON



class User {
    let gender: String
    let name: String
    let location: String
    let email: String
    let login: String
    let registered: String
    let dob: String
    let phone: String
    let call: String
    let id: String
    let picture: String
    let nat: String
    
    init(gender: String, name: String, location: String, email: String, login: String, registered: String, dob: String, phone: String, call: String, id: String, picture: String, nat: String) {
        self.gender = gender
        self.name = name
        self.location = location
        self.email = email
        self.login = login
        self.registered = registered
        self.dob = dob
        self.phone = phone
        self.call = call
        self.id = id
        self.picture = picture
        self.nat = nat
        }
    //trying to push
    func getUsers(from data: Data) -> [Users]? {
        Alamofire.request(.GET, url).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
            case .failure(let error):
                print(error)
            }
        }
        return nil
        
    }
}

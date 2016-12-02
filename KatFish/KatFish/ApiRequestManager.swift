//
//  ApiRequestManager.swift
//  KatFish
//
//  Created by Jermaine Kelly on 12/1/16.
//  Copyright © 2016 Jermaine Kelly. All rights reserved.
//

import Foundation
import Alamofire

enum UserGender: String{
    case male, female
    case both = ""
}

class ApiRequestManager{
    static let manager: ApiRequestManager = ApiRequestManager()
    private init() {}
    
    static func getUsers(results: Int = 25, gender: UserGender = .both, completion: @escaping (Data?)->()){
        Alamofire.request("https://randomuser.me/api/?results=\(results)&gender=\(gender)").response { (response) in
            
            completion(response.data)
        }
    }
}

//
//  UserCollectionViewCell.swift
//  KatFish
//
//  Created by Simone on 12/1/16.
//  Copyright © 2016 Jermaine Kelly. All rights reserved.
//

import UIKit

class UserCollectionViewCell: UICollectionViewCell {
    //Added a static variable for cellIdentifier. Feel free to change it here and storyboard
    static let cellIdentifier: String = "userCell"
//didset update ui
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userPhoto: UIImageView!
    
//uifunctionfor labels
    
}

//
//  ViewController.swift
//  KatFish
//
//  Created by Jermaine Kelly on 12/1/16.
//  Copyright © 2016 Jermaine Kelly. All rights reserved.
//

import UIKit


class KatUserHomeViewController: UIViewController,  UICollectionViewDelegate, UICollectionViewDataSource {
    var people: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        buildPeopleArray
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "reuseIdentifier", for: indexPath) as? UserCollectionViewCell
        
        // Configure the cell
        
        return cell!
    }
    
    func buildPeopleArray(){
        ApiRequestManager.getUsers(results: 10, gender: .female) { (userData) in
            if let userData = userData{
                print("we got data \(userData)")
                self.people = User.getUsers(userData)
            }
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    
}


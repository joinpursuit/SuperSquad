//
//  ViewController.swift
//  KatFish
//
//  Created by Jermaine Kelly on 12/1/16.
//  Copyright © 2016 Jermaine Kelly. All rights reserved.
//

import UIKit

class KatUserHomeViewController: UIViewController,  UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var usersCollectionView: UICollectionView!
    
    var users: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Made the view controller the delegate and datasource for the collection view
        usersCollectionView.dataSource = self
        usersCollectionView.delegate = self
        // Do any additional setup after loading the view.
        buildUsersArray()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return users.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: UserCollectionViewCell.cellIdentifier, for: indexPath) as! UserCollectionViewCell
        
        // Configure the cell
        let user = users[indexPath.section]
        cell.userName.text = user.name
        
        return cell
    }
    
    func buildUsersArray(){
        ApiRequestManager.getUsers() { (userData) in
            if let userData = userData{
                print("we got data \(userData)")
                if let validUsers = User.makeUserObjects(from: userData){
                    self.users = validUsers
                    DispatchQueue.main.async {
                        self.usersCollectionView.reloadData()
                    }
                }
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


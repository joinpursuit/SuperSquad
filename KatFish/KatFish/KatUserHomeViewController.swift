//
//  ViewController.swift
//  KatFish
//
//  Created by Jermaine Kelly on 12/1/16.
//  Copyright © 2016 Jermaine Kelly. All rights reserved.
//

import UIKit

class KatUserHomeViewController: UIViewController,  UICollectionViewDelegate, UICollectionViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createLogo()
    }
    
    func createLogo() {
        let logoWidth = 250
        let logoHeight = 60
        let imageView = UIImageView(frame: CGRect(x: 200, y: 50, width: logoWidth, height: logoHeight))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "smallLogo.png")
        imageView.image = image
        
        navigationItem.titleView = imageView
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
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    


}


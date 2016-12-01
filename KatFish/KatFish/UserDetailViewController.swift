//
//  UserDetailViewController.swift
//  KatFish
//
//  Created by Simone on 12/1/16.
//  Copyright © 2016 Jermaine Kelly. All rights reserved.
//

import UIKit
import TwicketSegmentedControl

class UserDetailViewController: UIViewController {
    
    @IBOutlet weak var mainUserPhoto: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //segmented control
        let titles = ["Stats", "Address", "Contact"]
        let frame = CGRect(x: 5, y: view.frame.height / 2 - 20, width: view.frame.width - 10, height: 40)
        
        let segmentedControl = TwicketSegmentedControl(frame: frame)
        segmentedControl.setSegmentItems(titles)
        
        view.addSubview(segmentedControl)
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

extension UserDetailViewController: TwicketSegmentedControlDelegate {
    func didSelect(_ segmentIndex: Int) {
        print("Selected idex: \(segmentIndex)")
    }
}

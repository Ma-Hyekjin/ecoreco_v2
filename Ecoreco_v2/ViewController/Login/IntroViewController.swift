//
//  IntroViewController.swift
//  Ecoreco_v2
//
//  Created by 마혁진 on 2022/10/16.
//

import UIKit

class IntroViewController: UIViewController {
    
    
    @IBAction func moveToMarket(_ sender: UIButton) {
        let storeViewController = storyboard?.instantiateViewController(identifier: "StoreVC") as! StoreViewController
        
        self.navigationController?.pushViewController(storeViewController, animated: true)
    }
    
    @IBAction func moveToCommunity(_ sender: UIButton) {
        let communityViewController = storyboard?.instantiateViewController(identifier: "CommunityVC") as! CommunityViewController
        
        self.navigationController?.pushViewController(communityViewController, animated: true)
    }
    

    @IBAction func moveToEvent(_ sender: UIButton) {
        
    }
    
    @IBAction func moveToHome(_ sender: UIButton) {
        let homeViewController = storyboard?.instantiateViewController(identifier: "HomeVC") as! HomeViewController
        
        self.navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

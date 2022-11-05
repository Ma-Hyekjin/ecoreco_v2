//
//  MyPageViewController.swift
//  Ecoreco_v2
//
//  Created by 마혁진 on 2022/10/16.
//

import UIKit

class MyPageViewController: UIViewController {
    
    
    @IBAction func goToExplain(_ sender: UIButton) {
        let LevelViewController = storyboard?.instantiateViewController(identifier: "LevelVC") as! ExplainLevelViewController
        self.navigationController?.pushViewController(LevelViewController, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

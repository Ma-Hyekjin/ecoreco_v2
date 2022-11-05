//
//  LikesBrandViewController.swift
//  Ecoreco_v2
//
//  Created by 마혁진 on 2022/11/05.
//

import UIKit

class LikesBrandViewController: UIViewController {
    
    
    @IBAction func goToProduct(_ sender: UIButton) {
//        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyBoard.instantiateViewController(withIdentifier: "LikesVC") as! LikesViewController
//        vc.modalPresentationStyle = .overCurrentContext
//        self.present(vc, animated: false, completion: nil)
        
//        self.dismiss(animated: false, completion: nil)
        self.navigationController?.popViewController(animated: false)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

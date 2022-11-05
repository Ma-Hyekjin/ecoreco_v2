//
//  LikesViewController.swift
//  Ecoreco_v2
//
//  Created by 마혁진 on 2022/10/16.
//

import UIKit

class LikesViewController: UIViewController {

    @IBAction func goToBrand(_ sender: UIButton) {
//        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyBoard.instantiateViewController(withIdentifier: "BrandVC") as! LikesBrandViewController
//        vc.modalPresentationStyle = .overCurrentContext
//        self.present(vc, animated: false, completion: nil)
//        
        let brandViewController = storyboard?.instantiateViewController(identifier: "BrandVC") as! LikesBrandViewController
        self.navigationController?.pushViewController(brandViewController, animated: false)
    }
    @IBAction func goToProductPage(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "FirstProductVC") as! FirstProductViewController
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

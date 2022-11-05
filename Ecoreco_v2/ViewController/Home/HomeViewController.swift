//
//  HomeViewController.swift
//  Ecoreco_v2
//
//  Created by 마혁진 on 2022/10/16.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var firstBox: UIView!
    
    @IBOutlet weak var secondBox: UIView!
    
    @IBOutlet weak var thirdBox: UIView!
    
//    @IBOutlet weak var forthBox: UIView!
    
    @IBOutlet weak var fifthBox: UIView!

    
    @IBAction func goToVeganAttest(_ sender: UIButton) {
        let veganViewController = storyboard?.instantiateViewController(identifier: "VeganVC") as! VeganViewController
        
        self.navigationController?.pushViewController(veganViewController, animated: true)
        
    }
    
    @IBAction func goToNature(_ sender: UIButton) {
        //뷰컨 제작 후 기입
    }
    
    
    @IBAction func goToCrueltyFree(_ sender: UIButton) {
    }
    
    @IBAction func goToPackaging(_ sender: UIButton) {
    }
    
    
    
    @IBAction func goToStandard(_ sender: UIButton) {
        let standardViewController = storyboard?.instantiateViewController(identifier: "StandardVC") as! StandardViewController
        
        self.navigationController?.pushViewController(standardViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

//
//  UserInfoViewController.swift
//  Ecoreco_v2
//
//  Created by 마혁진 on 2022/10/16.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    var count1 : Bool = false
    var count2 : Bool = false
    var count3 : Bool = false
    var count4 : Bool = false
    var count5 : Bool = false
    var count6 : Bool = false
    var count7 : Bool = false
    var count8 : Bool = false
    var count9 : Bool = false
    var count10 : Bool = false
    
    var nickname : String = "" //NicknameView의 Nickname을 이어받아야함.
    
    //MARK:- Actions
  
    @IBAction func BackButtonDidTap(_ sender: UIButton) {        self.navigationController?.popViewController(animated: true)
    }
    
        //버튼 클릭 시 색상 변경 구현
    
    @IBOutlet weak var veganButton: UIButton!
    @IBAction func veganButtonDidTap(_ sender: UIButton) {

        if self.count1 == false {
            UIView.animate(withDuration: 0.1){
                self.veganButton.backgroundColor = UIColor.ecorecoColor2
                self.veganButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count1 = true
        } else {
            UIView.animate(withDuration: 0.1){
                self.veganButton.backgroundColor = UIColor.brightenGray
                self.veganButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count1 = false
        }
    }
    
    @IBOutlet weak var natureButton: UIButton!
    @IBAction func natureButtonDidTap(_ sender: UIButton) {
        if self.count2 == false {
            UIView.animate(withDuration: 0.1){
                self.natureButton.backgroundColor = UIColor.ecorecoColor2
                self.natureButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count2 = true
        } else {
            UIView.animate(withDuration: 0.1){
                self.natureButton.backgroundColor = UIColor.brightenGray
                self.natureButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count2 = false
        }
    }
    
    @IBOutlet weak var crueltyFreeButton: UIButton!
    @IBAction func crueltyFreeButtonDidTap(_ sender: UIButton) {
        if self.count3 == false {
            UIView.animate(withDuration: 0.1){
                self.crueltyFreeButton.backgroundColor = UIColor.ecorecoColor2
                self.crueltyFreeButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count3 = true
        } else {
            UIView.animate(withDuration: 0.1){
                self.crueltyFreeButton.backgroundColor = UIColor.brightenGray
                self.crueltyFreeButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count3 = false
        }
    }
    
    @IBOutlet weak var packageButton: UIButton!
    @IBAction func packageButtonDidTap(_ sender: UIButton) {
        if self.count4 == false {
            UIView.animate(withDuration: 0.1){
                self.packageButton.backgroundColor = UIColor.ecorecoColor2
                self.packageButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count4 = true
        } else {
            UIView.animate(withDuration: 0.1){
                self.packageButton.backgroundColor = UIColor.brightenGray
                self.packageButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count4 = false
        }
    }
    
    @IBOutlet weak var plasticFreeButton: UIButton!
    @IBAction func plasticFreeButtonDidTap(_ sender: UIButton) {
        if self.count5 == false {
            UIView.animate(withDuration: 0.1){
                self.plasticFreeButton.backgroundColor = UIColor.ecorecoColor2
                self.plasticFreeButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count5 = true
        } else {
            UIView.animate(withDuration: 0.1){
                self.plasticFreeButton.backgroundColor = UIColor.brightenGray
                self.plasticFreeButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count5 = false
        }
    }
    
    
    @IBOutlet weak var oceanButton: UIButton!
    @IBAction func oceanButtonDidTap(_ sender: UIButton) {
        if self.count6 == false {
            UIView.animate(withDuration: 0.1){
                self.oceanButton.backgroundColor = UIColor.ecorecoColor2
                self.oceanButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count6 = true
        } else {
            UIView.animate(withDuration: 0.1){
                self.oceanButton.backgroundColor = UIColor.brightenGray
                self.oceanButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count6 = false
        }
    }
    
    @IBOutlet weak var hormonesButton: UIButton!
    @IBAction func hormonesButtonDidTap(_ sender: UIButton) {
        if self.count7 == false {
            UIView.animate(withDuration: 0.1){
                self.hormonesButton.backgroundColor = UIColor.ecorecoColor2
                self.hormonesButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count7 = true
        } else {
            UIView.animate(withDuration: 0.1){
                self.hormonesButton.backgroundColor = UIColor.brightenGray
                self.hormonesButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count7 = false
        }
    }
    
    @IBOutlet weak var nanoPlasticFreeButton: UIButton!
    @IBAction func nanoPlasticFreeButtonDidTap(_ sender: UIButton) {
        if self.count8 == false {
            UIView.animate(withDuration: 0.1){
                self.nanoPlasticFreeButton.backgroundColor = UIColor.ecorecoColor2
                self.nanoPlasticFreeButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count8 = true
        } else {
            UIView.animate(withDuration: 0.1){
                self.nanoPlasticFreeButton.backgroundColor = UIColor.brightenGray
                self.nanoPlasticFreeButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count8 = false
        }
    }

    
    @IBAction func NextButtonDidTap(_ sender: UIButton) {
        
        let introViewController = storyboard?.instantiateViewController(identifier: "IntroVC") as! IntroViewController
        self.navigationController?.pushViewController(introViewController, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK:- Helpers

}

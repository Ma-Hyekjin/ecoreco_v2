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
//        sender.backgroundColor = sender.backgroundColor == UIColor.brightenGray ? UIColor.ecorecoColor2 : UIColor.brightenGray
        if self.count1 == true {
            UIView.animate(withDuration: 0.1){
                self.veganButton.backgroundColor = UIColor.ecorecoColor2
                self.veganButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count1 = false
        } else {
            UIView.animate(withDuration: 0.1){
                self.veganButton.backgroundColor = UIColor.brightenGray
                self.veganButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count1 = true
        }
    }
    
    @IBOutlet weak var refillStationButton: UIButton!
    @IBAction func refillStationuButtonDidTap(_ sender: UIButton) {
        if self.count2 == true {
            UIView.animate(withDuration: 0.1){
                self.refillStationButton.backgroundColor = UIColor.ecorecoColor2
                self.refillStationButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count2 = false
        } else {
            UIView.animate(withDuration: 0.1){
                self.refillStationButton.backgroundColor = UIColor.brightenGray
                self.refillStationButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count2 = true
        }
    }
    
    @IBOutlet weak var dailyButton: UIButton!
    @IBAction func dailyButtonDidTap(_ sender: UIButton) {
        if self.count3 == true {
            UIView.animate(withDuration: 0.1){
                self.dailyButton.backgroundColor = UIColor.ecorecoColor2
                self.dailyButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count3 = false
        } else {
            UIView.animate(withDuration: 0.1){
                self.dailyButton.backgroundColor = UIColor.brightenGray
                self.dailyButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count3 = true
        }
    }
    
    @IBOutlet weak var kitchenButton: UIButton!
    @IBAction func kitchenButtonDidTap(_ sender: UIButton) {
        if self.count4 == true {
            UIView.animate(withDuration: 0.1){
                self.kitchenButton.backgroundColor = UIColor.ecorecoColor2
                self.kitchenButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count4 = false
        } else {
            UIView.animate(withDuration: 0.1){
                self.kitchenButton.backgroundColor = UIColor.brightenGray
                self.kitchenButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count4 = true
        }
    }
    
    @IBOutlet weak var upCyclingButton: UIButton!
    @IBAction func upCyclingButtonDidTap(_ sender: UIButton) {
        if self.count5 == true {
            UIView.animate(withDuration: 0.1){
                self.upCyclingButton.backgroundColor = UIColor.ecorecoColor2
                self.upCyclingButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count5 = false
        } else {
            UIView.animate(withDuration: 0.1){
                self.upCyclingButton.backgroundColor = UIColor.brightenGray
                self.upCyclingButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count5 = true
        }
    }
    
    
    @IBOutlet weak var bathButton: UIButton!
    @IBAction func bathButtonDidTap(_ sender: UIButton) {
        if self.count6 == true {
            UIView.animate(withDuration: 0.1){
                self.bathButton.backgroundColor = UIColor.ecorecoColor2
                self.bathButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count6 = false
        } else {
            UIView.animate(withDuration: 0.1){
                self.bathButton.backgroundColor = UIColor.brightenGray
                self.bathButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count6 = true
        }
    }
    
    @IBOutlet weak var foodButton: UIButton!
    @IBAction func foodButtonDidTap(_ sender: UIButton) {
        if self.count7 == true {
            UIView.animate(withDuration: 0.1){
                self.foodButton.backgroundColor = UIColor.ecorecoColor2
                self.foodButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count7 = false
        } else {
            UIView.animate(withDuration: 0.1){
                self.foodButton.backgroundColor = UIColor.brightenGray
                self.foodButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count7 = true
        }
    }
    
    @IBOutlet weak var plasticFreeButton: UIButton!
    @IBAction func plasticFreeButtonDidTap(_ sender: UIButton) {
        if self.count8 == true {
            UIView.animate(withDuration: 0.1){
                self.plasticFreeButton.backgroundColor = UIColor.ecorecoColor2
                self.plasticFreeButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count8 = false
        } else {
            UIView.animate(withDuration: 0.1){
                self.plasticFreeButton.backgroundColor = UIColor.brightenGray
                self.plasticFreeButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count8 = true
        }
    }
    
    @IBOutlet weak var cosmeticsButton: UIButton!
    @IBAction func cosmeticsButtonDidTap(_ sender: UIButton) {
        if self.count9 == true {
            UIView.animate(withDuration: 0.1){
                self.cosmeticsButton.backgroundColor = UIColor.ecorecoColor2
                self.cosmeticsButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count9 = false
        } else {
            UIView.animate(withDuration: 0.1){
                self.cosmeticsButton.backgroundColor = UIColor.brightenGray
                self.cosmeticsButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count9 = true
        }
    }
    

    @IBOutlet weak var cafeButton: UIButton!
    @IBAction func cafeButtonDidTap(_ sender: UIButton) {
        if self.count10 == true {
            UIView.animate(withDuration: 0.1){
                self.cafeButton.backgroundColor = UIColor.ecorecoColor2
                self.cafeButton.setTitleColor(UIColor.white, for: .normal)
            }
            self.count10 = false
        } else {
            UIView.animate(withDuration: 0.1){
                self.cafeButton.backgroundColor = UIColor.brightenGray
                self.cafeButton.setTitleColor(UIColor.black, for: .normal)
            }
            self.count10 = true
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

//
//  StoreViewController.swift
//  Ecoreco_v2
//
//  Created by 마혁진 on 2022/10/16.
//

import UIKit

class StoreViewController: UIViewController {
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
    var get1 : Bool = false
    var get2 : Bool = false
    var get3 : Bool = false
    var get4 : Bool = false
    var get5 : Bool = false
    var get6 : Bool = false
    var get7 : Bool = false
    var get8 : Bool = false
    
    
    @IBOutlet weak var addToCart1: UIView!
    @IBAction func addToCartTab(_ sender: UIButton) {
        if self.get1 == true {
            self.get1 = false
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "popVC") as! PopUpViewController
            vc.modalPresentationStyle = .overCurrentContext
            self.present(vc, animated: true, completion: nil)
            UIView.animate(withDuration: 0.1){
                self.addToCart1.backgroundColor = UIColor.customedEco
            }
        } else {
            self.get1 = true
            UIView.animate(withDuration: 0.1){
                self.addToCart1.backgroundColor = UIColor.customedWhite
            }
        }
    }
    
    @IBOutlet weak var addToCart2: UIView!
    @IBAction func AddToCartTab2(_ sender: UIButton) {
        if self.get2 == true {
            self.get2 = false
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let popUpViewController2 = storyboard.instantiateViewController(withIdentifier: "popVC2")
            popUpViewController2.modalPresentationStyle = .overCurrentContext
            self.present(popUpViewController2, animated: true, completion: nil)
            
            UIView.animate(withDuration: 0.1){
                self.addToCart2.backgroundColor = UIColor.customedEco
            }
        } else {
            self.get2 = true
            UIView.animate(withDuration: 0.1){
                self.addToCart2.backgroundColor = UIColor.customedWhite
            }
        }
    }
    
    
    @IBAction func goToCart(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let paymentViewController = storyboard.instantiateViewController(withIdentifier: "payVC")
        paymentViewController.modalPresentationStyle = .overCurrentContext
        self.present(paymentViewController, animated: true, completion: nil)

        
    }
    
    @IBOutlet weak var skinCare: UIButton!
    @IBAction func skinCareButton(_ sender: UIButton) {
        if self.count3 == true {
            self.count3 = false
            UIView.animate(withDuration: 0.1){
                self.skinCare.backgroundColor = UIColor.ecorecoColor2
                self.skinCare.setTitleColor(UIColor.white, for: .normal)
            }
        } else {
            self.count3 = true
            UIView.animate(withDuration: 0.1){
                self.skinCare.backgroundColor = UIColor.brightenGray
                self.skinCare.setTitleColor(UIColor.black, for: .normal)
            }
        }
    }
    
    @IBOutlet weak var wash: UIButton!
    @IBAction func washButton(_ sender: UIButton) {
        if self.count5 == true {
            self.count5 = false
            UIView.animate(withDuration: 0.1){
                self.wash.backgroundColor = UIColor.ecorecoColor2
                self.wash.setTitleColor(UIColor.white, for: .normal)
            }
        } else {
            self.count5 = true
            UIView.animate(withDuration: 0.1){
                self.wash.backgroundColor = UIColor.brightenGray
                self.wash.setTitleColor(UIColor.black, for: .normal)
            }
        }
    }
    
    @IBOutlet weak var multi: UIButton!
    @IBAction func multiButton(_ sender: UIButton) {
        if self.count5 == true {
            self.count5 = false
            UIView.animate(withDuration: 0.1){
                self.multi.backgroundColor = UIColor.ecorecoColor2
                self.multi.setTitleColor(UIColor.white, for: .normal)
            }
        } else {
            self.count5 = true
            UIView.animate(withDuration: 0.1){
                self.multi.backgroundColor = UIColor.brightenGray
                self.multi.setTitleColor(UIColor.black, for: .normal)
            }
        }
        
    }
    
    @IBOutlet weak var other: UIButton!
    @IBAction func otherButton(_ sneder: UIButton) {
        if self.count6 == true {
            self.count6 = false
            UIView.animate(withDuration: 0.1){
                self.other.backgroundColor = UIColor.ecorecoColor2
                self.other.setTitleColor(UIColor.white, for: .normal)
            }
        } else {
            self.count6 = true
            UIView.animate(withDuration: 0.1){
                self.other.backgroundColor = UIColor.brightenGray
                self.other.setTitleColor(UIColor.black, for: .normal)
            }
        }
    }
    
    
    @IBOutlet weak var eco: UIButton!
    @IBAction func ecoButton(_ sender: UIButton) {
        if self.count7 == true {
            self.count7 = false
            UIView.animate(withDuration: 0.1){
                self.eco.backgroundColor = UIColor.ecorecoColor2
                self.eco.setTitleColor(UIColor.white, for: .normal)
            }
        } else {
            self.count7 = true
            UIView.animate(withDuration: 0.1){
                self.eco.backgroundColor = UIColor.brightenGray
                self.eco.setTitleColor(UIColor.black, for: .normal)
            }
        }
        
    }
    
    
    @IBOutlet weak var vegan: UIButton!
    @IBAction func veganButton(_ sender: UIButton) {
        if self.count8 == true {
            self.count8 = false
            UIView.animate(withDuration: 0.1){
                self.vegan.backgroundColor = UIColor.ecorecoColor2
                self.vegan.setTitleColor(UIColor.white, for: .normal)
            }
        } else {
            self.count8 = true
            UIView.animate(withDuration: 0.1){
                self.vegan.backgroundColor = UIColor.brightenGray
                self.vegan.setTitleColor(UIColor.black, for: .normal)
            }
        }
    }
    
    
    @IBOutlet weak var cruelty: UIButton!
    @IBAction func crueltyButton(_ sender: UIButton) {
        if self.count9 == true {
            self.count9 = false
            UIView.animate(withDuration: 0.1){
                self.cruelty.backgroundColor = UIColor.ecorecoColor2
                self.cruelty.setTitleColor(UIColor.white, for: .normal)
            }
        } else {
            self.count9 = true
            UIView.animate(withDuration: 0.1){
                self.cruelty.backgroundColor = UIColor.brightenGray
                self.cruelty.setTitleColor(UIColor.black, for: .normal)
            }
        }
    }
    
    
    @IBOutlet weak var reuse: UIButton!
    @IBAction func reuseButton(_ sender: UIButton) {
        if self.count10 == true {
            UIView.animate(withDuration: 0.1){
                self.reuse.backgroundColor = UIColor.ecorecoColor2
                self.reuse.setTitleColor(UIColor.white, for: .normal)
                self.count10 = false
            }
        } else {
            self.count10 = true
            UIView.animate(withDuration: 0.1){
                self.reuse.backgroundColor = UIColor.brightenGray
                self.reuse.setTitleColor(UIColor.black, for: .normal)
            }
        }
        
    }
    
    
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    @IBAction func goToFirstProductPage(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "FirstProductVC") as! FirstProductViewController
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchBar.backgroundImage = UIImage() //선 제거
    }
    
}

//
//  PaymentViewController.swift
//  Ecoreco_v2
//
//  Created by 마혁진 on 2022/11/01.
//

import UIKit

class PaymentViewController: UIViewController {

    var whole: Bool = false
    var count1: Bool = false
    var count2: Bool = false
    
    let price1 = 12000
    let price2 = 25000
    let discount1 = -2000
    let discount2 = -3000
    var sumPrice = 0
    var sumDiscount = 0
    var wholePrice = 0
    
    @IBOutlet weak var firstBox: UIView!
    @IBOutlet weak var secondBox: UIView!
    @IBOutlet weak var price1Label: UILabel!
    @IBOutlet weak var price2Label: UILabel!
    @IBOutlet weak var sumOfPrice: UILabel!
    @IBOutlet weak var sumOfDiscount: UILabel!
    @IBOutlet weak var wholeOfPrice: UILabel!
    
    
    func summing() {
        if count1 == true && count2 == true {
            sumPrice = price1 + price2
            sumDiscount = discount1 + discount2
            wholePrice = sumPrice + sumDiscount
        } else if count1 == false && count2 == true  {
                sumPrice = price2
                sumDiscount = discount2
                wholePrice = sumPrice + sumDiscount
        } else if count1 == true && count2 == false {
            sumPrice = price1
            sumDiscount = discount1
            wholePrice = sumPrice + sumDiscount
        } else {
                sumPrice = 0
                sumDiscount = 0
                wholePrice = 0
        }
        self.sumOfPrice.text = "\(sumPrice)원"
        self.sumOfDiscount.text = "\(sumDiscount)원"
        self.wholeOfPrice.text = "\(wholePrice)원"
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var wholeSelect: UIButton!
    @IBAction func WholeSelectOnOff(_ sender: UIButton) {
        if self.whole == true {
            self.whole = false
            self.count1 = false
            self.count2 = false
            UIView.animate(withDuration: 0.1){
                self.firstSelect.tintColor = UIColor.lightGray
                self.secondSelect.tintColor = UIColor.lightGray
                self.wholeSelect.tintColor = UIColor.lightGray
            }
        } else {
            self.whole = true
            self.count1 = true
            self.count2 = true
            UIView.animate(withDuration: 0.1){
                self.firstSelect.tintColor = UIColor.ecorecoColor2
                self.secondSelect.tintColor = UIColor.ecorecoColor2
                self.wholeSelect.tintColor = UIColor.ecorecoColor2
            }
        }
        summing()
    }
    
    
    @IBOutlet weak var firstSelect: UIButton!
    @IBAction func FirstSelectOnOff(_ sender: UIButton) {
        if self.count1 == true {
            self.count1 = false
        UIView.animate(withDuration: 0.1){
            self.firstSelect.tintColor = UIColor.lightGray
            
        }
            
        } else {
            self.count1 = true
            UIView.animate(withDuration: 0.1){
                self.firstSelect.tintColor = UIColor.ecorecoColor2
            }
        }
        summing()
    }
    
    @IBOutlet weak var secondSelect: UIButton!
    @IBAction func SecondSelectOnOff(_ sender: UIButton) {
        if self.count2 == true {
        self.count2 = false
        UIView.animate(withDuration: 0.1){
            self.secondSelect.tintColor = UIColor.lightGray
            }
        } else {
        self.count2 = true
        UIView.animate(withDuration: 0.1){
            self.secondSelect.tintColor = UIColor.ecorecoColor2
            }
        }
        summing()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}

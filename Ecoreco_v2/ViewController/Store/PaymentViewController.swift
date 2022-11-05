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
    
    var stCounter = 1
    var ndCounter = 1
    var price1 = 12000
    var price2 = 25000
    var discount1 = -2000
    var discount2 = -3000
    var sumPrice = 0
    var sumDiscount = 0
    var wholePrice = 0
    
    @IBOutlet weak var firstBox: UIView!
    @IBOutlet weak var secondBox: UIView!
    @IBOutlet weak var price1Label: UILabel!
    @IBOutlet weak var price2Label: UILabel!
    @IBOutlet weak var discount1Label: UILabel!
    @IBOutlet weak var discount2Label: UILabel!
    @IBOutlet weak var sumOfPrice: UILabel!
    @IBOutlet weak var sumOfDiscount: UILabel!
    @IBOutlet weak var wholeOfPrice: UILabel!
    @IBOutlet weak var resultCounter: UILabel!
    
    
    func summing() {
        if count1 == true && count2 == true {
            sumPrice = price1*stCounter + price2*ndCounter
            sumDiscount = discount1 + discount2
            wholePrice = sumPrice + sumDiscount
            self.resultCounter.text = "총 \(stCounter+ndCounter)개"
        } else if count1 == false && count2 == true  {
            sumPrice = price2*ndCounter
            sumDiscount = discount2
            wholePrice = sumPrice + sumDiscount
            self.resultCounter.text = "총 \(stCounter+ndCounter)개"
            
        } else if count1 == true && count2 == false {
            sumPrice = price1*stCounter
            sumDiscount = discount1
            wholePrice = sumPrice + sumDiscount
            self.resultCounter.text = "총 \(stCounter+ndCounter)개"
        } else {
                sumPrice = 0
                sumDiscount = 0
                wholePrice = 0
            self.resultCounter.text = "총 0개"
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
    
    @IBOutlet weak var stCount: UILabel!
    @IBAction func stPlus(_ sender: UIButton) {
        self.stCounter = stCounter + 1
        self.stCount.text = String(stCounter)
        self.price1Label.text = "\(price1*stCounter)원"
        summing()
    }
    @IBAction func stMinus(_ sender: UIButton) {
        if stCounter>2 {
            self.stCounter = stCounter - 1
            self.stCount.text = String(stCounter)
            self.price1Label.text = "\(price1*stCounter)원"
            summing()
        }
        else {
            self.stCounter = 1
            self.stCount.text = String(stCounter)
            self.price1Label.text = "\(price1*stCounter)원"
            summing()
        }
    }
    
    @IBOutlet weak var ndCount: UILabel!
    @IBAction func ndPlus(_ sender: Any) {
        self.ndCounter = ndCounter + 1
        self.ndCount.text = String(ndCounter)
        self.price2Label.text = "\(price2*ndCounter)원"
        summing()
    }
    
    @IBAction func ndMinus(_ sender: Any) {
        if ndCounter>2 {
            self.ndCounter = ndCounter - 1
            self.ndCount.text = String(ndCounter)
            self.price2Label.text = "\(price2*ndCounter)원"
            summing()
        }
        else {
            self.ndCounter = 1
            self.ndCount.text = String(ndCounter)
            self.price2Label.text = "\(price2*ndCounter)원"
            summing()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.price1Label.text = "12000원"
        self.price2Label.text = "25000원"
        self.discount1Label.text = "-2000원"
        self.discount2Label.text = "-3000원"
        self.resultCounter.text = "총 0개"
    }
    

}

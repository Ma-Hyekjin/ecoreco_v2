//
//  PopUpViewController.swift
//  Ecoreco_v2
//
//  Created by 마혁진 on 2022/11/01.
//

import UIKit

class PopUpViewController: UIViewController {
    
    var countNumber = 1
    let price = 12000
    
    @IBOutlet weak var countingLabel: UILabel!
    @IBOutlet weak var displayPrices: UIButton!
    
    @IBAction func plusItem(_ sender: UIButton) {
        countNumber = countNumber + 1
        self.countingLabel.text = String(countNumber)
        self.displayPrices.setTitle("\(countNumber*price)원  |  장바구니에 담기", for: .normal)
        
    }
    @IBAction func MinusItem(_ sender: UIButton) {
        if countNumber >= 2 {
            countNumber = countNumber - 1
        } else {
            countNumber = 1
        }
        self.countingLabel.text = String(countNumber)
        self.displayPrices.setTitle("\(countNumber*price)원  |  장바구니에 담기", for: .normal)
    }
    
    @IBAction func discardItem(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func inCart(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

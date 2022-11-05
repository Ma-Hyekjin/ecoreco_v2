//
//  FirstProductViewController.swift
//  Ecoreco_v2
//
//  Created by 마혁진 on 2022/11/04.
//

import UIKit

class FirstProductViewController: UIViewController {
    
    var likes: Bool = false
    
    
    @IBAction func goToCart(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let paymentViewController = storyboard.instantiateViewController(withIdentifier: "payVC")
        paymentViewController.modalPresentationStyle = .overCurrentContext
        self.present(paymentViewController, animated: true, completion: nil)
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func PopUpButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let popupViewController = storyboard.instantiateViewController(withIdentifier: "popVC")
        popupViewController.modalPresentationStyle = .overCurrentContext
        self.present(popupViewController, animated: true, completion: nil)
    }
    
    @IBOutlet weak var LikesButton: UIButton!
    @IBAction func likesButtonDidTap(_ sender: UIButton) {
        UIView.animate(withDuration: 0.33){
            if self.likes == false {
                self.likes = true
                self.LikesButton.backgroundColor = UIColor.ecorecoColor2
                self.LikesButton.tintColor = UIColor.white
            } else {
                self.likes = false
                self.LikesButton.backgroundColor = UIColor.white
                self.LikesButton.tintColor = UIColor.ecorecoColor2
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

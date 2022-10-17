//
//  FirstViewController.swift
//  Ecoreco_v2
//
//  Created by 마혁진 on 2022/10/16.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //로그인 창으로 이동
    @IBAction func loginBttonDidTap(_ sender: UIButton) {
        let loginViewController = storyboard?.instantiateViewController(identifier: "LoginVC") as! LoginViewController
        self.navigationController?.pushViewController(loginViewController, animated: true)
    }
    //회원가입 창으로 이동
    @IBAction func registerButtonDidTap(_ sender: UIButton) {
        let registerViewController = storyboard?.instantiateViewController(identifier: "RegisterVC") as! RegisterViewController
        self.navigationController?.pushViewController(registerViewController, animated: true)
    }
    
    //인트로 창으로 이동
    @IBAction func skipButtonDidTap(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let introViewcontroller = storyboard.instantiateViewController(identifier: "IntroVC") as! IntroViewController
        self.navigationController?.pushViewController(introViewcontroller, animated: true)
    }
}

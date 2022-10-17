//
//  LoginViewController.swift
//  Ecoreco_v2
//
//  Created by 마혁진 on 2022/10/16.
//

import UIKit

class LoginViewController: UIViewController {

    var email = String()
    var password = String()
    var userInfo: UserInfo?
    
    func warningMessage() {
        // 경고창 내용 박스 생성
        let alert = UIAlertController(title: "이메일 혹은 비밀번호가 옳지 않습니다", message: "", preferredStyle: UIAlertController.Style.alert)
        // 확인 버튼 생성
        let cancle = UIAlertAction(title: "확인", style: .default, handler: nil)
        // 경고창 + 확인 버튼 합치기
        alert.addAction(cancle)
        // 보이기
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    
    @IBAction func emailTextFieldEditingChanged(_ sender: UITextField) {
        let text = sender.text ?? ""
        self.email = text
    }
    
    

    @IBAction func passwordEdtingChanged(_ sender: UITextField) {
        let text = sender.text ?? ""
        self.password = text
    }
    
    
    @IBAction func loginButtonDidTap(_ sender: UIButton) {

        let adminEmail = "admin@eco.reco"
        let adminPassword = "Eco!reco"
        if email == adminEmail && password == adminPassword {
            //로그인을 했다면 Home으로 연결. 둘러보기를 했다면 intro로 연결. 일회성으로 intro로 연결해야하는데 찾아봐야함.
            let tabViewController = storyboard?.instantiateViewController(identifier: "TabVC") as! UITabBarController
            self.navigationController?.pushViewController(tabViewController, animated: true)
        } else {
            warningMessage()
        }
    }
    
    @IBAction func backButtonDidTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

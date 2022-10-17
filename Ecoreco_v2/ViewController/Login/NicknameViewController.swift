//
//  NicknameViewController.swift
//  Ecoreco_v2
//
//  Created by 마혁진 on 2022/10/16.
//

import UIKit

class NicknameViewController: UIViewController {

    
    var Nickname: String = ""
    
    var userNickname: ((Nick) -> Void)?
    
    @IBOutlet weak var NicknameTextField: UITextField!
    
    @IBAction func nicknameTextFieldEditingChanged(_ sender: UITextField) {
        self.Nickname = sender.text ?? ""
    }
    
    @IBOutlet weak var NextButton: UIButton!
    
    @IBAction func NextButtonDidTap(_ sender: UIButton) {
        if(Nickname.count >= 2){
            let userinfoViewController = storyboard?.instantiateViewController(identifier: "InfoVC") as! UserInfoViewController

            userinfoViewController.nickname = Nickname

            self.navigationController?.pushViewController(userinfoViewController, animated: true)
        } else {
            warningMessage()
        }
    }
    
    @IBAction func BackButtonDidTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    //MARK:- Actions
    func warningMessage() {
        // 경고창 내용 박스 생성
        let alert = UIAlertController(title: "다른 별명을 입력해주세요!", message: "", preferredStyle: UIAlertController.Style.alert)
        // 확인 버튼 생성
        let cancle = UIAlertAction(title: "확인", style: .default, handler: nil)
        // 경고창 + 확인 버튼 합치기
        alert.addAction(cancle)
        // 보이기
        present(alert, animated: true, completion: nil)
        
    }
    //MARK:- Helpers


}


//
//  RegisterViewController.swift
//  Ecoreco_v2
//
//  Created by 마혁진 on 2022/10/16.
//

import UIKit

class RegisterViewController: UIViewController {
    //MARK:- Properties
    var name: String = ""
    var birth: String = ""
    var email: String = ""
    var password: String = ""
    
    var userInfo: ((UserInfo) -> Void)?
    
    @IBOutlet weak var signupButton: UIButton!
    
    // 유효성 검사
    
    var isValidName = false {
        didSet {
            self.validateUserInfo()
        }
    }
    var isValidBirth = false {
        didSet {
            self.validateUserInfo()
        }
    }
    var isValidEmail = false {
        didSet {
            self.validateUserInfo()
        }
    }
    var isValidPassword = false {
        didSet {
            self.validateUserInfo()
        }
    }

    
    // TextFields
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var birthTextFiedld: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    var textFields: [UITextField] {
        [nameTextField, birthTextFiedld, emailTextField, passwordTextField]
    }
    
    
    //MARK:- Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextField()
        // 드래그로 되돌아가기 버그 해결
        self.navigationController?.interactivePopGestureRecognizer?.delegate = nil

    }
    
    //MARK:- Actions
    @objc
    func textFieldEditingChanged(_ sender: UITextField) {
        let text = sender.text ?? ""
        
        switch sender {
        case nameTextField:
            self.isValidName = text.count >= 2
            self.name = text
            print(name)
            
        case birthTextFiedld:
            self.isValidBirth = (text.count == 8)
            self.birth = text
            print(birth)
        
        case emailTextField:
            self.isValidEmail = text.isValidEmail()
            self.email = text
            print(email)
            
        case passwordTextField:
            self.isValidPassword = text.isValidPassword()
            self.password = text
            print(password)
        default:
            fatalError("Missing text box!")
        }
    }

    
    @IBAction func registerButtonDidTap(_ sender: UIButton) {
        let nicknameViewController = storyboard?.instantiateViewController(identifier: "NicknameVC") as! NicknameViewController
        
        self.navigationController?.pushViewController(nicknameViewController, animated: true)
        
        let userInfo = UserInfo(name: self.name, birth: self.birth, email: self.email, password: self.password)
        
        self.userInfo?(userInfo)
        
    }
    
    @IBAction func backButtonDidTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    //MARK:- Helpers
    
    private func setupTextField() {
        textFields.forEach() { tf in tf.addTarget(self, action: #selector(textFieldEditingChanged(_:)), for: .editingChanged)}
    }
    
    
    private func validateUserInfo() {
        if isValidName && isValidBirth && isValidEmail && isValidPassword {
            self.signupButton.isEnabled = true
            UIView.animate(withDuration: 0.33){
                self.signupButton.backgroundColor = UIColor.ecorecoColor2
            }
        } else {
            self.signupButton.isEnabled = false
            UIView.animate(withDuration: 0.33){
                self.signupButton.backgroundColor = UIColor.disabledButtonColor
            }
        }
    }
}

extension String {
    //대문자, 소문자, 특수문자, 숫자, 8자 이상일 때 True
    func isValidPassword() -> Bool {
        let regularExpression = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[$@$!%*?&])[A-Za-z\\d$@$!%*?&]{8,}"
        
        let passwordValidation = NSPredicate.init(format: "SELF MATCHES %@", regularExpression)
        
        return passwordValidation.evaluate(with: self)
        
    }
    // @이 있고, 2자 이상일 때 True
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        
        return emailTest.evaluate(with: self)
    }
}

//
//  JoinViewController.swift
//  MyRealTrip
//
//  Created by H on 2018. 8. 13..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit
import Alamofire
import FBSDKCoreKit
import FBSDKLoginKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var signUpNameTextField: UITextField!
    @IBOutlet weak var signUpEmailTextField: UITextField!
    @IBOutlet weak var signUpPassWordTextField: UITextField!
    @IBOutlet weak var signUpRePassWordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUpButton.layer.cornerRadius = 2
        signUpButton.layer.masksToBounds = true
     
    }
    
    @IBAction func didTapSignUpButton(_ sender: UIButton) {
        print("=========== didTapSignUpButton ===========")
        let parameter: [String: Any] = [
            "username": signUpNameTextField.text!,
            "email": signUpEmailTextField.text!,
            "password": signUpPassWordTextField.text!
            //            "password": signUpPassWordTextField
        ]
        guard let signUpNameTextFieldText = signUpNameTextField.text else { return }
        guard let signUpEmailTextFieldText = signUpEmailTextField.text else { return }
        guard let signUpPassWordTextFieldText = signUpPassWordTextField.text else { return }
        guard let signUpRePassWordTextFieldText = signUpRePassWordTextField.text else { return }
        
        guard signUpNameTextFieldText != "" else {
            let alert = UIAlertController(title: "오류", message: "이름을 입력해주세요.", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "확인", style: .destructive)
            
            alert.addAction(alertAction)
            present(alert, animated: false, completion: nil)
            
            return }
        
        guard signUpEmailTextFieldText != "" else {
            let alert = UIAlertController(title: "오류", message: "이메일을 입력해주세요.", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "확인", style: .destructive)
            
            alert.addAction(alertAction)
            present(alert, animated: false, completion: nil)
            
            return }
        
        guard signUpPassWordTextFieldText != "" else {
            let alert = UIAlertController(title: "오류", message: "비밀번호를 입력해주세요.", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "확인", style: .destructive)
            
            alert.addAction(alertAction)
            present(alert, animated: false, completion: nil)
            
            return }
        
        guard signUpRePassWordTextFieldText != "" else {
            let alert = UIAlertController(title: "오류", message: "비밀번호 확인을 입력해주세요.", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "확인", style: .destructive)
            
            alert.addAction(alertAction)
            present(alert, animated: false, completion: nil)
            
            return }
        
        
        if signUpPassWordTextFieldText == signUpRePassWordTextFieldText {
            let url = "http://myrealtrip-project.ap-northeast-2.elasticbeanstalk.com/api/members/"
            
            Alamofire.request(url, method: .post, parameters: parameter).response { (response) in
                let data = response.data
                print(data)
                
                let jsonObject = try! JSONSerialization.jsonObject(with: data!)
                let jsonDictionary = jsonObject as! [String: Any]
                print("========== { Response } ==========")
                print(jsonDictionary)
                
                self.navigationController?.popViewController(animated: true)
                
            }
        } else {
            let alert = UIAlertController(title: "오류", message: "비밀번호가 일치하지 않음", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "확인", style: .destructive)
            
            alert.addAction(alertAction)
            present(alert, animated: false, completion: nil)
            
        }
        
    }
}

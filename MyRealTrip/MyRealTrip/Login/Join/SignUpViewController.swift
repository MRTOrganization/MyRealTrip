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
    
    @IBOutlet weak var allConsentButton: UIButton!
    @IBOutlet weak var signupConditionsButton: UIButton!
    @IBOutlet weak var personalInformationCollectionButton: UIButton!
    @IBOutlet weak var locationConditionButton: UIButton!
    @IBOutlet weak var marketingConditionButton: UIButton!
    @IBOutlet weak var emailConditionButton: UIButton!
    @IBOutlet weak var smsConditionButton: UIButton!
    @IBOutlet weak var pushConditionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    @IBAction func didTapSignUpButton(_ sender: UIButton) {
        print("=========== didTapSignUpButton ===========")
        let parameter: [String: Any] = [
            "username": signUpNameTextField.text!,
            "email": signUpEmailTextField.text!,
            "password": signUpPassWordTextField.text!
            //            "password": signUpPassWordTextField
        ]
        
        if signUpPassWordTextField.text! == signUpRePassWordTextField.text! {
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

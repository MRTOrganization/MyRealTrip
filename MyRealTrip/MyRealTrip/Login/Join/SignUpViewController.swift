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
    }
}

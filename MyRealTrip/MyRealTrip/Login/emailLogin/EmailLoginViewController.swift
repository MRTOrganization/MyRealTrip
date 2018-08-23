//
//  EmailLoginViewController.swift
//  MyRealTrip
//
//  Created by H on 2018. 8. 19..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit
import Alamofire

class EmailLoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var emailLoginButton: UIButton!
    @IBOutlet weak var forgetPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailLoginButton.layer.cornerRadius = 2
        emailLoginButton.layer.masksToBounds = true
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapEmailLoginButton(_ sender: UIButton) {
        
        let url = "http://myrealtrip-project.ap-northeast-2.elasticbeanstalk.com/api/members/auth-token/"
        
        let parameter: [String: Any] = [
            "username": emailTextField.text!,
            "password": passwordTextField.text!
        ]
        
        guard let emailTextFieldText = emailTextField.text else { return }
        guard emailTextFieldText != "" else {
            
            let alert = UIAlertController(title: "오류", message: "이메일을 입력해주세요.", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "확인", style: .destructive)
            
            alert.addAction(alertAction)
            present(alert, animated: false, completion: nil)
            
            return }
        
        guard let passwordTextFieldText = passwordTextField.text else { return }
        guard passwordTextFieldText != "" else {
            
            let alert = UIAlertController(title: "오류", message: "비밀번호를 입력해주세요.", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "확인", style: .destructive)
            
            alert.addAction(alertAction)
            present(alert, animated: false, completion: nil)
            
            return }
        
        
        Alamofire.request(url, method: .post, parameters: parameter).responseData { (response) in
            switch response.result {
                
            case .success(let value):
                do {
                    //                    let data = response.data
                    let jsonObject = try! JSONSerialization.jsonObject(with: value)
                    let jsonDictionary = jsonObject as! [String: Any]
                    print("========== { Response } ==========")
                    print(jsonDictionary)
                    
                    let alert = UIAlertController(title: "확인", message: "로그인 되었습니다.", preferredStyle: .alert)
                    let alertAction = UIAlertAction(title: "확인", style: .destructive)
                    
                    alert.addAction(alertAction)
                    self.present(alert, animated: false, completion: nil)
                    }
                
            case .failure(let error):
                print("===============Error================", error)
            }
        }
    }
}





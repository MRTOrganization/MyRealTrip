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
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
        
        Alamofire.request(url, method: .post, parameters: parameter).response { (response) in
            let data = response.data
            
            let jsonObject = try! JSONSerialization.jsonObject(with: data!)
            let jsonDictionary = jsonObject as! [String: Any]
            print("========== { Response } ==========")
            print(jsonDictionary)
        }
        
    }
    
}

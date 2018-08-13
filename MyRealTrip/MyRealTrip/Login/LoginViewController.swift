//
//  LoginViewController.swift
//  MyRealTrip
//
//  Created by H on 2018. 8. 3..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBSDKLoginButton()
        
        loginButton.readPermissions = ["public_profile","email","user_friends"]
        
        print(FBSDKAccessToken.currentAccessTokenIsActive())
        let facebookView = FBSDKProfilePictureView.init(frame: CGRect(x: 20, y: 20, width: 50, height: 50))
        view.addSubview(facebookView)
    }

    @IBAction func loginTestButton(_ sender: FBSDKLoginButton) {
        print(FBSDKAccessToken.current().tokenString)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}



//
//  ParkSelectViewController.swift
//  MyRealTrip
//
//  Created by H on 2018. 8. 21..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit
import Alamofire

class ParkSelectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
let url = "http://myrealtrip-project.ap-northeast-2.elasticbeanstalk.com/api/khotels/Japan/Osaka/"
        Alamofire.request(url, method: .get).response { (response) in
            let data = response.data
            
            let jsonObject = try! JSONSerialization.jsonObject(with: data!)
            print(jsonObject)
        }

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

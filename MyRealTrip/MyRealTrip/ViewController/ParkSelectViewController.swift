//
//  ParkSelectViewController.swift
//  MyRealTrip
//
//  Created by H on 2018. 8. 22..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit
import Alamofire

struct Location {
    var country: String
    var city: String
}

class ParkSelectViewController: UIViewController {
    
    struct Park: Codable {
        var name: String
        var thumbnail: String
        var comments: String
        var price: String
    }
    let decoder = JSONDecoder()
    
    let url = "http://myrealtrip-project.ap-northeast-2.elasticbeanstalk.com/api/khotels/Japan/Osaka/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request(url, method: .get).validate().responseJSON { (response) in
            //            print(response)
//            let data = response.data
//            let jsonData = try! JSONSerialization.jsonObject(with: data!)
//            let jsonDictionary = try! response.data as! [String: Any]
//            print(jsonDictionary)
//            let park = try? self.decoder.decode(Park.self, from: jsonData as! Data)
//            print(park?.name)
        }
        
        
    }
    
    
    
}





//
//  AirlineTicketSearchViewController.swift
//  MyRealTrip
//
//  Created by sanghyuk on 2018. 8. 21..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import WebKit

class AirlineTicketSearchViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet private weak var searchWebView: WKWebView!
    
    let url = "http://myrealtrip-project.ap-northeast-2.elasticbeanstalk.com/api/flights/"
    
    var origin: String = ""
    var destination: String = ""
    var depart_date: String = ""
    var return_date: String = ""
    var searchParams: [String:Any] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("search View did load")
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("search View will appear")
        print("받은 데이터 : \(searchParams)")
        searchAirlineTicket()
    }
    
    func searchAirlineTicket() {
        Alamofire
            .request(url, method: .post, parameters: searchParams, encoding: JSONEncoding.default)
            .validate()
            .responseJSON{ (response) in
                switch response.result {
                case .success(let value):
                    print("success")
                    let json = JSON(value)
                    print(json["url"].string!)
                    if json["url"].string != nil {
                        let searchUrl = URL(string: json["url"].string!)!
                        self.searchWebView.load(URLRequest(url: searchUrl))
                        self.searchWebView.allowsBackForwardNavigationGestures = true
                    }
                case .failure:
                    print("failure")
                }
        }
    }
}

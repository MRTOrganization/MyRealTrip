//
//  HotelWebViewController.swift
//  MyRealTrip
//
//  Created by H on 2018. 8. 18..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit
import SafariServices

class HotelWebViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "https://www.apple.com") else { return }
        let safariViewController = SFSafariViewController(url: url)
        present(safariViewController, animated: true, completion: nil)
        
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

//
//  LodgingViewController.swift
//  MyRealTrip
//
//  Created by H on 2018. 7. 31..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit
import Alamofire
import SafariServices

class LodgingViewController: UIViewController {
    
  
    @IBOutlet weak var selectButtonView: UIView!
    @IBOutlet weak var hotelSearchButton: UIButton!
    @IBOutlet weak var bannerButton: UIButton!
    
    
    var views: [UIView?] = []
//    var hotelButtonView: UIView!
//    var parkButtonView: UIView!
    
    let lineWidth: CGFloat = 0.5
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectButtonView.layer.cornerRadius = 4
        selectButtonView.layer.masksToBounds = true
        
        views = [UIView]()
        views.append(HotelButtonView().view)
        views.append(ParkButtonView().view)

        for v in views {
            selectButtonView.addSubview(v!)
        }
        selectButtonView.bringSubview(toFront: views[0]!)
        

        //        hotelButtonView = HotelButtonView().view
//        parkButtonView = ParkButtonView().view
//        SelectButtonView.addSubview(hotelButtonView)
//        SelectButtonView.addSubview(parkButtonView)
        
//        hotelSearchButton.backgroundColor = UIColor.cyan
//        hotelSearchButton.titleLabel?.textColor = UIColor.white
//        locationView.layer.borderWidth = lineWidth
//        calenderView.layer.borderWidth = lineWidth
//        personView.layer.borderWidth = lineWidth
        
        
  
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapHotelButton(_ sender: UIButton) {
        print("Hotel OK")
        selectButtonView.bringSubview(toFront: views[0]!)
    }
    
    @IBAction func didTapParkButton(_ sender: UIButton) {
        print("Park OK")
        selectButtonView.bringSubview(toFront: views[1]!)
        
    }
    
    @IBAction func didTapLocationButton(_ sender: UIButton) {
        print("Location OK")
//        present(LocationSelectViewController(), animated: true)
      
        let storyboard: UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "LocationSelectViewController")
        present(nextView, animated: true, completion: nil)
    }
    @IBAction func didTapCalenderButton(_ sender: UIButton) {
        print("Calender OK")
    }
    
    @IBAction func didTapPersonButton(_ sender: UIButton) {
        print("Person OK")
        let storyboard = UIStoryboard(name: "LodgingView", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PersonalSelectViewController")
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func didTapSearchButton(_ sender: UIButton) {
        print("Search OK")
      
        guard let url = URL(string: "https://www.booking.com") else { return }
        let safariViewController = SFSafariViewController(url: url)
        present(safariViewController, animated: true, completion: nil)
        
    }
    
    @IBAction func didTapBannerbutton(_ sender: UIButton) {
        print("Banner OK")
    }
}

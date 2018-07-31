//
//  LodgingViewController.swift
//  MyRealTrip
//
//  Created by H on 2018. 7. 31..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit

class LodgingViewController: UIViewController {

    @IBOutlet weak var lodgingLabel: UILabel!
    @IBOutlet weak var hotelSearchButton: UIButton!
    @IBOutlet weak var bannerButton: UIButton!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var calenderLabel: UILabel!
    @IBOutlet weak var locationView: UIView!
    @IBOutlet weak var calenderView: UIView!
    @IBOutlet weak var personView: UIView!
    let lineWidth: CGFloat = 0.5
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hotelSearchButton.backgroundColor = UIColor.cyan
        hotelSearchButton.titleLabel?.textColor = UIColor.white
        locationView.layer.borderWidth = lineWidth
        calenderView.layer.borderWidth = lineWidth
        personView.layer.borderWidth = lineWidth
    
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didTapLocationButton(_ sender: UIButton) {
        print("Location OK")
    }
    @IBAction func didTapCalenderButton(_ sender: UIButton) {
        print("Calender OK")
    }
    
    @IBAction func didTapPersonButton(_ sender: UIButton) {
        print("Person OK")
    }
    
    @IBAction func didTapSearchButton(_ sender: UIButton) {
        print("Search OK")
    }
    
    @IBAction func didTapBannerbutton(_ sender: UIButton) {
        print("Banner OK")
    }
}

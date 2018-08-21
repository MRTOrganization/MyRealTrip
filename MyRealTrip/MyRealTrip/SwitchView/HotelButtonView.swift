//
//  HotelButtonView.swift
//  MyRealTrip
//
//  Created by H on 2018. 8. 20..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit

class HotelButtonView: UIViewController, SendDataDelegate {
    func sendData(data: String) {
        locationLabel.text = data
    }
    
    
   
    
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var locationButton: UIButton!
    @IBOutlet weak var calenderLabel: UILabel!
    @IBOutlet weak var calenderButton: UIButton!
    @IBOutlet weak var personLabel: UILabel!
    @IBOutlet weak var personButton: UIButton!

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "HotelButtonView" {
            let viewController : LodgingViewController = segue.destination as! LodgingViewController
            viewController.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
                locationButton.setTitle("", for: .normal)
                calenderButton.setTitle("", for: .normal)
                personButton.setTitle("", for: .normal)
        
                locationLabel.text = "여행지 또는 숙소명"
                locationLabel.textColor = UIColor.gray
       
     
        
    }
    
    

 
    
    @IBAction func didTapLocationButton(_ sender: UIButton) {
    }
    
    
    @IBAction func didTapCalenderButton(_ sender: UIButton) {
    }
    
    @IBAction func didTapPersonButton(_ sender: UIButton) {
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

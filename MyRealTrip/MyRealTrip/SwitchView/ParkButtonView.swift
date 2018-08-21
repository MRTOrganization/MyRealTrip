//
//  ParkButtonView.swift
//  MyRealTrip
//
//  Created by H on 2018. 8. 20..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit

class ParkButtonView: UIViewController {
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    @IBOutlet weak var fifthButton: UIButton!
    @IBOutlet weak var sixthButton: UIButton!
    @IBOutlet weak var seventhButton: UIButton!
    @IBOutlet weak var eighthButton: UIButton!
    @IBOutlet weak var ninthButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstButton.setTitle("오사카", for: .normal)
        firstButton.setTitleColor(UIColor.black, for: .normal)
        firstButton.layer.borderWidth = 0.5
        
        secondButton.setTitle("로마", for: .normal)
        secondButton.setTitleColor(UIColor.black, for: .normal)
        secondButton.layer.borderWidth = 0.5
        
        thirdButton.setTitle("런던", for: .normal)
        thirdButton.setTitleColor(UIColor.black, for: .normal)
        thirdButton.layer.borderWidth = 0.5
        
        fourthButton.setTitle("파리", for: .normal)
        fourthButton.setTitleColor(UIColor.black, for: .normal)
        fourthButton.layer.borderWidth = 0.5
        
        fifthButton.setTitle("바르셀로나", for: .normal)
        fifthButton.setTitleColor(UIColor.black, for: .normal)
        fifthButton.layer.borderWidth = 0.5
        
        sixthButton.setTitle("프라하", for: .normal)
        sixthButton.setTitleColor(UIColor.black, for: .normal)
        sixthButton.layer.borderWidth = 0.5
        
        seventhButton.setTitle("로스엔젤레스", for: .normal)
        seventhButton.setTitleColor(UIColor.black, for: .normal)
        seventhButton.layer.borderWidth = 0.5
        
        eighthButton.setTitle("마드리드", for: .normal)
        eighthButton.setTitleColor(UIColor.black, for: .normal)
        eighthButton.layer.borderWidth = 0.5
        
        ninthButton.setTitle("피렌체", for: .normal)
        ninthButton.setTitleColor(UIColor.black, for: .normal)
        ninthButton.layer.borderWidth = 0.5

        
        
        
        
        // Do any additional setup after loading the view.
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

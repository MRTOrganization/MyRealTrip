//
//  PersonalSelectViewController.swift
//  MyRealTrip
//
//  Created by H on 2018. 8. 20..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit

class PersonalSelectViewController: UIViewController {
    
    @IBOutlet weak var selectView: UIView!
    @IBOutlet weak var backgroundButton: UIButton!
    @IBOutlet weak var dismissButton: UIButton!
    
    @IBOutlet weak var countAdultLabel: UILabel!
    @IBOutlet weak var countKidLabel: UILabel!
    @IBOutlet weak var countRoomLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        selectView.layer.cornerRadius = 5
        selectView.layer.masksToBounds = true
    // Do any additional setup after loading the view.
        
        countAdultLabel.text = "2"
        countKidLabel.text = "0"
        countRoomLabel.text = "1"
        
}

    @IBAction func didTapBackgroundButton(_ sender: UIButton) {
    dismiss(animated: true)
    }
    @IBAction func didTapDismissButton(_ sender: UIButton) {
    dismiss(animated: true)
    }
    
    
    @IBAction func didTapAddAudultButton(_ sender: UIButton) {
        let count = Int(countAdultLabel.text!)! + 1
        countAdultLabel.text = String(count)
    }
    
    @IBAction func didTapMinusAudultButton(_ sender: UIButton) {
        if Int(countAdultLabel.text!)! > 0 {
        let count = Int(countAdultLabel.text!)! - 1
            countAdultLabel.text = String(count)
        } else { return }
    }
    
    @IBAction func didTapAddKidButton(_ sender: UIButton) {
        let count = Int(countKidLabel.text!)! + 1
        countKidLabel.text = String(count)
    }
    
    @IBAction func didTapMinusKidButton(_ sender: UIButton) {
        if Int(countKidLabel.text!)! > 0 {
            let count = Int(countKidLabel.text!)! - 1
            countKidLabel.text = String(count)
        } else { return }
    }
    
    @IBAction func didTapAddRoomButton(_ sender: UIButton) {
        let count = Int(countRoomLabel.text!)! + 1
        countRoomLabel.text = String(count)
    }
    @IBAction func didTapMinusRoomButton(_ sender: UIButton) {
        if Int(countRoomLabel.text!)! > 0 {
            let count = Int(countRoomLabel.text!)! - 1
            countRoomLabel.text = String(count)
        } else { return }
    }
}

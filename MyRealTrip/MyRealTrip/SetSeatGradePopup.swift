//
//  SetSeatGradePopup.swift
//  MyRealTrip
//
//  Created by sanghyuk on 2018. 8. 16..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit
import KWStepper

class SetSeatGradePopupViewController: UIViewController {
    
    @IBOutlet weak var viewGroup: UIView!
    @IBOutlet weak var normalButton: RadioButton!
    @IBOutlet weak var premiumNormalButton: RadioButton!
    @IBOutlet weak var businessButton: RadioButton!
    @IBOutlet weak var firstClassButton: RadioButton!
    
    var groupContainer = RadioButtonContainer()
    
    var seatGrade: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGroup()
    }
    
    func setupGroup() {
        groupContainer.addButtons([normalButton, premiumNormalButton, businessButton, firstClassButton])
        groupContainer.delegate = self
        groupContainer.selectedButton = normalButton
        groupContainer.setEachRadioButtonColor {
            return RadioButtonColor(active: $0.tintColor , inactive: $0.tintColor)
        }
    }
    
    
    // dismiss Seat Grade Setting popup
    @IBAction private func applyButton(_ sender: Any) {
        
        let seatGradeData : [String: Any] = [
            "seatGrade" : seatGrade,

        ]
        
        NotificationCenter.default.post(name: NSNotification.Name.init("seatGradeData"), object: nil, userInfo: seatGradeData)
        dismiss(animated: true, completion: nil)
    }
    
    // dismiss Departure popup
    @IBAction private func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
}

extension SetSeatGradePopupViewController: RadioButtonDelegate {
    
    func radioButtonDidSelect(_ button: RadioButton) {
        print("Select: ", button.title(for: .normal)!)
        seatGrade = button.title(for: .normal)!
    }
    
    func radioButtonDidDeselect(_ button: RadioButton) {
        print("Deselect: ",  button.title(for: .normal)!)
    }
}

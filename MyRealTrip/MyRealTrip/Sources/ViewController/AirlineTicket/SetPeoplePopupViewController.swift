//
//  setPeoplePopupViewController.swift
//  MyRealTrip
//
//  Created by sanghyuk on 2018. 8. 10..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit
import KWStepper

class SetPeoplePopupViewController: UIViewController {
    
    var adultStepper: KWStepper!
    var childStepper: KWStepper!
    var babyStepper: KWStepper!
    
    @IBOutlet weak var adultCountLabel: UILabel!
    @IBOutlet weak var adultDecrementButton: UIButton!
    @IBOutlet weak var adultIncrementButton: UIButton!
    
    @IBOutlet weak var childCountLabel: UILabel!
    @IBOutlet weak var childDecrementButton: UIButton!
    @IBOutlet weak var childIncrementButton: UIButton!
    
    @IBOutlet weak var babyCountLabel: UILabel!
    @IBOutlet weak var babyDecrementButton: UIButton!
    @IBOutlet weak var babyIncrementButton: UIButton!
    
    // dismiss people popup
    @IBAction private func applyButton(_ sender: Any) {
        
        let peopleCountData : [String: Any] = [
            "adult" : Int(adultCountLabel.text!)!,
            "child": Int(childCountLabel.text!)!,
            "baby": Int(babyCountLabel.text!)!
        ]
    
        NotificationCenter.default.post(name: NSNotification.Name.init("peopleCountData"), object: nil, userInfo: peopleCountData)
        dismiss(animated: true, completion: nil)
    }
    
    // dismiss Departure popup
    @IBAction private func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // stepper setting
        configureStepper()
    }
}

// MARK: - SetPeoplePopupViewController

extension SetPeoplePopupViewController {
    func configureStepper() {
        adultStepper = KWStepper(decrementButton: adultDecrementButton, incrementButton: adultIncrementButton)
        childStepper = KWStepper(decrementButton: childDecrementButton, incrementButton: childIncrementButton)
        babyStepper = KWStepper(decrementButton: babyDecrementButton, incrementButton: babyIncrementButton)
        
        adultStepper
            .maximumValue(10)
            .valueChanged { [unowned self] stepper in
                self.adultCountLabel.text = String(format: "%.f", stepper.value)
            }
            .valueClamped { [unowned self] stepper in
                self.presentValueClampedAlert()
        }
        
        childStepper
            .maximumValue(10)
            .valueChanged { [unowned self] stepper in
                self.childCountLabel.text = String(format: "%.f", stepper.value)
            }
            .valueClamped { [unowned self] stepper in
                self.presentValueClampedAlert()
        }
        
        babyStepper
            .maximumValue(10)
            .valueChanged { [unowned self] stepper in
                self.babyCountLabel.text = String(format: "%.f", stepper.value)
            }
            .valueClamped { [unowned self] stepper in
                self.presentValueClampedAlert()
        }
    }
    
    // Presents a `UIAlertController` when the stepper's value is clamped.
    fileprivate func presentValueClampedAlert() {
        let alertController = UIAlertController(
            title: "오류",
            message: "승객 수는 0보다 작거나 10보다 클 수 없습니다.",
            preferredStyle: .alert
            ).addAlertAction(withTitle: "OK", handler: nil)
        
        present(alertController, animated: true, completion: nil)
    }
}

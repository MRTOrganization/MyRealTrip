//
//  AirlineTicketViewController.swift
//  MyRealTrip
//
//  Created by sanghyuk on 2018. 7. 31..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit
import CalendarDateRangePickerViewController
import KWStepper
import Alamofire
import SwiftyJSON
import WebKit

class AirlineTicketViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet public weak var dateLabel: UILabel!
    @IBOutlet private weak var peopleLabel: UILabel!
    @IBOutlet private weak var seatGradeLabel: UILabel!
    @IBOutlet private weak var departureLabel: UILabel!
    @IBOutlet private weak var departureCdLabel: UILabel!
    @IBOutlet private weak var destinationLabel: UILabel!
    @IBOutlet private weak var destinationCdLabel: UILabel!
    @IBOutlet private weak var destinationPlaceHolderLabel: UILabel!
    
    var depart_date: String = ""
    var return_date: String = ""
    
//    override func loadView() {
//        webView = WKWebView()
//        webView.navigationDelegate = self
//        view = webView
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(getDepartureData(departure:)), name: NSNotification.Name(rawValue: "departureData"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(getDestinationData(destination:)), name: NSNotification.Name(rawValue: "destinationData"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(getPeopleCountData(peopleCount:)), name: NSNotification.Name(rawValue: "peopleCountData"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(getSeatGradeData(seatGrade:)), name: NSNotification.Name(rawValue: "seatGradeData"), object: nil)
        
    }
    
    @objc func getDepartureData(departure: Notification) {
        departureLabel.text = departure.userInfo!["departure"] as? String
        departureCdLabel.text = departure.userInfo!["departureCd"] as? String
    }
    
    @objc func getDestinationData(destination: Notification) {
        destinationPlaceHolderLabel.text = ""
        destinationLabel.text = destination.userInfo!["destination"] as? String
        destinationCdLabel.text = destination.userInfo!["destinationCd"] as? String
    }
    
    @objc func getPeopleCountData(peopleCount: Notification) {
        let totalPeopleCount = (peopleCount.userInfo!["adult"] as? Int)! + (peopleCount.userInfo!["child"] as? Int)! + (peopleCount.userInfo!["baby"] as? Int)!
        peopleLabel.text = "승객 \(totalPeopleCount)명"
    }
    
    @objc func getSeatGradeData(seatGrade: Notification) {
        let seatGrade = seatGrade.userInfo!["seatGrade"] as? String
        seatGradeLabel.text = seatGrade
    }
    
    deinit {
        print("AirlineTicketViewController deinit")
        // 필수로 해제해야함
        NotificationCenter.default.removeObserver(self)
    }
    
    // MARK: - Button Events
    
    // Departure select Button Event
    @IBAction private func setDepartureButton(_ sender: Any) {
        let popUpVC: SetDeparturePopupViewController = UIStoryboard(name: "SetDeparturePopup", bundle: nil).instantiateViewController(withIdentifier: "SetDeparturePopup") as! SetDeparturePopupViewController
    
        //overCurrentContext를 하면 뒤에 화면들이 보이게 된다.
        popUpVC.modalPresentationStyle = .overCurrentContext
        
        self.present(popUpVC, animated: true, completion: nil)
    }
    
    // Destinastion select Button Event
    @IBAction private func setDestinationButton(_ sender: Any) {
        let popUpVC: SetDestinationPopupViewController = UIStoryboard(name: "SetDestinationPopup", bundle: nil).instantiateViewController(withIdentifier: "SetDestinationPopup") as! SetDestinationPopupViewController
        
        //overCurrentContext를 하면 뒤에 화면들이 보이게 된다.
        popUpVC.modalPresentationStyle = .overCurrentContext
        
        self.present(popUpVC, animated: true, completion: nil)
    }
    
    // Calendar Button Event
    @IBAction func CalendarButton(_ sender: Any) {
        let dateRangePickerViewController = CalendarDateRangePickerViewController(collectionViewLayout: UICollectionViewFlowLayout())
        dateRangePickerViewController.delegate = self
        dateRangePickerViewController.minimumDate = Date()
        dateRangePickerViewController.maximumDate = Calendar.current.date(byAdding: .year, value: 2, to: Date())
        dateRangePickerViewController.selectedStartDate = Date()
        dateRangePickerViewController.selectedEndDate = Calendar.current.date(byAdding: .day, value: 10, to: Date())
        dateRangePickerViewController.title = "가는날 선택 - 오는날 선택"
        let navigationController = UINavigationController(rootViewController: dateRangePickerViewController)
        self.navigationController?.present(navigationController, animated: true, completion: nil)
    }
    
    // People Button Event
    @IBAction private func setPeopleButton(_ sender: Any) {
        let popUpVC: SetPeoplePopupViewController = UIStoryboard(name: "SetPeoplePopup", bundle: nil).instantiateViewController(withIdentifier: "SetPeoplePopup") as! SetPeoplePopupViewController
        
        //overCurrentContext를 하면 뒤에 화면들이 보이게 된다.
        popUpVC.modalPresentationStyle = .overCurrentContext
        
        self.present(popUpVC, animated: true, completion: nil)
    }
    
    // Seat Grade Setting Button Event
    @IBAction private func setSeatGradeButtobn(_ sender: Any) {
        let popUpVC: SetSeatGradePopupViewController = UIStoryboard(name: "SetSeatGradePopup", bundle: nil).instantiateViewController(withIdentifier: "SetSeatGradePopup") as! SetSeatGradePopupViewController
        
        //overCurrentContext를 하면 뒤에 화면들이 보이게 된다.
        popUpVC.modalPresentationStyle = .overCurrentContext
        
        self.present(popUpVC, animated: true, completion: nil)
    }
    
    // search Button Event
    @IBAction private func searchAirlineTicket(_ sender: Any) {
        let searchParams: [String:Any] = [
            "origin": departureLabel.text!,
            "destination": destinationLabel.text!,
            "depart_date": depart_date,
            "return_date": return_date
            ]
        
        let popUpVC = UIStoryboard(name: "AirlineTicketView", bundle: nil).instantiateViewController(withIdentifier: "AirlineTicketSearchViewController") as! AirlineTicketSearchViewController
        // 데이터 전송
        popUpVC.searchParams = searchParams
        print("보낸 데이터 : \(searchParams)")
        
        self.navigationController?.pushViewController(popUpVC, animated: true)
        //NotificationCenter.default.post(name: NSNotification.Name.init("searchParams"), object: nil, userInfo: searchParams)
        
        /* 검색 데이터 형식
        "origin": "인천",
        "destination": "라스베가스",
        "depart_date": "2018-08-30",
        "return_date": "2018-09-04"
        */
        
    }
}

// MARK: - CalendarDateRangePicker Delegate
extension AirlineTicketViewController : CalendarDateRangePickerViewControllerDelegate {
    func didTapCancel() {
        self.navigationController?.dismiss(animated: true, completion: nil)
    }
    
    func didTapDoneWithDateRange(startDate: Date!, endDate: Date!) {
        let dateFormatter = DateFormatter()
        let dateFormatter2 = DateFormatter()
        dateFormatter.dateFormat = "MMM d (EE)"
        dateFormatter2.dateFormat = "yyyy-MM-dd"
        dateLabel.textColor = .black
        dateLabel.text = dateFormatter.string(from: startDate) + " - " + dateFormatter.string(from: endDate)
        depart_date = dateFormatter2.string(from: startDate)
        return_date = dateFormatter2.string(from: endDate)
        
        print(dateFormatter.string(from: startDate))
        print(dateFormatter.string(from: endDate))
        self.navigationController?.dismiss(animated: true, completion: nil)
    }
    
}

// MARK: - Inspectable Option
extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}

//
//  LodgingViewController.swift
//  MyRealTrip
//
//  Created by H on 2018. 8. 21..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit
import Alamofire
import ParallaxHeader
import SafariServices

struct Hotel {
    var locationName: String = "여행지 또는 숙소명"
    struct calender {
        var month: Int
        var day: Int
    }
    struct Person {
        var adult: Int = 2
        var kid: Int = 0
        var room: Int = 1
    }
}

struct ParkLocation {
    var fisrt: String = "오사카"
    var second: String = "로마"
    var thrid: String = "런던"
    var fourth: String = "파리"
    var fifth: String = "바르셀로나"
    var sixth: String = "프라하"
    var seventh: String = "로스엔젤레스"
    var eight: String = "마드리드"
    var ninth: String = "피렌체"
}
class LodgingViewController: UIViewController {
    
    
    @IBOutlet weak var hotelButton: UIButton!
    @IBOutlet weak var parkButton: UIButton!
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var hotelButtonView: UIView!
    @IBOutlet weak var hotelLocationButtonView: UIView!
    @IBOutlet weak var hotelLocationLabel: UILabel!
    @IBOutlet weak var hotelLocationButton: UIButton!
    @IBOutlet weak var hotelCalenderButtonView: UIView!
    @IBOutlet weak var hotelCalenderLabel: UILabel!
    @IBOutlet weak var hotelCalenderButton: UIButton!
    @IBOutlet weak var hotelPersonButtonView: UIView!
    @IBOutlet weak var hotelPersonLabel: UILabel!
    @IBOutlet weak var hotelPersonButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var parkButtonView: UIView!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    @IBOutlet weak var fifthButton: UIButton!
    @IBOutlet weak var sixthButton: UIButton!
    @IBOutlet weak var seventhButton: UIButton!
    @IBOutlet weak var eighthButton: UIButton!
    @IBOutlet weak var ninthButton: UIButton!
    var searchButtonValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //View Container Set up
        self.viewContainer.bringSubview(toFront: hotelButtonView)
        viewContainer.layer.cornerRadius = 5
        viewContainer.layer.masksToBounds = true
        
        //Hotel Park Button Set up
        hotelButton.setTitle("호텔", for: .normal)
        hotelButton.setTitleColor(UIColor.black, for: .normal)
        parkButton.setTitle("한인민박", for: .normal)
        parkButton.setTitleColor(UIColor.black, for: .normal)
        
        //HotelButtonView
        
        hotelLocationButton.setTitle("", for: .normal)
        hotelCalenderButton.setTitle("", for: .normal)
        hotelPersonButton.setTitle("", for: .normal)
        
        //Date
        let date = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: date)
        
        guard let year =  components.year,
            let month = components.month,
            let day = components.day
            else { return }
        
        var hotelLocationText = Hotel.init(locationName: "여행지 또는 숙소명")
        var hotelCalenderText = Hotel.calender.init(month: month, day: day)
        var hotelPersonText = Hotel.Person.init(adult: 2, kid: 0, room: 1)
        
        hotelLocationLabel.text = hotelLocationText.locationName
        hotelCalenderLabel.text = "\(hotelCalenderText.month)월\(hotelCalenderText.day) -  \(hotelCalenderText.month)월\(hotelCalenderText.day + 1)일"
        hotelPersonLabel.text = "성인\(hotelPersonText.adult), 어린이\(hotelPersonText.kid) / 객실\(hotelPersonText.room)"
        
        //ParkButtonView
        
        var parkButtonNumber = ParkLocation.init(fisrt: "오사카", second: "로마", thrid: "런던", fourth: "파리", fifth: "바르셀로나", sixth: "프라하", seventh: "로스엔젤레스", eight: "마드리드", ninth: "피렌체")
        
        firstButton.setTitle(parkButtonNumber.fisrt, for: .normal)
        firstButton.setTitleColor(UIColor.black, for: .normal)
        secondButton.setTitle(parkButtonNumber.second, for: .normal)
        secondButton.setTitleColor(UIColor.black, for: .normal)
        thirdButton.setTitle(parkButtonNumber.thrid, for: .normal)
        thirdButton.setTitleColor(UIColor.black, for: .normal)
        fourthButton.setTitle(parkButtonNumber.fourth, for: .normal)
        fourthButton.setTitleColor(UIColor.black, for: .normal)
        fifthButton.setTitle(parkButtonNumber.fifth, for: .normal)
        fifthButton.setTitleColor(UIColor.black, for: .normal)
        sixthButton.setTitle(parkButtonNumber.sixth, for: .normal)
        sixthButton.setTitleColor(UIColor.black, for: .normal)
        seventhButton.setTitle(parkButtonNumber.seventh, for: .normal)
        seventhButton.setTitleColor(UIColor.black, for: .normal)
        eighthButton.setTitle(parkButtonNumber.eight, for: .normal)
        eighthButton.setTitleColor(UIColor.black, for: .normal)
        ninthButton.setTitle(parkButtonNumber.ninth, for: .normal)
        ninthButton.setTitleColor(UIColor.black, for: .normal)
        
        // Search Button Set up
        searchButton.setTitle("호텔 검색하기", for: .normal)
        searchButton.backgroundColor = UIColor.orange
        searchButton.setTitleColor(UIColor.white, for: .normal)
        searchButton.layer.cornerRadius = 5
        searchButton.layer.masksToBounds = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Notification AddObserver Location Data
        NotificationCenter.default.addObserver(self, selector: #selector(deliveryLocationData(noti:)), name: NSNotification.Name(rawValue: "locationData"), object: nil)
        
        // Notification AddObserver Person Data
        NotificationCenter.default.addObserver(self, selector: #selector(deliveryPersonData(noti:)), name: NSNotification.Name(rawValue: "personData"), object: nil)
    }
    
    // Location Label Change
    @objc func deliveryLocationData(noti: Notification) {
        guard let notiUserInfo = noti.userInfo else { return }
        guard let notiUserInfoValue = notiUserInfo["select"] else { return }
        guard let stringNotiUserInfoVale = notiUserInfoValue as? String else { return }
        hotelLocationLabel.text = stringNotiUserInfoVale
        
    }
    
    // Person Label Change
    @objc func deliveryPersonData(noti: Notification) {
        guard let notiUserInfo = noti.userInfo else { return }
        print(notiUserInfo)
        guard let notiUserInfoAdult = notiUserInfo["adult"] else { return }
        guard let notiUserInfoKid = notiUserInfo["kid"] else { return }
        guard let notiUserInfoRoom = notiUserInfo["room"] else { return }
//        guard let notiUserInfoAdultValue = notiUserInfoAdult as? Int else { return }
//        guard let notiUserInfoKidValue = notiUserInfoKid as? Int else { return }
//        guard let notiUserInfoRoomValue = notiUserInfoRoom as? Int else { return }
//        print(notiUserInfoAdultValue)
        
        hotelPersonLabel.text = "성인\(notiUserInfoAdult), 어린이\(notiUserInfoKid) / 객실\(notiUserInfoRoom)"

    }
    
    
    @IBAction func didTapHotelButton(_ sender: UIButton) {
        print("did Tap Hotel Button")
        
        self.viewContainer.bringSubview(toFront: hotelButtonView)
        searchButtonValue = 0
        searchButton.setTitle("호텔 검색하기", for: .normal)
        searchButton.backgroundColor = UIColor.orange
        searchButton.setTitleColor(UIColor.white, for: .normal)
        searchButton.layer.cornerRadius = 5
        searchButton.layer.masksToBounds = true
    }
    
    @IBAction func didTapParkButton(_ sender: UIButton) {
        print("did Tap Park Button")
        
        self.viewContainer.bringSubview(toFront: parkButtonView)
        searchButtonValue = 1
        searchButton.setTitle("지역 선택", for: .normal)
        searchButton.backgroundColor = UIColor.purple
        searchButton.setTitleColor(UIColor.white, for: .normal)
        searchButton.layer.cornerRadius = 5
        searchButton.layer.masksToBounds = true
    }
    
    @IBAction func didTapHotelLocationButton(_ sender: UIButton) {
        print("did Tap Hotel Location Button")
    }
    
    @IBAction func didTapHotelCalenderButton(_ sender: UIButton) {
        print("did Tap Hotel Calender Button")
    }
    
    @IBAction func didTapHotelPersonButton(_ sender: UIButton) {
        print("did Tap Hotel Person Button")
    }
    
    @IBAction func didTapFirstButton(_ sender: UIButton) {
        print("did Tap First Button")
        let storyBoard = UIStoryboard(name: "LodgingView", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "ParkSelectViewController")
        present(viewController, animated: true, completion: nil)        
    }
    
    @IBAction func didTapSecondButton(_ sender: UIButton) {
    }
    
    @IBAction func didTapThirdButton(_ sender: UIButton) {
    }
    
    @IBAction func didTapFourthButton(_ sender: UIButton) {
    }
    
    @IBAction func didTapFifthButton(_ sender: UIButton) {
    }
    
    @IBAction func didTapSixthButton(_ sender: UIButton) {
    }
    
    @IBAction func didTapSeventhButton(_ sender: UIButton) {
    }
    
    
    @IBAction func didTapEighthButton(_ sender: UIButton) {
    }
    
    @IBAction func didTapNinthButton(_ sender: UIButton) {
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func didTapSearchButton(_ sender: UIButton) {
        print("did Tap Search Button")
        
        if searchButtonValue == 0 {
            
            guard let url = URL(string: "https://www.booking.com") else { return }
            let safariViewController = SFSafariViewController(url: url)
            present(safariViewController, animated: true, completion: nil)
            
        } else { return }
    }
    
    
    
    
    
    
    
    deinit {
        print("Deinit")
        NotificationCenter.default.removeObserver(self)
    }
    
    
}

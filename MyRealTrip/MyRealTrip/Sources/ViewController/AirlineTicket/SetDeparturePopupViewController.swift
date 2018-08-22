//
//  SetDeparturePopupViewController.swift
//  MyRealTrip
//
//  Created by sanghyuk on 2018. 8. 16..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit
import KWStepper

class SetDeparturePopupViewController: UIViewController {
    var departure: String = ""
    var departureCd: String = ""
    
    // close people popup
    @IBAction private func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // send Data
    func sendDepartureData() {
        let departureData : [String: Any] = [
            "departure" : departure,
            "departureCd": departureCd
        ]
        
        NotificationCenter.default.post(name: NSNotification.Name.init("departureData"), object: nil, userInfo: departureData)
        dismiss(animated: true, completion: nil)
    }
    
    // 국내
    @IBAction private func incheonButton(_ sender: Any) {
        departure = "인천"
        departureCd = "ICN"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func gimpoButton(_ sender: Any) {
        departure = "김포"
        departureCd = "GMP"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func jejuButton(_ sender: Any) {
        departure = "제주"
        departureCd = "CJU"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func busanButton(_ sender: Any) {
        departure = "부산"
        departureCd = "PUS"
        print("select \(departure)")
        sendDepartureData()
    }
    
    // 일본
    @IBAction private func osakaButton(_ sender: Any) {
        departure = "오사카"
        departureCd = "OSA"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func tokyoButton(_ sender: Any) {
        departure = "도쿄"
        departureCd = "TYO"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func fukuokaButton(_ sender: Any) {
        departure = "후쿠오카"
        departureCd = "FUK"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func sapporoButton(_ sender: Any) {
        departure = "사포로"
        departureCd = "SPK"
        print("select \(departure)")
        sendDepartureData()
    }
    
    // 중국
    @IBAction private func beijingButton(_ sender: Any) {
        departure = "북경"
        departureCd = "BJS"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func shanghaiButton(_ sender: Any) {
        departure = "상해/푸동"
        departureCd = "PVG"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func qingdaoButton(_ sender: Any) {
        departure = "청도"
        departureCd = "TAO"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func dalianButton(_ sender: Any) {
        departure = "대련"
        departureCd = "DLC"
        print("select \(departure)")
        sendDepartureData()
    }
    
    // 아시아
    @IBAction private func hongkongButton(_ sender: Any) {
        departure = "홍콩"
        departureCd = "HKG"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func taiwanButton(_ sender: Any) {
        departure = "대만/타오위안"
        departureCd = "TPE"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func danangButton(_ sender: Any) {
        departure = "다낭"
        departureCd = "DAD"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func bangkokButton(_ sender: Any) {
        departure = "방콕"
        departureCd = "BKK"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func vientianeButton(_ sender: Any) {
        departure = "비엔티엔"
        departureCd = "VTE"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func singaporeButton(_ sender: Any) {
        departure = "싱가포르"
        departureCd = "SIN"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func kotaKinabaluButton(_ sender: Any) {
        departure = "코타키나발루"
        departureCd = "BKI"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func baliButton(_ sender: Any) {
        departure = "발리"
        departureCd = "DPS"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func siemReapButton(_ sender: Any) {
        departure = "씨엠립"
        departureCd = "REP"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func ulaanbaatarButton(_ sender: Any) {
        departure = "울란바토르"
        departureCd = "ULN"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func mumbaiButton(_ sender: Any) {
        departure = "뭄바이"
        departureCd = "BOM"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func delhiButton(_ sender: Any) {
        departure = "델리"
        departureCd = "DEL"
        print("select \(departure)")
        sendDepartureData()
    }
    
    // 미주
    @IBAction private func losAngelesButton(_ sender: Any) {
        departure = "로스엔젤레스"
        departureCd = "LAX"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func lasVegasButton(_ sender: Any) {
        departure = "라스베가스"
        departureCd = "LAS"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func newYorkButton(_ sender: Any) {
        departure = "뉴욕"
        departureCd = "NYC"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func sanFranciscoButton(_ sender: Any) {
        departure = "샌프란시스코"
        departureCd = "SFO"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func hawaiiButton(_ sender: Any) {
        departure = "하와이/호놀룰루"
        departureCd = "HNL"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func vancouverButton(_ sender: Any) {
        departure = "벤쿠버"
        departureCd = "YVR"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func torontoButton(_ sender: Any) {
        departure = "토론토"
        departureCd = "YTO"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func montrealButton(_ sender: Any) {
        departure = "몬트리올"
        departureCd = "YMQ"
        print("select \(departure)")
        sendDepartureData()
    }
    
    // 중남미
    @IBAction private func saoPauloButton(_ sender: Any) {
        departure = "상파울루"
        departureCd = "SAO"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func kankunButton(_ sender: Any) {
        departure = "칸쿤"
        departureCd = "CUN"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func santiagoButton(_ sender: Any) {
        departure = "산티아고"
        departureCd = "SCL"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func havannaButton(_ sender: Any) {
        departure = "하바나"
        departureCd = "HAV"
        print("select \(departure)")
        sendDepartureData()
    }
    
    // 유럽
    @IBAction private func londonButton(_ sender: Any) {
        departure = "런던"
        departureCd = "LON"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func parisButton(_ sender: Any) {
        departure = "파리"
        departureCd = "PAR"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func romaButton(_ sender: Any) {
        departure = "로마"
        departureCd = "ROM"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func madridButton(_ sender: Any) {
        departure = "마드리드"
        departureCd = "MAD"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func frankfurtButton(_ sender: Any) {
        departure = "프랑크푸르트"
        departureCd = "FRA"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func amsterdamButton(_ sender: Any) {
        departure = "암스테르담"
        departureCd = "AMS"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func istanbulButton(_ sender: Any) {
        departure = "이스탄불"
        departureCd = "IST"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func moscowButton(_ sender: Any) {
        departure = "모스코바"
        departureCd = "MOW"
        print("select \(departure)")
        sendDepartureData()
    }
    
    // 대양주
    @IBAction private func sydneyButton(_ sender: Any) {
        departure = "시드니"
        departureCd = "SYD"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func melbourneButton(_ sender: Any) {
        departure = "멜버른"
        departureCd = "MEL"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func guamButton(_ sender: Any) {
        departure = "괌"
        departureCd = "GUM"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func saipanButton(_ sender: Any) {
        departure = "사이판"
        departureCd = "SPN"
        print("select \(departure)")
        sendDepartureData()
    }
    
    // 중동
    @IBAction private func abudhabiButton(_ sender: Any) {
        departure = "아부다비"
        departureCd = "AUH"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func dubaiButton(_ sender: Any) {
        departure = "두바이"
        departureCd = "DXB"
        print("select \(departure)")
        sendDepartureData()
    }
    
    // 아프리카
    @IBAction private func nairobiButton(_ sender: Any) {
        departure = "나이로비"
        departureCd = "NBO"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func capetownButton(_ sender: Any) {
        departure = "케이프타운"
        departureCd = "CPT"
        print("select \(departure)")
        sendDepartureData()
    }
    @IBAction private func cairoButton(_ sender: Any) {
        departure = "카이로"
        departureCd = "CAI"
        print("select \(departure)")
        sendDepartureData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

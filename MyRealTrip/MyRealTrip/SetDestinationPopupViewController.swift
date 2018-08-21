//
//  SetDestinationPopup.swift
//  MyRealTrip
//
//  Created by sanghyuk on 2018. 8. 17..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//


import UIKit
import KWStepper

class SetDestinationPopupViewController: UIViewController {
    var destination: String = ""
    var destinationCd: String = ""
    
    // close people popup
    @IBAction private func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // send Data
    func sendDestinationData() {
        let destinationData : [String: Any] = [
            "destination" : destination,
            "destinationCd": destinationCd
        ]
        
        NotificationCenter.default.post(name: NSNotification.Name.init("destinationData"), object: nil, userInfo: destinationData)
        dismiss(animated: true, completion: nil)
    }
    
    // 국내
    @IBAction private func incheonButton(_ sender: Any) {
        destination = "인천"
        destinationCd = "ICN"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func gimpoButton(_ sender: Any) {
        destination = "김포"
        destinationCd = "GMP"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func jejuButton(_ sender: Any) {
        destination = "제주"
        destinationCd = "CJU"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func busanButton(_ sender: Any) {
        destination = "부산"
        destinationCd = "PUS"
        print("select \(destination)")
        sendDestinationData()
    }
    
    // 일본
    @IBAction private func osakaButton(_ sender: Any) {
        destination = "오사카"
        destinationCd = "OSA"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func tokyoButton(_ sender: Any) {
        destination = "도쿄"
        destinationCd = "TYO"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func fukuokaButton(_ sender: Any) {
        destination = "후쿠오카"
        destinationCd = "FUK"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func sapporoButton(_ sender: Any) {
        destination = "사포로"
        destinationCd = "SPK"
        print("select \(destination)")
        sendDestinationData()
    }
    
    // 중국
    @IBAction private func beijingButton(_ sender: Any) {
        destination = "북경"
        destinationCd = "BJS"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func shanghaiButton(_ sender: Any) {
        destination = "상해/푸동"
        destinationCd = "PVG"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func qingdaoButton(_ sender: Any) {
        destination = "청도"
        destinationCd = "TAO"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func dalianButton(_ sender: Any) {
        destination = "대련"
        destinationCd = "DLC"
        print("select \(destination)")
        sendDestinationData()
    }
    
    // 아시아
    @IBAction private func hongkongButton(_ sender: Any) {
        destination = "홍콩"
        destinationCd = "HKG"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func taiwanButton(_ sender: Any) {
        destination = "대만/타오위안"
        destinationCd = "TPE"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func danangButton(_ sender: Any) {
        destination = "다낭"
        destinationCd = "DAD"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func bangkokButton(_ sender: Any) {
        destination = "방콕"
        destinationCd = "BKK"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func vientianeButton(_ sender: Any) {
        destination = "비엔티엔"
        destinationCd = "VTE"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func singaporeButton(_ sender: Any) {
        destination = "싱가포르"
        destinationCd = "SIN"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func kotaKinabaluButton(_ sender: Any) {
        destination = "코타키나발루"
        destinationCd = "BKI"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func baliButton(_ sender: Any) {
        destination = "발리"
        destinationCd = "DPS"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func siemReapButton(_ sender: Any) {
        destination = "씨엠립"
        destinationCd = "REP"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func ulaanbaatarButton(_ sender: Any) {
        destination = "울란바토르"
        destinationCd = "ULN"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func mumbaiButton(_ sender: Any) {
        destination = "뭄바이"
        destinationCd = "BOM"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func delhiButton(_ sender: Any) {
        destination = "델리"
        destinationCd = "DEL"
        print("select \(destination)")
        sendDestinationData()
    }
    
    // 미주
    @IBAction private func losAngelesButton(_ sender: Any) {
        destination = "로스엔젤레스"
        destinationCd = "LAX"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func lasVegasButton(_ sender: Any) {
        destination = "라스베가스"
        destinationCd = "LAS"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func newYorkButton(_ sender: Any) {
        destination = "뉴욕"
        destinationCd = "NYC"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func sanFranciscoButton(_ sender: Any) {
        destination = "샌프란시스코"
        destinationCd = "SFO"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func hawaiiButton(_ sender: Any) {
        destination = "하와이/호놀룰루"
        destinationCd = "HNL"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func vancouverButton(_ sender: Any) {
        destination = "벤쿠버"
        destinationCd = "YVR"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func torontoButton(_ sender: Any) {
        destination = "토론토"
        destinationCd = "YTO"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func montrealButton(_ sender: Any) {
        destination = "몬트리올"
        destinationCd = "YMQ"
        print("select \(destination)")
        sendDestinationData()
    }
    
    // 중남미
    @IBAction private func saoPauloButton(_ sender: Any) {
        destination = "상파울루"
        destinationCd = "SAO"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func kankunButton(_ sender: Any) {
        destination = "칸쿤"
        destinationCd = "CUN"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func santiagoButton(_ sender: Any) {
        destination = "산티아고"
        destinationCd = "SCL"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func havannaButton(_ sender: Any) {
        destination = "하바나"
        destinationCd = "HAV"
        print("select \(destination)")
        sendDestinationData()
    }
    
    // 유럽
    @IBAction private func londonButton(_ sender: Any) {
        destination = "런던"
        destinationCd = "LON"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func parisButton(_ sender: Any) {
        destination = "파리"
        destinationCd = "PAR"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func romaButton(_ sender: Any) {
        destination = "로마"
        destinationCd = "ROM"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func madridButton(_ sender: Any) {
        destination = "마드리드"
        destinationCd = "MAD"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func frankfurtButton(_ sender: Any) {
        destination = "프랑크푸르트"
        destinationCd = "FRA"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func amsterdamButton(_ sender: Any) {
        destination = "암스테르담"
        destinationCd = "AMS"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func istanbulButton(_ sender: Any) {
        destination = "이스탄불"
        destinationCd = "IST"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func moscowButton(_ sender: Any) {
        destination = "모스코바"
        destinationCd = "MOW"
        print("select \(destination)")
        sendDestinationData()
    }
    
    // 대양주
    @IBAction private func sydneyButton(_ sender: Any) {
        destination = "시드니"
        destinationCd = "SYD"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func melbourneButton(_ sender: Any) {
        destination = "멜버른"
        destinationCd = "MEL"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func guamButton(_ sender: Any) {
        destination = "괌"
        destinationCd = "GUM"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func saipanButton(_ sender: Any) {
        destination = "사이판"
        destinationCd = "SPN"
        print("select \(destination)")
        sendDestinationData()
    }
    
    // 중동
    @IBAction private func abudhabiButton(_ sender: Any) {
        destination = "아부다비"
        destinationCd = "AUH"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func dubaiButton(_ sender: Any) {
        destination = "두바이"
        destinationCd = "DXB"
        print("select \(destination)")
        sendDestinationData()
    }
    
    // 아프리카
    @IBAction private func nairobiButton(_ sender: Any) {
        destination = "나이로비"
        destinationCd = "NBO"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func capetownButton(_ sender: Any) {
        destination = "케이프타운"
        destinationCd = "CPT"
        print("select \(destination)")
        sendDestinationData()
    }
    @IBAction private func cairoButton(_ sender: Any) {
        destination = "카이로"
        destinationCd = "CAI"
        print("select \(destination)")
        sendDestinationData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

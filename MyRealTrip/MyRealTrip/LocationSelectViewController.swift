//
//  LocationSelectViewController.swift
//  MyRealTrip
//
//  Created by H on 2018. 8. 20..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit

protocol sendBackDelegate {
    func dataRecived(data: String)
}
class LocationSelectViewController: UIViewController {
    
    @IBOutlet weak var locationTableView: UITableView!
    let arrName: [String] = ["오사카", "후쿠오카", "라스베가스", "도쿄", "로마", "타이페이" ]
    
    var delegate: sendBackDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        self.locationTableView.delegate = self
        self.locationTableView.dataSource = self
        
        
        let nibName = UINib(nibName: "LocationListTableViewCell", bundle: nil)
        locationTableView.register(nibName, forCellReuseIdentifier: "LocationListTableViewCell")
        
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
    @IBAction func didTapCancelButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}

extension LocationSelectViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "LocationListTableViewCell", for: indexPath) as! LocationListTableViewCell
        
        cell.locationName.text = arrName[indexPath.row]
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("OK")
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "selectedData"), object: nil, userInfo: ["select":arrName[indexPath.row]])
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
}

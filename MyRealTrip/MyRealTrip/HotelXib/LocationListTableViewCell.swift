//
//  LocationListTableViewCell.swift
//  MyRealTrip
//
//  Created by H on 2018. 8. 21..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit

class LocationListTableViewCell: UITableViewCell {
    @IBOutlet weak var locationName: UILabel!
    @IBOutlet weak var locationSubName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

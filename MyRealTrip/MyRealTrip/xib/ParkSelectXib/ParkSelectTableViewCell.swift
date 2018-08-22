//
//  ParkSelectTableViewCell.swift
//  MyRealTrip
//
//  Created by H on 2018. 8. 22..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit

class ParkSelectTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var parkNameLabel: UILabel!
    @IBOutlet weak var supplyerNameLabel: UILabel!
    @IBOutlet weak var reviewCountLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

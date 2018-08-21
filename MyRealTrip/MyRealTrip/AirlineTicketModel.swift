//
//  AirlineTicketModel.swift
//  MyRealTrip
//
//  Created by sanghyuk on 2018. 8. 17..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import Foundation

struct AirlineTicketUrl: Decodable{
    let pk: Int
    let url: String
    private enum CodingKeys: String, CodingKey {
        case pk
        case url
    }
}

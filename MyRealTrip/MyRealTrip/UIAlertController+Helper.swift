//
//  UIAlertController+Helper.swift
//  MyRealTrip
//
//  Created by sanghyuk on 2018. 8. 10..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit

extension UIAlertController {
    func addAlertAction(withTitle title: String?, style: UIAlertActionStyle = .default, handler: ((UIAlertAction) -> Void)?) -> Self {
        addAction(UIAlertAction(title: title, style: style, handler: handler))
        
        return self
    }
}

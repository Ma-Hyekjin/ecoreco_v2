//
//  UIView+Extension.swift
//  Ecoreco_v2
//
//  Created by 마혁진 on 2022/10/16.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set{
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}

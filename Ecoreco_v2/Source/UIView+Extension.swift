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
    @IBInspectable var shadowRadius : CGFloat {
        //그림자의 퍼짐정도
        get{
            return self.layer.shadowRadius
        }


        set{
            self.layer.shadowRadius = newValue
        }

    }

    @IBInspectable var shadowOpacity : Float {
        //그림자의 투명도 0 - 1 사이의 값을 가짐
        get{
            return self.layer.shadowOpacity
        }

        set{
            self.layer.shadowOpacity = newValue
        }

    }

    @IBInspectable var shadowColor : UIColor {
        //그림자의 색
        get{
            if let shadowColor = self.layer.shadowColor {
                    return UIColor(cgColor: shadowColor)
            }
            return UIColor.clear
        }
        set{
            //그림자의 색이 지정됬을 경우
            self.layer.shadowOffset = CGSize(width: 5, height: 5)
            //shadowOffset은 빛의 위치를 지정해준다. 북쪽에 있으면 남쪽으로 그림지가 생기는 것
            self.layer.shadowColor = newValue.cgColor
            //그림자의 색을 지정
        }

    }

    @IBInspectable var maskToBound : Bool{

        get{
            return self.layer.masksToBounds
        }

        set{
            self.layer.masksToBounds = newValue
        }

    }
    
    @IBInspectable var borderColor: UIColor? {
            get {
                guard let cgColor = layer.borderColor else {
                    return nil
                }
                return UIColor(cgColor: cgColor)
            }
            set { layer.borderColor = newValue?.cgColor }
        }

        @IBInspectable var borderWidth: CGFloat {
            get {
                return layer.borderWidth
            }
            set {
                layer.borderWidth = newValue
            }
        }

}

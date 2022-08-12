//
//  CircleBtn.swift
//  autolayout_tutorial_07
//
//  Created by 성정현 on 2022/08/11.
//

import Foundation
import UIKit

//  인터페이스 빌더에서 디자인에서 확인하게끔 IBDesingnable
@IBDesignable
class CircleBtn: UIButton {
    
    //  IBInspectalbe 인스펙터 패널에서 사용될수 있도록 설정
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
}

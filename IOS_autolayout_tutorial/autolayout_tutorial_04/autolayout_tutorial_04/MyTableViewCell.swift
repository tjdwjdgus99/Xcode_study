//
//  MyTableViewCell.swift
//  autolayout_tutorial_04
//
//  Created by 성정현 on 2022/08/03.
//

import Foundation
import UIKit

class MyTableViewCell: UITableViewCell{
    
    @IBOutlet weak var userProfileImg: UIImageView!
    @IBOutlet weak var userContentLabel: UILabel!
    //  쎌이 렌더링 될때
    override func awakeFromNib() {
        super.awakeFromNib()
        
        print("MyTableViewCell - awakeFromNib() called")
        
        userProfileImg.layer.cornerRadius = userProfileImg.frame.width / 2
        
    }
}

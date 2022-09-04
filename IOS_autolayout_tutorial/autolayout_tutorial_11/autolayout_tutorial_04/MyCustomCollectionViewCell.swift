//
//  MyCustomCollectionViewCell.swift
//  autolayout_tutorial_04
//
//  Created by 성정현 on 2022/08/30.
//
import Foundation
import UIKit

class MyCustomCollectionViewCell : UICollectionViewCell {

    @IBOutlet weak var profileImg: UIImageView!
    
    @IBOutlet weak var profileLabel: UILabel!
    var imageName : String = ""{
        didSet{
            print("MyCollectionViewCell imageName - didSet() : \(imageName)")
            self.profileImg.image = UIImage(systemName: imageName)
            //  라벨 설정
            self.profileLabel.text = imageName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("MyCollectionViewCell - awakeFromNib() called ")
        self.contentView.backgroundColor = .green
        self.contentView.layer.cornerRadius = 8
        self.contentView.layer.borderWidth =  1
    }
}

//
//  BaseVC.swift
//  24Unsplash_whit_storyboard_tutorial
//
//  Created by 성정현 on 2022/08/26.
//

import UIKit

class BaseVC: UIViewController {
    
    var vcTitle : String = "" {
        didSet {
            print("UserListVC - vcTitle didset() called / vcTitle : \(vcTitle)")
            self.title  = vcTitle
        }
    }
}

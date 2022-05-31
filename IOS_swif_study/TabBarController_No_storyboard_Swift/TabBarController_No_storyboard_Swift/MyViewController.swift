//
//  ViewController.swift
//  TabBarController_No_storyboard_Swift
//
//  Created by 성정현 on 2022/05/31.
//

import UIKit

class MyViewController: UITabBarController {
    
    convenience init(title: String, bgColor: UIColor){
        self.init()
        self.title = title
        self.view.backgroundColor = bgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

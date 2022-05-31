//
//  MainTabBarController.swift
//  TabBarController_No_storyboard_Swift
//
//  Created by 성정현 on 2022/05/31.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("MainTabBarController - viewDidload() called")
        
        let firstNC = UINavigationController.init(rootViewController: MyViewController(title: "첫번째", bgColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
        let secondNC = UINavigationController.init(rootViewController: MyViewController(title: "두번째", bgColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
        let thirdNC = UINavigationController.init(rootViewController: MyViewController(title: "세번쨰", bgColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)))
        let forthNC = UINavigationController.init(rootViewController: MyViewController(title: "네번쨰", bgColor: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)))
        let fifthNC = UINavigationController.init(rootViewController: MyViewController(title: "다섯번째", bgColor: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)))
        
        self.viewControllers = [firstNC, secondNC, thirdNC, forthNC, fifthNC]
        
        let firstTabBarItem = UITabBarItem(title: "첫번째" , image: UIImage(systemName: "airplayaudio"), tag:0)
        let secondTabBarItem = UITabBarItem(title: "두번째" , image: UIImage(systemName: "airplayvideo"), tag:1)
        let thirdTabBarItem = UITabBarItem(title: "세번째" , image: UIImage(systemName: "arrow.clockwise.icloud.fill"), tag:2)
        let forthTabBarItem = UITabBarItem(title: "네번째" , image: UIImage(systemName: "arrow.down.left.video.fill"), tag:3)
        let fifthTabBarItem = UITabBarItem(title: "다섯번째" , image: UIImage(systemName: "video.fill"), tag:4)
        
        firstNC.tabBarItem = firstTabBarItem
        secondNC.tabBarItem = secondTabBarItem
        thirdNC.tabBarItem = thirdTabBarItem
        forthNC.tabBarItem = forthTabBarItem
        fifthNC.tabBarItem = fifthTabBarItem
        
    }
                                                
}

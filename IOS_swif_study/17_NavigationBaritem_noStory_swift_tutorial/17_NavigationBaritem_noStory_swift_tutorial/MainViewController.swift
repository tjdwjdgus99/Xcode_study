//
//  ViewController.swift
//  17_NavigationBaritem_noStory_swift_tutorial
//
//  Created by 성정현 on 2022/06/05.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "홈"
        self.view.backgroundColor = .yellow
        
        //  네비게이션 아이템 추가
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.fill"), style: .plain, target: self, action: #selector(goToProfileVC))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "message.fill"), style: .plain, target: self, action: #selector(goToMessageVC))
    }

    @objc fileprivate func goToProfileVC(){
        print("MainViewController - goTOProfileVC() 호출됨")
        let profileVC = ProfileViewController()
        self.navigationController?.pushViewController(profileVC, animated: true)
    }
    @objc fileprivate func goToMessageVC(){
        print("MainViewController - goToMessageVC() 호출됨")
        let messageVC = MessageViewController()
        self.navigationController?.pushViewController(messageVC, animated: true)
    }

}


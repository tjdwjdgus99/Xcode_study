//
//  MainViewController.swift
//  NavigationViewController_tutorial
//
//  Created by 성정현 on 2022/05/24.
//

import UIKit

class MainViewController: UIViewController {
    
    //제목
    var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "메인화면"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = UIColor.white
        return label
    }()
    
    var changeBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("배경색 바꾸기", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn.backgroundColor = UIColor.white
        btn.layer.cornerRadius = 5
        btn.contentEdgeInsets = UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20)
        btn.addTarget(self, action: #selector(changeBg), for: .touchUpInside)
        return btn
        
    }()
    
    var isBgOrange: Bool?
    
    
    //뷰가 생성 되었을때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isBgOrange = true
        
        view.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        view.addSubview(titleLabel)
    
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(changeBtn)
        
        changeBtn.translatesAutoresizingMaskIntoConstraints = false
        changeBtn.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        changeBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
    }
    
    //배경색을 바꾼다
    
    @objc fileprivate func changeBg(){
        
        
        if isBgOrange == true{
            //
            view.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
            isBgOrange = false
        }else{
            view.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
            isBgOrange =  true
        }
        
        print("MainViewController - changeBg() called / isBgOrange : \(isBgOrange)")
    }
    
}

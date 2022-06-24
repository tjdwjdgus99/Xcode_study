//
//  ViewController.swift
//  MyFirstiOS
//
//  Created by 성정현 on 2022/05/21.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    //제목
    var titleLabel: UILabel = {
       
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = "메인화면"
        label.font = UIFont.boldSystemFont(ofSize: 70)
        label.textColor = .black
        
        return label
    }()

    let animationView: AnimationView = {//애니메이션 이미지 가져오기
       
        let animView = AnimationView(name: "106405-energy-rocket")
        animView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)//크기 지정
        animView.contentMode = .scaleAspectFill//크기에 맞도록 이미지 확대
        
        return animView
    }()
    
    // 뷰가 생선되었을때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        view.addSubview(animationView)//(최상위)뷰에 애니메이션 뷰를 집어넣음
        animationView.center = view.center
        
        
        // 애니메이션 실행
        animationView.play{(finish) in
            
            print("애니메이션이 끝났습니다")
            
            self.view.backgroundColor = .white
            self.animationView.removeFromSuperview()//뷰에 있는 에니메이션 뷰를 제거함
            
            self.view.addSubview(self.titleLabel)
            
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false//이거 안하면 설정안됨
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true//레이블을 정가운데로 놓음
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
            
            
        }
        
    
    }


}


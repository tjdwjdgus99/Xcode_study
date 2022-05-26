//
//  ViewController.swift
//  CompletionBlock-Tutorial
//
//  Created by 성정현 on 2022/05/26.
//

import UIKit
import KRProgressHUD

class ViewController: UIViewController {

    @IBOutlet weak var MainTiltle: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("ViewController - viewDidLoad() 호출됨")
        
        KRProgressHUD.show()
        sayHi(completion: { Result in
            print("컴플레션 블락으로 넘겨 받았음: \(Result)")
            
            KRProgressHUD.showSuccess()
            
            self.MainTiltle.text = Result
            
        })
        
    }
    
    fileprivate func sayHi(completion: @escaping(String) -> ()){
        
        print("ViewController - sayHi() 호출됨")
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
          // n초 후 실행될 부분
           // print("하이!!")
            completion("안녕")
        }
        
    }


}


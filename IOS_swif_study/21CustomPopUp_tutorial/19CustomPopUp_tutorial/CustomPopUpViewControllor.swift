//
//  CustomPopUpViewControllor.swift
//  19CustomPopUp_tutorial
//
//  Created by 성정현 on 2022/06/23.
//

import Foundation
import UIKit

class CustomPopUpViewControllor: UIViewController{
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var subscribeBtn: UIButton!
    @IBOutlet weak var bgBtn: UIButton!
    @IBOutlet weak var openChatBtn: UIButton!
    @IBOutlet weak var BlogBtn: UIButton!
    var subscribeBtnCompletionClosure: (() -> Void)?
    
    var myPopUpDelegate : PopUpDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CustomPopUpViewControllor - viewDidLoad() called")
        contentView.layer.cornerRadius = 30
        subscribeBtn.layer.cornerRadius = 10
        openChatBtn.layer.cornerRadius = 10
        BlogBtn.layer.cornerRadius = 10
    }
    //MARK: - IBAction
    
    @IBAction func onBlogBtnClicked(_ sender: UIButton) {
        print("CustomPopUpViewControllor - onBlogBtnClicked() called")
        NotificationCenter.default.post(name: Notification.Name(rawValue: notificationName), object: nil)
        dismiss(animated: true,completion: nil)
    }
    
    
    @IBAction func onSubscribeBtbClicked(_ sender: UIButton) {
        print("CustomPopUpViewControllor - onSubscribeBtbClicked() called")
        
        self.dismiss(animated: true,completion: nil)
        //  컴플레션 블럭 호출
        if let subscribeBtnCompletionClosure = subscribeBtnCompletionClosure{
            //  메인에 알린다.
            subscribeBtnCompletionClosure()
            
        }
    }
    
    @IBAction func onOpenChatBtnClicked(_ sender: Any) {
        print("CustomPopUpViewControllor - onOpenChatBtnClicked() called")
        
        //  버튼을 눌렀을 경우
        myPopUpDelegate?.onOpenChatBtnClicked()
        self.dismiss(animated: true,completion: nil)
        
    }
    
    @IBAction func onBgBtnClicked(_ sender: UIButton) {
        print("CustomPopUpViewControllor - onBgBtnClicked() called")
        //  창을 닫아줌      긍정      ,닫은후 무엇을 하겠는가?
        self.dismiss(animated: true,completion: nil)
        
    }
    
}

//
//  ViewController.swift
//  19CustomPopUp_tutorial
//
//  Created by 성정현 on 2022/06/23.
//

import UIKit
import WebKit

let notificationName = "btnClickNotification"

class ViewController: UIViewController,PopUpDelegate {
    

    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var createPopUpBtn: UIButton!
    
    deinit{
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        // 노티피케이션 이라는 수신기를 등록한다.
        NotificationCenter.default.addObserver(self, selector: #selector(loadWebView), name: NSNotification.Name(rawValue: notificationName), object: nil)
    
    }

    @objc fileprivate func loadWebView(){
        print("ViewController - loadWebView() called")
        let myChannelUrl = URL(string: "https://www.youtube.com/channel/UCbsB3fZt_EJLG1qEhIx3JHA")
        self.myWebView.load(URLRequest(url:  myChannelUrl!))
    }
    
    @IBAction func onCreatePopUpBtnClicked(_ sender: UIButton) {
        print("ViewController - onCreatePopUpBtnClicked() called")
        
        //  스토리보드 가져오기
        let storyboard = UIStoryboard.init(name: "PopUp", bundle: nil)
        //  스토리보드를 통해 뷰 컨트롤러 가져오기
        let customPopUpVC = storyboard.instantiateViewController(withIdentifier: "AlertPopUpVC") as! CustomPopUpViewControllor
        //  팝업효과 설정
        //  뷰컨트롤러가 보여지는 스타일
        customPopUpVC.modalPresentationStyle = .overCurrentContext
        //  뷰컨트롤러가 사라지는 스타일
        customPopUpVC.modalTransitionStyle = .crossDissolve
        
        customPopUpVC.subscribeBtnCompletionClosure = {
            print("컴플레션 블럭이 호출되었다.")
            let myChannelUrl = URL(string: "https://www.youtube.com/channel/UCbsB3fZt_EJLG1qEhIx3JHA")
            self.myWebView.load(URLRequest(url:  myChannelUrl!))
        }
        
        customPopUpVC.myPopUpDelegate = self
        
        self.present(customPopUpVC, animated: true, completion: nil)
    }
    
    //MARK: - PopUpDelegate methods
    @objc func onOpenChatBtnClicked() {
        print("ViewController - onOpenChatBtnClicked() called")
        let myChannelUrl = URL(string: "https://www.youtube.com/channel/UCbsB3fZt_EJLG1qEhIx3JHA")
        self.myWebView.load(URLRequest(url:  myChannelUrl!))
    }
    
}


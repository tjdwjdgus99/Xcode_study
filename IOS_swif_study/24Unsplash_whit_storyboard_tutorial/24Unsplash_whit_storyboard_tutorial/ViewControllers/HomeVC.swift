//
//  ViewController.swift
//  24Unsplash_whit_storyboard_tutorial
//
//  Created by 성정현 on 2022/08/18.
//

import UIKit
import Toast_Swift

class HomeVC: UIViewController,UISearchBarDelegate,UIGestureRecognizerDelegate {

    @IBOutlet weak var searchFilterSegment: UISegmentedControl!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var searchIndicator: UIActivityIndicatorView!
    
    var keyboardDismissTabGesture : UITapGestureRecognizer =  UITapGestureRecognizer(target: self, action: nil)
    override func viewDidLoad() {
        
        //MARK : - override method
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("HomeVC - viewDidLoad() 호출됨")
        
        //  ui 설정
        self.config()
    
    }
    
    //  화면이 넘어가기전에 준비한다
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("HomeVC = prepare() called / segue.identifier : \(segue.identifier)")
        
        switch segue.identifier {
        case SEGUE_ID.USER_LIST_VC:
            //  다음 화면의 뷰 컨트롤러를 가져온다.
            let nextVC = segue.destination as! UserListVC
            
            guard let userInputValue = self.searchBar.text else {return}
            
            nextVC.vcTitle = userInputValue + " 😽"
        case SEGUE_ID.PHOTO_COLLECTION_VC:
            //  다음 화면의 뷰 컨트롤러를 가져온다.
            let nextVC = segue.destination as! PhotoCollectionVC
            
            guard let userInputValue = self.searchBar.text else {return}
            
            nextVC.vcTitle = userInputValue + " 😽"
            
        default:
            print("default")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("HomeVC - ViewWillAppear() called")
        //  키보드를 올라가는 이벤트를 받는 처리
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShowHandle(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHideHandle), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("HomeVC - viewWillDisappear() called")
        NotificationCenter.default.removeObserver(self,name: UIResponder.keyboardDidShowNotification,object: nil)
        NotificationCenter.default.removeObserver(self,name: UIResponder.keyboardDidHideNotification,object: nil)
    }
    
    //MARK: - fileprivate methods
    
    fileprivate func config(){
        
        self.searchButton.layer.cornerRadius = 10
        
        self.searchBar.searchBarStyle = .minimal
        
        self.searchBar.delegate = self
        
        self.keyboardDismissTabGesture.delegate = self
        
        //  제스처 추가하기
        self.view.addGestureRecognizer(keyboardDismissTabGesture)
        
        self.searchBar.becomeFirstResponder() // 포커싱 주기
    }
    fileprivate func pushVC(){
        var segueId : String = ""
            switch searchFilterSegment.selectedSegmentIndex{
            case 0:
                segueId = "goToPhotoCollertionVC"
            case 1:
                segueId = "goToUserListVC"
            default:
                segueId = "goToPhotoCollertionVC"
            }
        //  화면이동
        self.performSegue(withIdentifier: segueId, sender: self)
    }
    
    @objc func keyboardWillShowHandle(notification: NSNotification){
        print("HomeVC - keyboardWillShowHandle() called")
        //  키보드 사이즈 가져오기
        self.view.frame.origin.y = 100
    }
    
    @objc func keyboardWillHideHandle(){
        print("HomeVC - keyboardWillHideHandle() called")
        self.view.frame.origin.y = 0
    }
    
    //MARK: - IBAction methods
    @IBAction func onSearchButtonClicked(_ sender: Any) {
        print("HomeVC - onSearchButtonClicked() called / selectedIndex:\(searchFilterSegment.selectedSegmentIndex)")
        pushVC()
    }
    @IBAction func searchFilterValueChanged(_ sender: UISegmentedControl) {
        //print("HomeVC - searchFilterValueChanged() called / index : \(sender.selectedSegmentIndex)")
        var searchBarTitle = ""
        switch sender.selectedSegmentIndex {
        case 0:
            searchBarTitle = "사진 키워드"
        case 1:
            searchBarTitle = "사용자 이름"
        default:
            searchBarTitle = "사진키워드"
        }
        self.searchBar.placeholder = searchBarTitle + " 입력"
        self.searchBar.becomeFirstResponder()
        
        
    }
    
    // MARK: - UISearchBar Delegate methods
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print("HomeVC - searchBarSearchButtonClicked() ")
        
        guard let userInputString = searchBar.text else { return }
        
        if userInputString.isEmpty {
            self.view.makeToast("🙀검색 키워드를 입력해 주세요",duration:1.0, position: .center)
        } else {
            pushVC()
            searchBar.resignFirstResponder()
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("HomeVC - searchBar TextDidChange() searchText : \(searchText)")
        
        //  사용자가 입력한 값이 없을때
        if (searchText.isEmpty) {
            self.searchButton.isHidden = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.01, execute: {
                //  포커싱 해제
                searchBar.resignFirstResponder()
            })
            
        } else {
            self.searchButton.isHidden = false
        }
        
        
    }
    
    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        print("shouldChangeTextIn : \(searchBar.text?.appending(text).count)")
        
        let inputTextCount = searchBar.text?.appending(text).count ?? 0
        print("shouldChangeTextIn : \(inputTextCount)")
        
        if (inputTextCount >= 12){
            self.view.makeToast("🙀12자 까지만 입력가능합니다",duration:1.0, position: .center)
        }
        
        if inputTextCount <= 12{
            return true
        } else {
            return false
        }

    }
    
    //MAKE: - UIGestureRecognizerDelegate
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        //print("HomeVC - gestureRecognizer shouldReceive() called")
        if(touch.view?.isDescendant(of: searchFilterSegment) == true){
            print("세그먼트가 터치되었다")
            return false
        }else if(touch.view?.isDescendant(of: searchBar) == true){
            print("서치바가 터치되었다")
            return false
        }else {
            view.endEditing(true)
            print("화면이 터치되었다")
            return true
        }
        
    }

}


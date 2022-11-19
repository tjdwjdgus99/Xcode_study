import Cocoa
import Foundation
import UIKit


//  프로토콜 응용 - //xib 파일로 커스텀뷰를 가져오기
//  닙 파일로 커스텀뷰를 가져오는 프로토콜
protocol CustomViewNibbed {
    //  생성하는 스태틱 메소드 선언 -> 자기 자신을 반환
    static func instantiate() -> Self
}
//  확장으로 프로토콜 메소드 정의
extension CustomViewNibbed where Self: UIView {
    //  스태틱 메소드로 객체 인스턴스를 생성하지 않아도 호출 가능
    static func instantiate() -> Self {
        //  클래스 이름 문자열로 가져오기
        let className = String(describing: self)
        //  해당 클래스 이름의 닙파일 가져오기
        let loadedNib = Bundle.main.loadNibNamed(className, owner: self, options: nil)
        
        //  닙파일에서 자기 자신인 뷰를 가져오기
        let custiomView = loadedNib?.first as! Self
        return custiomView
    }
}
// 커스텀뷰 - CustomViewNibbed프로토콜을 준수한다고 설정
class MyCustomView: UIView,CustomViewNibbed{}

class MainVC : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //  간편하게 뷰 인스턴스를 가져올수 있습니다.
        let myCustomView = MyCustomView.instantiate()
    }
}

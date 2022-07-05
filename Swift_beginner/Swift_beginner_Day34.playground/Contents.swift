import UIKit

//  친구 클래스
class Friend{
    //  일반적인 메소드
    func sayHi() {
        print("안녕?")
    }
    //  클래스 메소드로 해당 인스턴스가 생성되지 않아도 호출가능
    class func sayBye(){
        print("바이바이")
    }
}

//  일반적인 형태는 인스턴스 생성해야 해당 메소드 호출이 가능합니다.
let myFrined = Friend()
myFrined.sayHi()

//  인스턴스 생성을 하지 않아도 클래스에 바로 접근해서 메소드 호출이 가능합니다
Friend.sayBye()

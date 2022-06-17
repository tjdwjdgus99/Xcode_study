import UIKit

//  프로토콜 자체는 자신의 인스턴스는 만들지 못한다.
//  프로토콜을 임플리먼트 하면 해당 프로토콜의 변수나, 메소드의 설정이 강제된다.
//  프로토콜도 상속해서 사용이 가능하다.

//  이름
protocol Naming {
    var name: String{ get set}
    func getName() -> String
}

//  나이
protocol Aging{
    var age: Int {get set}
}

//  이름, 나이 프로토콜을 상속하는 친구 프로토콜
protocol UserNotifiable : Naming,Aging{
}

//  친구 프로토콜을 임플레먼트하는 MyFriend 스트럭스
struct MyFriend : UserNotifiable{
    var name: String
    var age: Int
    
    func getName() -> String {
        return self.name
    }
}

var myFriend = MyFriend(name: "철수", age: 19)
myFriend.getName()
myFriend.age

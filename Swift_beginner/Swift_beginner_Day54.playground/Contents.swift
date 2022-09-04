import Cocoa

//  이름 관련 트로토콜
protocol Naming {
    var name : String { get set }
}
//  캣과 친구 클래스가 프로토콜을 준수하고 있는 상황
class Cat : Naming{
    var name: String
    init(name : String){
        self.name = name
    }
}

class Friend : Naming {
    var name: String
    init(_ name : String) {
        self.name = name
    }
}

//  extension으로 확장 할때 준수하고 있는 특정 클래스에만
//  정의가 가능합니다 (struct는 안되고 클래스 일때만 가능)
extension Naming where Self : Friend {
    func sayName() {
        print("난 \(self.name) 라고 해")
    }
}
let myFriend = Friend("철수")
myFriend.sayName() //   난 철수 라고 해

extension Naming where Self : Cat{
    func sayName() {
        print("\(self.name) : 야옹~")
    }
}
let myCat = Cat(name:  "개냥이")
myCat.sayName()//   개냥이 : 야옹~

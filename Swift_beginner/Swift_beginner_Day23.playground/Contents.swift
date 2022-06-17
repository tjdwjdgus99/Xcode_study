import UIKit

//  이름관련 프로토콜
protocol Naming{
    var lastname : String{get set}
    var firstname : String{get set}
    func getName() -> String
}

//  익스텐션 환장을 통해 프로토콜에 메소드 추가
extension Naming{
    func getFullname() -> String {
        return self.lastname + self.firstname//배 추가
    }
}

//  Naming 프로토콜을 임플레먼트하는 스트럭트
struct Friend : Naming{
    var firstname: String
    var lastname : String
    func getName() -> String {
        return self.firstname// 철수 값만
    }
}

let myFriend = Friend(firstname: "철수", lastname : "배")

let name = myFriend.getName()

print("네임: ",name)
//  Friend 스트럭트에는 없지만 프로토콜 확장을 통해 메소드가 추가된것을 확인할수 있음

let fullname = myFriend.getFullname()
print("풀 네임: \(fullname)")

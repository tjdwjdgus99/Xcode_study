import Cocoa

//  struct는 클래스와 달리 생성자 매소드가 자동 탑제되어 있는데
struct Youtuber {
    var name : String
}
let youtuber = Youtuber(name: "성정현")
print(youtuber)

//  생성자를 안에서 따로 지정 가능하지만
struct Friend {
    var name : String
    init() {
        name = "철수"
    }
}
let myFriend = Friend()
print(myFriend)

//  아래와 같이 extension으로 빼서 기본 생성자 지정이 가능합니다
struct Pet {
    var name: String
}
extension Pet {
    init() {
        name = "고양이"
    }
}
let myPet = Pet()
print(myPet)

let myCat = Pet(name: "개냥이")
print(myCat)

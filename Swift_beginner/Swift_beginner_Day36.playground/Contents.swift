import Cocoa

//  sayHi를 강제하는 토크 프로토콜
protocol Talk{
    func sayHi()
}
//  베프, 토크클래스들은 토크 프로토콜을 임플리먼트
//  하기 때문에 sayHi 메소드 정의가 강제됨
class BestFriendTalk: Talk{
    func sayHi() {
        print("오호 오늘도 빡코딩 하는날?")
    }
}
class OldFriendTalk: Talk{
    func sayHi() {
        print("5252 오랜만이야")
    }
}
//  친구 클래스
class Friend{
    //  맴버변수로서 토크를 가진다
    //  외부에서도 주입이 가능하도록 프라이빗으로 안함
    var talk: Talk?
    init(){}
    //  생성자 메소드를 통해 토크 주입가능
    init(talk: Talk){
        self.talk = talk
    }
    //  의존성 주입이 완료된? 토크로 말한다
    func sayHello(){
        talk?.sayHi()
    }
    //  의존성 주입 메소드
    func sayTalk(talk: Talk){
        self.talk = talk
    }
}
//  친구 인스턴스 생성시에 토크를 주입시킴
let bfTalk = BestFriendTalk()
let myBestFriend = Friend(talk: bfTalk)
myBestFriend.sayHello()
//  친구 인스턴스를 만들고 맴버 변수에 넣어 주입함
let myOldFriendTalk = OldFriendTalk()
let myOldFriend = Friend()
myOldFriend.talk = myOldFriendTalk
myOldFriend.sayHello()

//  의존성 주입은 크게 3가지 방법
//  1. 생성자 메소드로 넣기
//  2. 맴버변수에 직접 넣기
//  3. 주입 메소드를 따로 만들어 넣기

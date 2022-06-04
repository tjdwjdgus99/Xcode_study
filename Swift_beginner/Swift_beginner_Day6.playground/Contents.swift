import UIKit

//  유튜버 모델  - struct / 구조체 = 값을 다른곳으로 복사
struct YoutuberStruct{//struct
    var name : String
    var subscribersCount : Int
}

var devSeong = YoutuberStruct(name: "성정현", subscribersCount: 99999)

var devSeongClone = devSeong//이름 넣기

print("값 넣기 전 devSeongClone.name : \(devSeongClone.name)")

devSeongClone.name = "호롤롤로"//이름바꾸기

print("값 넣기 후 devSeongClone.name : \(devSeongClone.name)")
print("값 넣기 후 devSeong.name : \(devSeong.name)")

print("=======struct======")

//  클래스 - class = 서로 연결해줌 , 메모리 주소를 가리킴
class YoutuberClass {//class
    var name : String
    var subscribersCount : Int
    //  생성자 = 메모리에 올린다
    //  init 으로 매개변수를 가진 생성자 메소드를 만들어야 매개변수를 넣어서 그 값을 가진 객체(object)를 만들수 있다
    init(name: String, subscribersCount: Int){
            self.name = name
            self.subscribersCount = subscribersCount
        }
    
}

var devJeong = YoutuberClass(name: "성정현", subscribersCount: 99999)
var me = devJeong

print("값 넣기 전 me.name : \(me.name)")

me.name = "후룰룰룰루"

print("값 넣기 후 me.name : \(me.name)")
print("값 넣기 후 devJeong.name : \(devJeong.name)")
print("=======class======")

import Cocoa

var things = [Any]()
struct Pet { var name : String}
struct Friend { var name : String}
things.append(0)
things.append(42)
things.append(Friend(name: "광식이"))
things.append(Friend(name: "횽식이"))
things.append("hello")
things.append((3.0, 5.0))
things.append((Pet(name: "댕댕이")))
things.append({ (name: String) -> String in "난 \(name)라고 해~!"})
//  any 타입의 배열을 스위치 문으로 처리 가능합니다
for thing in things {
    switch thing {
    case 0 as Int:
        print("0이 들어왔다")
    case let someInt as Int where someInt > 10:
        print("someInt \(someInt) 는 10보다 크다")
    case is Friend: //  자료형이 친구 라면
        print("들어온 게 친구 이다")
    case let someString as String:
        print("a string value of\"\(someString)\"")
    case let (x,y) as (Double, Double):
        print("an (x,y) point at \(x),\(y)")
    case let myDog as Pet:
        print("우리집 강아지 : \(myDog.name)")
    case let sayHi as (String) -> String:
        print(sayHi("세바스찬"))
    default: print("디폴트")
    }
}

import Cocoa

//  Any를 통해 어떠한 자료형도 받을 수 있습니다.
//  자료형이 Any인 배열
var things = [Any]()

struct Pet {
    var name : String
    var Kind : String
}
things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("안녕하세요?!")
things.append((3.0, 5.0))
things.append(Pet(name: "댕댕이", Kind: "강아지"))

//  이렇게 클로저 함수도 넣을수 있습니다.
things.append({ (name: String) -> String in "안녕 친구들!?,\(name)"})

print(things)

import UIKit

//  String을 반환하는 클로저
let myName : String = {
    //  myName 으로 들어간다
    return "성정현"
}()

print(myName)

//  클로저 정의
let myRealName = { (name : String) -> String in
    return "공부하는 \(name)"
}

myRealName("썽쩡현")

let myRealNameLogic : (String) -> Void = {(name: String) in
    print("공부하는 \(name)")
}

myRealNameLogic("썽쩡횬")

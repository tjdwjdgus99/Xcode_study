import UIKit

//final class Friend{ == 상속을 못하게 함
class Friend{
    var name : String
    
    init(name: String) {
        self.name = name
    }
}

class BestFriend : Friend{//이것이 작동을 못함
    
    override init(name: String) {
        super.init(name: "베프" + name)
        self.name = name
    }
}

let myFriend = Friend(name: "성정현")
let BestmyFriend = BestFriend(name: "칠수")

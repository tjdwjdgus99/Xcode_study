import UIKit

class Friend{
    var name : String
    func changeName(newName: String){
        self.name = newName
    }
    init(_ name: String){
        self.name = name
    }
}

var myFriend = Friend("성쩡현")

myFriend.changeName(newName: "공부하는 성쩡현")

myFriend.name

struct BestFriend{
    var name : String
    
    mutating func changeName(newName: String){
        self.name = newName
    }
    
}
var myBestFriend = BestFriend(name: "성쩡현")

myBestFriend.changeName(newName: "호롤롤로")

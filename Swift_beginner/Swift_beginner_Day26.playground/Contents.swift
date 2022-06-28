import UIKit

struct Pet{
    init(){
        print("pet 이 생성되었다.")
    }
}

struct Friend{
    
    var name: String
    
    //직접 키워드가 있어야지만 생성된다
    lazy var pet : Pet = Pet()
    
    init(_ name:String){
        self.name = name
        print("Friend가 생성됨")

    }
}

var myFriend = Friend("성정현")

//lazy 키워드
myFriend.pet

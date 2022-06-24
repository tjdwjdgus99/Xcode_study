import UIKit

protocol Naming{
    func getName() -> String
}

protocol Aging{
    func getAge() -> Int
}

typealias Friendable = Naming & Aging

typealias FullNaming = Naming

struct Friend : Friendable {
    
    var name : String
    var age : Int
    
    func getName() -> String {
        return self.name
    }
    
    func getAge() -> Int {
        return self.age
    }
    
}

typealias FriendName = String

var friendName : String = "성정현"

typealias Friends = [Friend]

var myFriendsArray : Friends = []

typealias StringBlock = (String) -> Void

func sayHi(completion : (String) -> Void){
    print("안녕하세요")
    completion("오늘도 빡코딩 하고 있나요??")
}

sayHi(completion: { saying in
    print("여기서 받음 :  \(saying)")
})

typealias MyType = MyClass.MY_TYPE

class MyClass{
    enum MY_TYPE{
        case DOG
        case CAT
        case BIRD
    }
    var myType = MY_TYPE.DOG
}

var myClass = MyClass()

myClass.myType = MyType.DOG

print("myClass.myType:" , myClass.myType)

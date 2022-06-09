import UIKit

class MyFriend {
    var name : String
    
    init(_ name: String = "이름없음"){
        self.name = name
        print("MyFriend 가 메모리에 올라갔다.", self.name)
    }
    
    deinit{
        print("메모리에서 사라짐 - ", self.name)
    }
    
    //deinit 검증을 위해 작성
    var calledTimes = 0
    let MAX_TIMES = 5
    
    static var intancesOfSelf = [MyFriend]()
    class func destorySelf(object: MyFriend){
        intancesOfSelf = intancesOfSelf.filter{ (aFriend : MyFriend) in
            aFriend !== object
        }
    }
    
    func call(){
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MAX_TIMES{
            MyFriend.destorySelf(object: self)
        }
    }
}

var myFriend = MyFriend("성정현")
let aFriend = MyFriend()

let anObjectMemoryAddress = Unmanaged.passUnretained(aFriend).toOpaque()

let secondMemorryAddress = Unmanaged.passUnretained(myFriend).toOpaque()

print(anObjectMemoryAddress)
print(secondMemorryAddress)

weak var aFriendToBoDestory = MyFriend("공부하는 성정현")

if aFriendToBoDestory != nil{
    aFriendToBoDestory!.call()
}else{
    print("객체가 더 이상 메모리에 없습니다.")
}

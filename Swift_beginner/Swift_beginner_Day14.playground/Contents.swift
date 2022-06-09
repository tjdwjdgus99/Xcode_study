import UIKit

//  키 : 값
var MyFriends = ["bestFriend" : "성정현","highschool" : "영희"]//컬랙션이라서 많은 값이 들어감

let myBestFriend = MyFriends["bestFriend"]

let highschoolFriend = MyFriends["highschool"]

let youtubeFriend = MyFriends["youtube" , default: "친구없음"]

MyFriends["bestFriend"] = "공부하는 성정현"

let myBF = MyFriends["bestFriend"]

MyFriends["newFriend"] = "철수"

let newFriend = MyFriends["newFriend"]

MyFriends.updateValue("수잔", forKey:"girlFriend")

let girlFriend = MyFriends["girlFriend"]

MyFriends.updateValue("쨱슨", forKey:"bestFriend")

let myBestFriend2 = MyFriends["bestFriend"]

let emptyDictionary : [String : Int] = [:]//배열을 정리하기

MyFriends.count

for item in MyFriends{
    print("item : ",item)
}

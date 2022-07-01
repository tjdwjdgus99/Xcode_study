import UIKit

let myFriendsArray : [String] = ["철수", "영희" , "수진", "제임스", "마크"]

var friendsWithIndex : [String] = []

myFriendsArray.forEach { aFriend in
    print(aFriend)
}
//  enumerated를 통해 해당하는 녀석의 인덱스를 가져올 수 있습니다.
//  인덱스,   가져온 아이템/    어디서 가져올건지
for (index, aFriend) in myFriendsArray.enumerated(){
    print("index : \(index) , item : \(aFriend)")
    friendsWithIndex.append("\(index).번\(aFriend)")
}

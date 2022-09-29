import Cocoa

//  배열
let myFriends = ["철수","영희","수진","제시카"]

let yourFriends = ["찰스","수진","제니퍼","존나"]

//  배열을 set으로 만들기
let myFriendsSet = Set(myFriends)
let yourFirnedsSet = Set(yourFriends)

//  중복되는 녀석들은 제거하고 가져오기
let exceptDuplicateFriends = myFriendsSet.symmetricDifference(yourFirnedsSet)

print(exceptDuplicateFriends)

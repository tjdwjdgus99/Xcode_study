import Cocoa

//  배열
let myFriends = ["철수","영희","수잔","제시카"]

let yourFriends = ["철수","수잔","제니퍼","존시나"]

//  배열을 set으로 만들기
let myFrinedsSet = Set(myFriends)
let yourFriendsSet = Set(yourFriends)

//  인터섹션으로 중복만 가져오기
let commonFriends = myFrinedsSet.intersection(yourFriendsSet)

print(commonFriends)

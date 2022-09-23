import Cocoa

//  배열
let myFriends = ["철수","영희","수잔","제시카"]

let yourFriends = ["철수","수잔","제시퍼","존시나"]

//  배열을 set으로 만들기
let myFriedsSet = Set(myFriends)
let yourFriendsSet = Set(yourFriends)

//  유니온으로 중복은 제거하고 둘 합치기
let totalFriends = myFriedsSet.union(yourFriendsSet)

print(totalFriends)

import Cocoa

//  딕셔너리 배열
let myFriends = [ "철수":19,"수잔":23,"존슨":25]

//  딕셔너리 배열 반복 처리가 가능합니다
//  for (키, 값) in 딕셔너리 배열
for (friend, age) in myFriends {
    print("\(friend)의 나이는 \(age) 이다")
}

//  철수의 나이는 19이다
//  수잔의 나이는 23이다
//  존슨의 나이는 25이다

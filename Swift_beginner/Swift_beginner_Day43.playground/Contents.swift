import Cocoa

struct Friend{
    var name: String
    var age: Int
}

let myFriends = [ Friend(name: "철수", age: 10), Friend(name: "영희", age: 10),Friend(name: "수진", age: 20),]
//  reduce를 통해 콜렉션으로 하나 값 계산이 가능합니다
//  $0 : 결과 / $1 : 각 아이템
//  결과 + 친구의 나이 더하기를 콜렉션 갯수만큼 진행
//  10이 처음 result에 대한 초기값
let totalAge_00 = myFriends.reduce(10, { (result: Int, nextItem: Friend) -> Int in return result + nextItem.age})
//  아래와 같이 축약 표현이 가능합니다
let totalAge_01 = myFriends.reduce(0, { (result: Int, nextItem: Friend) -> Int in return result + nextItem.age})

let totalAge_02 = myFriends.reduce(0, { result, nextItem in return result + nextItem.age})

let totalAge_03 = myFriends.reduce(0, { result, nextItem in result + nextItem.age})
    
let totalAge_04 = myFriends.reduce(0, { $0 + $1.age})

let totalAge_05 = myFriends.reduce(0) { $0 + $1.age}

print(totalAge_00)
print(totalAge_01)

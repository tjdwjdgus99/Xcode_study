import UIKit

//콜렉션 : 데이터를 모아둔 것
//  ㄴ배열, 셋, 딕셔너리, 튜플
//배열
var myArray : [Int] = [0,1,2,3,4,5,6,7,8,9,10]

for item in myArray{//배열을 아이템에 넣어서 그 수만큼 반복하겠다
    print("item : \(item)")
}

print("-----------------")

for item in myArray where item > 5{//5보다 클때만 반복하겠다
    print("item : \(item)")
}

print("-----------------")

for item in myArray where item % 2 == 0{//짝수만 출력하겠다
    print("item : \(item)")
}

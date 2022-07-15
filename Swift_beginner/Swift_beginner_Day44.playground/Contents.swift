import Cocoa

let numbers = [1, 1, 1, 5, 5, 9, 7]

//  콜렉션간 변형을 통해
//  유일한 값을 가지는 배열로 변환이 가능합니다
//  배열 -> 샛
let numberSet = Set(numbers)
//  셋 -> 배열
var uniqueNumbers = Array(numberSet)
//  정렬이 되어야 하면 한번 정렬해 주기
uniqueNumbers.sort()
print(uniqueNumbers)

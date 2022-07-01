import UIKit

//  맵 고차함수를 통해 콜렉션의 요소를 변형시킬수 있습니다.
let friendsArray = ["철수", "영희", "수진", "제임스","마크"]
//  배열 맵핑
let myFriends = friendsArray.map{
    "내친구: " + $0
                //값을 하나씩 대입해준다
}
print(myFriends)

let myPetDictionary = ["고양이": "야옹","강아지": "멍멍","송아지": "음매"]

//  딕셔너리 맵핑
let petResult = myPetDictionary.map{(kind, sound) in
    return ("우리집: \(kind)", "울음소리: \(sound)")
}
print(petResult)

let numberSet : Set<Int> = [1,2,3,4,4,5,5]

//  셋 맵핑
let result = numberSet.map({(number: Int) in
    return number * 10
})
print("mappedNumbersSet: \(result)")

//  아래와 같은 방식으로 클로저 부분 축약 가능
let resultOne = numberSet.map({(number: Int) in
    return number * 10
})
let resultTwo = numberSet.map({(number: Int) in
    return number * 10
})
let resultThree = numberSet.map({ $0 * 10})
let resultFour = numberSet.map{ $0 * 10 }

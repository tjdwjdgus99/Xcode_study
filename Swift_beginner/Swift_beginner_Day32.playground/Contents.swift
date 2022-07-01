import UIKit

var myArray = ["one", "2","three","4"]
//  map은 변형시키는 값으로 nil도 넣지만
let intArray = myArray.map({(item: String) in
    return Int(item)
})

print(intArray)

//  compactMap 메소드는 변형시키는 값이 nil이면 해당 요소를 뺍니다
let onlyIntArray = myArray.compactMap({(item: String)in
    return Int(item)
})

print(onlyIntArray)

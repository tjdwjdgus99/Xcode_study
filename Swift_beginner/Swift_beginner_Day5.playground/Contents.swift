import UIKit

//  옵셔널이란?
//  ? = 값이 있는지 없는지 모른다. , 값이 없을경우 = nil
var someVariable : Int? = nil

if someVariable == nil{
    someVariable = 90
}

print("someVariable: " ,someVariable)

//  언렙핑이란? 랩 = 감싸져있는 것을 벗기는것

if let otherVariable = someVariable{
    print("언래핑 되었다. 즉 값이 있다. otherVariable :\(otherVariable)")
}else{
    print("값이 없다.")
}

someVariable = nil

//someVariable 이 비어있으면 즉 값이 없으면 기본값으로 이것을 넣겠다
let myValue = someVariable ?? 10
print("MyValue : \(myValue)")

var firstValue : Int? = 30
var secondValue : Int? = 50

print("firstValue: \(firstValue)")
print("secondValue: \(secondValue)")

unwrap(firstValue)
unwrap(secondValue)

func unwrap(_ parameter: Int?){
    print("unwrap() called")
    //값이 없으면 리턴한다
    guard let unWrappedParam = parameter else{
        return
    }
    print("unWrappedParam: \(unWrappedParam)")
}

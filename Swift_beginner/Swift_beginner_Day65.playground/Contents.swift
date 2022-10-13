import Cocoa

//  튜플이 빛날때는 메소드의 반환형으로 사용할 때입니다
//  매개변수로 숫자 배열을 받고
//  튜플로 최소, 최대 숫자를 반환하는 메소드
func minMax(array:  [Int]) -> (min:Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin,currentMax)
}
let myNumbers = [1,5,10,8]

//  메소드의 반환영이 튜플 타입입니다.
let result = minMax(array: myNumbers)
print(result.min)
print(result.max)
print(result.0)
print(result.1)

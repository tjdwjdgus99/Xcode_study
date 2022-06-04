import UIKit

//  함수,메소드 정의
func myFunction(name: String) -> String{
    return "안녕하세요?! \(name) 입니다!"
}

//  함수, 메소드를 호출한다 call
myFunction(name: "성정현")

//  함수, 메소드 정의
func myFunctionSecond(name: String) -> String{
    return "안녕하세요?! \(name) 입니다!"
}

myFunctionSecond(name: "호롤롤로")

//  함수, 메소드 정의
func myFunctionthird(_ name: String) -> String{
    return "안녕하세요?! \(name) 입니다!"
}

myFunctionthird("히히")//name조차 사용하기 싫으면 앞에 _를 붙히기

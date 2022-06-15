import UIKit

enum MismatchError: Error{//에러를 반환하는 클로저
    case nameMismatch
    case numberMismatch
}

//  에러를 던지는 메소드
func guessMyName(name input: String) throws {
    print("guessMyName() called")
    if input != "성정현"{
        print("틀렸다")
        throw MismatchError.nameMismatch
    }
    print("맞췄다")
}


//try? guessMyName(name: "기모띠") //  에러를 잡지 않겠다
//try! guessMyName(name: "기모띠") //  에러가 분명히 있지 않을것이다(에러가 있으면 오류걸림)

do{
    try guessMyName(name: "기모띠")//실행해보고 값이 없으면
} catch{//없으면 실행
    print("잡은 에러:\(error)")
}

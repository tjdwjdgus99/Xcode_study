import UIKit

/*
 
 
//  completion 이라는 클로저를 매개변수로 가지는 메소드 정의
func sayHi(completion: () -> Void){
    print("sayHi() called")
    sleep(2)//  2초 잠깐 멈추기
    //  completion 클로저 실행
    completion()
}

sayHi(completion: {
    print("2초가 지났다 1")
})

sayHi{
    print("2초가 지났다 2")
}

sayHi{
    print("2초가 지났다 3")
}

//  매개변수로써 데이터를 반환하는 클로저
func sayHiWithName(completion: (String) -> Void){
    print("sayHiWithName() called")
    sleep(2)
    //  클로저를 실행과 동시에 데이터를 반환
    completion("오늘도 빡코딩 하자")
}

sayHiWithName(completion: {(comment: String) in
    print("2초 뒤에 그가 말했다! comment: ", comment)
})

sayHiWithName(completion: {comment in
    print("2초 뒤에 그가 말했다! comment: ", comment)
})

sayHiWithName{comment in
    print("2초 뒤에 그가 말했다! comment: ", comment)
}
sayHiWithName{
    print("2초 뒤에 그가 말했다! comment: ", $0)
}
 
*/

//  매개변수로써 데이터를 여러개 반환하는 클로저
func sayHiWithFullName(completion: (String,String) -> Void){
    print("sayHiWithName() called")
    sleep(2)
    //  클로저를 실행과 동시에 데이터를 반환
    completion("개빡코딩", "해라임마")
}

sayHiWithFullName{frist, second in
    print("첫번째: \(frist)", "두번쨰: \(second)")
}
sayHiWithFullName{
    print("첫번째: \($0), 두번쨰: \($1)")
}

func sayHiOptionl(completion: (() -> Void)? = nil){
    print("sayHi() called")
    sleep(2)//  2초 잠깐 멈추기
    //  completion 클로저 실행
    completion?()
}
sayHiOptionl()

sayHiOptionl(completion: {
    print("2초가 지났다!!")
})

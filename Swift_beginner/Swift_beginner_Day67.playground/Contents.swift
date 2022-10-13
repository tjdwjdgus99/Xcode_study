import Cocoa

let statusCode = 403

//  400 - 499 레인지에 status코드가 포함된다면
if (400..<500).contains(statusCode) {
    print("이런 들어옴")
}

//  패텀 매칭 연산자
//  ~=를 통해 보다 간결하게 표현 가능합니다
if 400..<500 ~= statusCode {
    print("와 들어옴")
}

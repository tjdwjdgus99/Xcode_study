import Cocoa

//  패턴 매칭 연산자 오버로드
//  문자 숫자가 일치 되는지 여부 추가!
func ~= (pattern: String, value: Int) -> Bool {
    return pattern == "\(value)"
}

//  패턴 ~= 값
//  패턴 매칭 연산자 오버로드로
//  입맛에 맞게 연산기능을 추가 할 수 있습니다
if "20" ~= 20 {
    print("글자와 숫자 일치!")
} else {
    print("글자와 숫자 불일치..")
}
//  글자와 숫자 일치!

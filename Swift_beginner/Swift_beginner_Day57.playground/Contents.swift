import Cocoa

//  팻 관련 프로토콜
protocol PetDelegate {
    func sayHello()
    func saySomething()
}
//  프로토콜 인스텐션을 통해 메소드를 옵셔널로 설정 할 수 있습니다 즉 준수하지 않아도 됩니다
extension PetDelegate {
    func saySomething(){
        
    }
}

//  팻 델리겟을 준수하는 팻 클래스
//  daySomeThing은 옵셔널이라서 컴파일 에러가 안남
class Pet: PetDelegate {
    func sayHello() {
        print("야옹~")
    }
}

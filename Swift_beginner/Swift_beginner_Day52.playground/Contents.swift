import Cocoa

//  객체 생성시 싱글턴 패턴으로 한 메모리 공간에 값을 올리고 있습니다
class Pet{
    static var shared = Pet()
    private init() {}
}

let myPet = Pet.shared

let myPet2 = Pet.shared


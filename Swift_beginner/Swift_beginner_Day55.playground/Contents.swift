import Cocoa

class Pet{
    var name : String
    init(name : String){
        self.name = name
    }
}

class Cat : Pet{    //  pet 클래스를 상속하는 캣 클래스
    var hair : String
    init(name : String,_ hair : String){
        self.hair = hair
        super.init(name: name)  //  부모 클래스의 행성자 호출
    }
}
class Dog : Pet{    //  pet 클래스를 상속하는 개 클래스
    var kind : String
    init(_ name : String, kind : String){
        self.kind = kind
        super.init(name: name)  //  super는 부모 클래스의 것
    }
}
let myDog = Dog("똘똘이",kind:  "치와와")
let myCat = Cat(name: "고냥이", "집사구함")
let myPets : [Pet] = [myDog, myCat]

myPets.forEach{ //  콜렉션에 forEach 로 반복문 돌리기
    if $0 is Dog {  //  is를 통해 해당 객체의 자료형 판별 가능
        print("\($0.name) 는 강아지 에요!")
    }else if $0 is Cat {//  $0 배열의 아이템 하나하나
        print("\($0.name) 는 고양이 에요!")
    }
}

import UIKit

var myAge = 0{
    willSet{//변경전
        print("값이 설정될 예정이다. myAge: \(myAge)")
    }didSet{//변경후
        print("값이 설정 되었다. myAge: \(myAge)")
    }
}

myAge = 10//값을 접근하면
myAge = 20

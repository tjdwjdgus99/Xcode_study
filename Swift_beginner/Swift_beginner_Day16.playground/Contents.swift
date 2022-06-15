import UIKit

var title = ""

let jobTitle = "개발자"

//jobTitle = "호롤롤로"

func sayName(_ name: String){
    print("안녕?! 난 \(name)라고헤")
}

func sayHi(_ name: inout String){//값을 추가하고 싶을때 inout를 활용
    name = "공부하는 " + name
    print("안녕?! 난 \(name)라고헤")
}

sayName("성정현")
var name = "성쩡현"
sayHi(&name)//값을 변경하고 싶을때 & 활용

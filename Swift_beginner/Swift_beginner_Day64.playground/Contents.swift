import Cocoa

//  튜플은 스위프트 콜렉션중 하나입니다
//  콜렉션 : 배열, 딕셔너리, 샛, 튜플
//  튜플은 키와 값으로 이뤄진 묶음 입니다
//  (키: 값, 키: 값 ...)
var myPet = (name: "멍멍이",kind:"강아지",age:1)
print(myPet.name)
print(myPet.kind)
print(myPet.age)

//  요소의 순서로도 접근가능
print(myPet.0)
print(myPet.1)
print(myPet.2)

//  튜플 요소에서 접근해서 값 변경이 가능합니다
myPet.name = "개냥이"
print(myPet.name)

//  하지만 한번 정한 형만 받고 다른 자료형은 못받음
//  myPet.name = 3 //   컴파일 에러

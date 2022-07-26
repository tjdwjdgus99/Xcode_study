import Cocoa

struct PetKind {
    let name: String
}
struct Pet {
    let id: String
    let name: String
    let kind: PetKind
}
//  Equatable 프로토콜을 통해서 커스텀 비교 연산자를 만들수 있습니다
extension Pet: Equatable {
    public static func == (lhs: Pet, rhs: Pet) -> Bool {
        return lhs.id == rhs.id && lhs.kind.name == rhs.kind.name
    }
}
let catKind = PetKind(name: "고양이")
let dogKind = PetKind(name: "강아지")
let myPet1 = Pet(id: "01", name: "고냥이",kind:catKind)
let myPet2 = Pet(id: "01", name: "강얼쥐",kind:dogKind)
let myPet3 = Pet(id: "01", name: "개냥스",kind:catKind)
if myPet1.id == myPet2.id && myPet1.kind.name == myPet2.kind.name{
    print("두 팻이 같다")
}else {
    print("두 팻이 다르다")
}
//  커스텀 비교 연산자
print(myPet1 == myPet3)
//  true

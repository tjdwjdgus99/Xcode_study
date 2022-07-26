import Cocoa

struct Friend{
    let nickname: String
    let person: Person?
}
struct Person {
    let name: String
    let pet: Pet?
}
struct Pet{
    let name: String?
    let kind: String
}
let pet = Pet(name:"개냥이",kind: "고양이")
let person = Person(name: "성정현",pet: pet)
let friend = Friend(nickname: "빡코딩",person: nil)

//  이런식으로 옵셔널이 연쇄적으로 있을때
if let person = friend.person {
    if let pet = person.pet {
        if let petName = pet.name {
            print("petName: \(petName)")
        }
    }
}
//  옵셔널 체이닝
//  한번만 언랲핑하고 나머지는 옵셔널 처리가 가능합니다
if let petName = friend.person?.pet?.name {
    print("petName: \(petName)")
}else {
    print("팻 이름이 없어요")
}

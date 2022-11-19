//  CaseIterable 프로토콜을 통해
//  이넘 타입도 콜렉션 처럼 사용할 수 있습니다
enum Pet: String, CaseIterable {
    case cat = "고양이"
    case dog = "강아지"
    case trueBird = "참새"
}
//  allCase를 통해
//  이넘의 타입들을 콜렉션으로 가져옵니다
let petKindsCount = Pet.allCases.count
print("애완동물 종류수:\(petKindsCount)")

//  반복문도 가능
for petTypeItem in Pet.allCases{
    print(petTypeItem.rawValue)
}

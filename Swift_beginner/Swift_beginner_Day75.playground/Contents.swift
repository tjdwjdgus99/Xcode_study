import Cocoa

//  애완동물 행동이넘
enum PetAction {
    case sleep  //  잠자기
    case tailWagging    //  꼬리흔들기
    //  이넘에 값을 넣을 수도 있습니다
    case move(distance: Float)  //  움직임
}
func doAction(_ action: PetAction){
    switch action {
    case .sleep:
        print("댕댕이가 자고 있다")
    case .tailWagging:
        print("댕댕이가 꼬리를 흔들고 있다")
    case .move(let distance):
        print("댕댕이가 \(distance)만큼 움직였다")
    }
}
doAction(.sleep)
doAction(.tailWagging)
doAction(.move(distance: 3.3))
doAction(.move(distance: 0.5))

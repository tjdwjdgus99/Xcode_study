import Cocoa

//stride를 통해 범위안에 반복처리가 가능합니다
//from시작, to 끝, by 만큼
for countdown in stride(from: 4, to:0 , by: -1){
    print("\(countdown)...")
}

//  배열 식스텐션
extension Array{
    //  배열을 쪼개는 메소드
    func chunks(_ chunSize: Int) -> [[Element]] {
        //  stride를 통해 범위는 0에서 배열의 총 갯수
        //  나누는 크기 만큼
        return stride(from: 0, to: self.count,by: chunSize).map {
            //  나누는 크기만큼의 배열 생성
            Array(self[$0..<Swift.min($0 + chunSize, self.count)])
        }
    }
}

let numbers = Array(1...10)
let result = numbers.chunks(3)

print(result)

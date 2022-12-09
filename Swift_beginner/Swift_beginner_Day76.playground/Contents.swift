import Cocoa

let friends: [String?] = [nil, "철수", "수잔", nil, "데이븻"]

//  case let을 활용해서 콜렉션에 값이 있는 녀석들만 가져올 수 있습니다
for case let friend? in friends {
    print("친구를 찾았다 : \(friend)")
}

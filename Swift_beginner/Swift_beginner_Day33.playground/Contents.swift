import UIKit

//  콜렉션 안에 콜렉션이 들어있는 형태 2차원
let myFriends = [["철수"],["영희"],["제임스","본드"],["스티븐","잡스"]]

// flatmap을 통해 1차원으로 만들어 줍니다
//  플랫 = 납작하게 누르다
let flatMapped = myFriends.flatMap {(item: [String]) in
    return item
}
print(flatMapped)

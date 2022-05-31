import UIKit

//0...5 = 0 ~ 5
//0..<5 = 0 ~ 4
for index in 0...5{
    print("히히 index \(index)")
}

for index in 0..<5 where index % 2 == 0{//2로 나누었을때 0이 나오는 것만
    print("호호 index \(index)")
}

var randomInts: [Int] = [Int]()

for _ in 0..<25{//24번 반복
    let randomNumber = Int.random(in: 0...100)//100가지의 렌덤 숫자
    randomInts.append(randomNumber)
}

print("randomInts: \(randomInts)")

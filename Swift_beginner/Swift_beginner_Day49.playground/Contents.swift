import Cocoa

//  0에서 2까지
let myRange = 0...2

//  0에서 2보다 작을때 까지
let myRange2 = 0..<2
let myArray = ["철수","영희","제임스","수잔"]

//  레인지를 통해 범위 설정이 가능합니다
print(myArray[myRange])

for index in myRange {
    print(myArray[index])
}

for index in myRange2 {
    print(myArray[index])
}

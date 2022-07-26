import Cocoa

let friends = ["영희", "철수", "존슨"]

let pets = ["야옹이","댕댕이","찍찍이"]

//  두 콜렉션을 zip을 이용해서 쌍으로 묶을수 있습니다
let zipped = zip(friends, pets)

for item in zipped{
    print("\(item.0) : \(item.1)")
}

let zippedArray = Array(zip(friends, pets))
print(zippedArray)

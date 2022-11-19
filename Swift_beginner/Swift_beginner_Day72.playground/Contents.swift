import Cocoa

//  튜플도 스위치에서 사용 가능합니다
//  x,y축 위치를 나타내는 somPoint 튜플
let somePoint = (x: 0, y: 1)

switch somePoint {//    스위치 문
case (x: 0, y: 0):
    print("\(somePoint) 는 중심에 있다")
case (_, 0):    //  y축 값만 비교 y가 0이라면
    print("\(somePoint) 는 x축에 있다")
case (0, _):    //  x축 값만 비교 x기 0이라면
    print("\(somePoint) 는 y축에 있다")
case (-2...2, -2...2):    //  상자의 크기가 4X4
    print("\(somePoint) 는 상자 안에 있다")
default:
    print("\(somePoint) 는 상자 밖에 있다")
}

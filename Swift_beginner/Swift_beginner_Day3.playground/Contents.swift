import UIKit
import Foundation

//학교 - 초, 중, 고
enum School{//enum : 소분류 하기전 제목
    case elementary
    case middle
    case higt
    // == case elementary, middle, higt
}

let yourSchool = School.higt
print("yourSchool : \(yourSchool)")

enum Grade : Int {
    case first = 1
    case second = 2
    
}

let yourGrade = Grade.second
print("yourGrade : \(yourGrade.rawValue)")//세컨드가 가지고 있는 값 출력 : .rawValue

enum SchoolDetail{
    case elementary(name: String)
    case middle(name: String)
    case higt(name: String)
    
    func getName() -> String{//getName을 호출하면 스트링값으로 반환
        switch self{//나 자신의 값을 가져오기
        case.elementary(let name)://elementary 이라면
            return name//let을 사용해서 name안의 데이터값을 가져오기
        case let .middle(name)://middle 이라면
            return name
        case.higt(let name)://higt 이라면
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "기모띠 중학교")

print("yourMiddleSchoolName : \(yourMiddleSchoolName.getName())")

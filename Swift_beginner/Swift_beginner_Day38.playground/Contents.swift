import Cocoa

//  """따옴표를 3개하면 안에 따옴표도 같이 처리 가능합니다.
let jsonFromServer = """
{
    "nick_name" : "공부하는 성정현",
    "job" : "학생",
    "user_name": "JH"
}
"""

//  코더블을 통해 제이슨 데이터를 클래스 혹은 스트럭트 인스턴스로 생성이 가능합니다
struct User: Codable {
    var nickname:String
    var job:String
    var myUserName:String
    //  이때 파생하는 제이슨의 키와 맴버 변수의 이름이 일치해야 함
    //  아래와 같이 코딩키를 이용하면 변경이 가능
    enum CodingKeys: String, CodingKey {
        case nickname = "nick_name"
        //  제이슨 user_name 키를 myUserName 이라는 이름으로 받겠다고 설정
        case myUserName = "user_name"
        case job
    }
}

//  제이슨 스트링을 데이타로 만들기
let jsonData : Data = jsonFromServer.data(using: .utf8)!

do {
    //  제이슨 디코더를 통해 제이슨 데이터로 유저 인스턴스를 생성!
    //  try catch로 에러 처리
    let user = try JSONDecoder().decode(User.self, from: jsonData)
    print("user: \(user)")
} catch {
    print("에러발생! \(error.localizedDescription)")
}

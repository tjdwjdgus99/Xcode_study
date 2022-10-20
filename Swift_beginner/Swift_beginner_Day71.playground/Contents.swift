import Cocoa

class Sword{    //  공격할때 마다 내구도가 감소하는 무기 클래스
    var durability = 100 // 내구도
    //  무기의 내구도에 따라 가져올때 (get) 값이 변하는 변수
    var itemInfo : String{ //   아이템 설명
        get {
            switch durability{
            case 50...100:
                return "음 아주 명검이여~ 껄껄스"
            case 10...50:
                return "아직은 쓸만혀"
            default:
                return "버려잉.."
            }
        }
    }// 무기 사용으로 내구도가 감소하는 메소드
    func attackedMonster(){
        self.durability = self.durability - 40
    }
}
let mySword = Sword()
mySword.attackedMonster()
print(mySword.itemInfo)
mySword.attackedMonster()
print(mySword.itemInfo)
mySword.attackedMonster()
print(mySword.itemInfo)


import Cocoa

//  set을 통해 배열이 다른 배열을 포함하고 있는지 여부를 체크할 수 있습니다.
let myPets = ["개냥이", "댕댕이", "꼬북이","짹짹이"]
let favoritePets = ["개냥이","댕댕이"]
let friendsPets = ["뚱뚱이","해피"]

let myPetsSet = Set(myPets)
let favoritePetsSet = Set(favoritePets)
let friendsPetSet = Set(friendsPets)

let isFavoritePetsSet = favoritePets.isSubset(of: myPetsSet)
let isFriendsPetsInMyPets = favoritePets.isSubset(of: friendsPetSet)

print("isFavoritePetsSet : \(isFavoritePetsSet)")

print("isFavoritePetsSet : \(isFavoritePetsSet)")

import Cocoa

var isIcedCoffee : Bool = false

print("isIcedCoffee: ", isIcedCoffee)

//  toggle을 통해서 손쉽게 bool 값을 변경시킬수 있습니다
isIcedCoffee.toggle()
print("토글됨 isIcedCoffee: \(isIcedCoffee)")

isIcedCoffee.toggle()
print("토글됨 isIcedCoffee: \(isIcedCoffee)")

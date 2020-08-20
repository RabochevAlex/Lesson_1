import UIKit
import Darwin

// решение квадратного уравнения
let numberA:Int = 1
let numberB:Int = -2
let numberC:Int = -9

let numberDiscr = numberB*numberB - 4*numberA*numberC

if numberDiscr < 0 {
    print("Уравнение не имеет решения")
} else if numberDiscr == 0 {
    print("Уравнение имеет один корень:" + String(-numberB/2*numberA))
} else {
    print("Уравнение имеет два корня, \n" +
    "х1 = " + String((-Double(numberB) + sqrt(Double(numberDiscr)))/(2*Double(numberA))) + " \n" +
    "x2 = " + String((-Double(numberB) - sqrt(Double(numberDiscr)))/(2*Double(numberA)))
    )
}

print(" \n")

// тригонометрия
let lineA:Double = 1
let lineB:Double = 2
let lineC = sqrt(
    NSDecimalNumber(decimal: Decimal(pow(2,lineA))).doubleValue +
    NSDecimalNumber(decimal: Decimal(pow(2,lineB))).doubleValue
    )
print("Площадь треугольника равна:" + String((lineA * lineB)/2)+" \n" +
"Гипотенуза равна:" + String(lineC) + " \n" +
"Периметр равен:" + String(lineA + lineB + lineC))

print(" \n")

// вклады
var sumMoney: Int = 10000
let procent: Int = 5

for index in 1...5 {
    sumMoney = sumMoney + sumMoney * procent/100
    //print(String(sumMoney))
    print("Сумма по вкладу после " + String(index) + " года составит: " + String(sumMoney) + " \n")
}

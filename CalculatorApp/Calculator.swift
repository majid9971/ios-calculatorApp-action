
import Foundation

class Calculator {
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
    
    func subtract(a: Int, b: Int) -> Int {
        return a - b
    }

    func multiply(a: Int, b: Int) -> Int {
        return a * b
    }

    func divide(a: Int, b: Int) -> Int? {
        guard b != 0 else { return nil }
        return a / b
    }
}

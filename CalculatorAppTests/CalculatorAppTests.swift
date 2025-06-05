import XCTest
@testable import CalculatorApp

final class CalculatorAppTests: XCTestCase {
    var calculator: Calculator!

    override func setUp() {
        super.setUp()
        calculator = Calculator()
    }

    func testAddition() {
        XCTAssertEqual(calculator.add(a: 2, b: 3), 5)
    }

    func testSubtraction() {
        XCTAssertEqual(calculator.subtract(a: 5, b: 2), 3)
    }

    func testMultiplication() {
        XCTAssertEqual(calculator.multiply(a: 3, b: 4), 12)
    }

    func testDivision() {
        XCTAssertEqual(calculator.divide(a: 10, b: 2), 5)
    }

    func testDivisionByZero() {
        XCTAssertNil(calculator.divide(a: 10, b: 0))
    }
}

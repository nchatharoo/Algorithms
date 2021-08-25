
import XCTest

/* Write a program using TDD that prints the number from 1 to 100.
 For multiple of three, print "Fizz"
 For multiple of five, print "Buzz"
 For numbers which are multiples of both three and five, print "FizzBuzz".
 */

class FizzBuzzPrinter {
    func print(_ number: Int) -> String {
        if number == 3 {
            return "Fizz"
        }
        return "\(number)"
    }
}

class FizzBuzzTests: XCTestCase {
    
    func test_print_defaultCase() {
        
        expect(1, withResult: "1")
    }
    
    func test_print_multipleOfThree() {
        
        expect(3, withResult: "Fizz")
    }
}

// Helpers

private func makeSUT() -> FizzBuzzPrinter {
    return FizzBuzzPrinter()
}

private func expect(_ number: Int, withResult result: String) {
    
    let sut = FizzBuzzPrinter()

    XCTAssertEqual(sut.print(number), result)
}

FizzBuzzTests.defaultTestSuite.run()

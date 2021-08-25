
import XCTest

/* Write a program using TDD that prints the number from 1 to 100.
 For multiple of three, print "Fizz"
 For multiple of five, print "Buzz"
 For numbers which are multiples of both three and five, print "FizzBuzz".
 */

class FizzBuzzPrinter {
    func print(_ number: Int) -> String {
        return "1"
    }
}

class FizzBuzzTests: XCTestCase {
    
    func test_print_defaultCase() {
        
        let sut = FizzBuzzPrinter()
        
        let result = sut.print(1)
        
        XCTAssertEqual(result, "1")
    }
}

FizzBuzzTests.defaultTestSuite.run()

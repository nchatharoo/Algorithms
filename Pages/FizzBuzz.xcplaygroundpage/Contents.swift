
import XCTest

/* Write a program using TDD that prints the number from 1 to 100.
 For multiple of three, print "Fizz"
 For multiple of five, print "Buzz"
 For numbers which are multiples of both three and five, print "FizzBuzz".
 */

class FizzBuzzPrinter {
    func print(_ number: Int) -> String {
        
        if number.isMultiple(of: 15) {
            return "FizzBuzz"
        } else if number.isMultiple(of: 3) {
            return "Fizz"
        } else if number.isMultiple(of: 5) {
            return "Buzz"
        }
        return "\(number)"
    }
}

class FizzBuzzTests: XCTestCase {
    
    func test_print_defaultCase() {
        
        expect(1, withResult: "1")
    }
    
    func test_printFizz_numberIsThree() {
        
        expect(3, withResult: "Fizz")
    }
    
    func test_printFizz_numberIsMultipleOfThree() {
        let numbers = [6, 9, 12]

        numbers.forEach({ number in
            expect(number, withResult: "Fizz")
        })
    }
    
    func test_printBuzz_numberIsFive() {
        
        expect(5, withResult: "Buzz")
    }
    
    func test_printBuzz_numberIsMultipleOfFive() {
        let numbers = [10, 20, 35]
        
        numbers.forEach({ number in
            expect(number, withResult: "Buzz")
        })
    }
    
    func test_printFizzBuzz_numberIsFifteen() {
        expect(15, withResult: "FizzBuzz")
    }
    
    func test_printFizzBuzz_numberIsMultipleOfFifteen() {
        let numbers = [30, 60, 75]
        
        numbers.forEach({ number in
            expect(number, withResult: "FizzBuzz")
        })
    }
}

// Helpers

private func expect(_ number: Int, withResult result: String) {
    
    let sut = FizzBuzzPrinter()

    XCTAssertEqual(sut.print(number), result)
}

FizzBuzzTests.defaultTestSuite.run()

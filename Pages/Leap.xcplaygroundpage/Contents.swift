//: [Previous](@previous)

import Foundation
import XCTest

/* Write a function that, given an integer representing a year, tells whether the year is leap or not.
A leap year in the Gregorian calendar occurs on every year that is evenly divisible by 4, except every year that is evenly divisible by 100, unless the year is also evenly divisible by 400.
For example, 2021 is not a leap year, but 2020 is. 1900 is not a leap year, but 2000 is. */

// year divisible by 4 = leap
// year divisible by 100 = not leap
// year divisible by 400 = leap
// any other year is not leap

func isLeap(_ year: Int) -> Bool {
    guard year % 400 != 0 else { return true }
    guard year % 100 != 0 else { return false }
    return year % 4 == 0
}

class LeapYearTests : XCTestCase {
    
    func test_evenlyDivisible_by4_isLeap() {
        XCTAssertTrue(isLeap(2020))
    }
    
    func test_evenlyDivisible_by100_isNotLeap() {
        XCTAssertFalse(isLeap(2100))
    }
    
    func test_evenlyDivisible_by400_isLeap() {
        XCTAssertTrue(isLeap(2000))
    }
    
    func test_evenlyDivisible_by4Or400_isNotLeap() {
        XCTAssertFalse(isLeap(2021))
    }
}

LeapYearTests.defaultTestSuite.run()

//: [Next](@next)

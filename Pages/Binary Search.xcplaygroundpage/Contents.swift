//: [Previous](@previous)

import Foundation

let list = [1, 3, 5, 7, 9]

var low = 0
var high = list.count - 1

func binary_search(_ list: [Int], _ item: Int) -> Int? {
    while low <= high {
        let mid = (low + high) / 2
        
        let guess = list[mid]
        if guess == item {
            return mid
        }
        if guess > item {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return nil
}

binary_search(list, 3)
binary_search(list, 9)
//: [Next](@next)

//: [Previous](@previous)

import Foundation

func findSmallest(_ arr: [Int]) -> Int {
    var smallest = arr[0]
    var smallest_index = 0
    
    for i in 1..<arr.count {
        if arr[i] < smallest {
            smallest = arr[i]
            smallest_index = i
        }
    }
    
    return smallest_index
}

func selectionSort(_ arr: [Int]) -> [Int] {
    var newArr = [Int]()
    
    // We have to make mutableArray reference copy of original array, because Swift 3 doesn't allow to get var parameter
    var mutableArr = arr
    
    for _ in 0..<mutableArr.count {
        let smallest = findSmallest(mutableArr)
        newArr.append(mutableArr.remove(at: smallest))
    }
    
    return newArr
}

selectionSort([5, 3, 6, 2, 10])
//: [Next](@next)

//
//  RemoveElement.swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 30.01.25.
//

class RemoveElement {
    
    func removeElement(_ nums: inout [Int], _ valToRemove: Int) -> Int {
        
        var indexToKeep = 0
        
        for i in 0..<nums.count where nums[i] != valToRemove {
            nums[indexToKeep] = nums[i]
            indexToKeep += 1
        }
        
        return indexToKeep
    }
}

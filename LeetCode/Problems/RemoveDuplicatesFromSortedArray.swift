//
//  RemoveDuplicatesFromSortedArray.swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 30.01.25.
//


class RemoveDuplicatesFromSortedArray{
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        var indexToKeep = 0
        
        for i in 1..<nums.count where nums[indexToKeep] != nums[i] {
            indexToKeep = indexToKeep + 1
            nums[indexToKeep] = nums[i]
        }
        
        return indexToKeep + 1
    }
}

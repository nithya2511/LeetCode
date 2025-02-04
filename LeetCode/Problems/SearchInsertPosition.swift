//
//  SearchInsertPosition.swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 03.02.25.
//

class SearchInsertPosition {
    
    func searchInsertPosition(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1
        
        while low <= high {
            
            var mid = (low + high) / 2
            
            if nums[mid] == target {
                return mid
            } else {
                nums[mid] < target ? (low = mid + 1) : (high = mid - 1)
            }
        }
        return low
    }
}

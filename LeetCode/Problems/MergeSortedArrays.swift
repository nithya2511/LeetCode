//
//  MergeSortedArrays.swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 15.02.25.
//

class MergeSortedArrays {
    
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
        var end1 = m - 1
        var end2 = n - 1
        var totalEnd = nums1.count - 1
        
        while end2 >= 0 {
            if end1 >= 0 && nums1[end1] > nums2[end2] {
                nums1[totalEnd] = nums1[end1]
                end1 -= 1
            } else {
                nums1[totalEnd] = nums2[end2]
                end2 -= 1
            }
            totalEnd -= 1
        }
    }
    
    
    func merge1(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
        var end1 = m - 1
        var end2 = n - 1
        var totalEnd = nums1.count - 1
        
        while end1 >= 0 && end2 >= 0 {
            if nums1[end1] > nums2[end2] {
                nums1[totalEnd] = nums1[end1]
                end1 -= 1
            } else {
                nums1[totalEnd] = nums2[end2]
                end2 -= 1
            }
            totalEnd -= 1
        }
        
        // end1 can be >= 0 and that will be mean that nums1 will be sorted already
        while end2 >= 0 {
            nums1[totalEnd] = nums2[end2]
            totalEnd -= 1
            end2 -= 1
        }
    }
}

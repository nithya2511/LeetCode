//
//  ViewController.swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 29.10.24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        return mergeSortedArrays()
    }
    
    func mergeSortedArrays() {
        let res = MergeSortedArrays()
        var nums1 = [0]
        res.merge(&nums1, 0, [1], 1)
        print(nums1)
    }
    
    func removeDuplicatesFromSortedList() {
        let res = RemoveDuplicatesFromSortedList()
        let list = ListNode(1, ListNode(1, ListNode(2, ListNode(2, ListNode(3, ListNode(3))))))
        let helper = ListHelpers()
        helper.printList(res.deleteDuplicates(list))
        
    }
    func climbingStairs() {
        let res = ClimbingStairs()
        print(res.climbingStairs(6))
    }
    
    func sqrtOfx() {
        let res = SqrtOfX()
        print(res.sqrtOfX(1))
    }
    
    func addBinary() {
        let res = AddBinary()
        print(res.addBinary("11", "1"))
    }
    
    func plusOne() {
        let res = PlusOne()
        print(res.plusOne([9, 9]))
    }
    func lengthOfLastWord() {
        let res = LengthOfLastWord()
        print(res.lengthOfLastWord("luffy is still joyboy"))
    }
    
    func searchInsertPosition() {
        let res = SearchInsertPosition()
        print(res.searchInsertPosition([1,3,5,6], 2))
    }
    
    func findTheFirstOccurenceInAString(){
        let res = FindTheIndexOfFirstOccurenceInAString()
        print(res.findIndex("aaa", "aaaa"))
    }
    
    func removeElements() {
        let res = RemoveElement()
        var nums = [3,2,2,3]
        print(res.removeElement(&nums, 3))
    }
    
    func removeDuplicatesFromSortedArrays() {
        let res = RemoveDuplicatesFromSortedArray()
        var nums = [1,1,2]
        print(res.removeDuplicates(&nums))
    }
    
    func mergeTwoSortedLists() {
        let res = MergeTwoSortedLists()
        let list1 = ListNode(1, ListNode(2, ListNode(4, nil)))
        let list2 = ListNode(1, ListNode(3, ListNode(4, nil)))
//        let list1 = ListNode(2)
//        let list2 = ListNode(1)
        print(res.mergeTwoSortedLists(list1, list2))
    }
    
    func validParentheses() {
        let res = ValidParentheses()
        print(res.validParentheses("([])"))
    }

    func callLongestCommonPrefix() {
        let res = LongestCommonPrefix()
        print(res.longestCommonPrefix(["ab", "a"]))
    }
    
    func callRomanToInt() {
        let res = RomanToInt()
        print(res.romanToInt("MCMXCIV"))
    }
    
    func callPalindromeNumber() {
        let res = PalindromeNumber()
        print(res.palindromeNumber(121))
    }
    
    func callTwoSum() {
        let res = TwoSum()
        print(res.twoSum([1, 2, 3, 4, 5], 9))
    }
}


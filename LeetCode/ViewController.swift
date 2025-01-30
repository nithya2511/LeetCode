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
        mergeTwoSortedLists()
    }
    
    func mergeTwoSortedLists() {
        
        let res = MergeTwoSortedLists()
//        let list1 = ListNode(1, ListNode(2, ListNode(4, nil)))
//        let list2 = ListNode(1, ListNode(3, ListNode(4, nil)))
        let list1 = ListNode(2)
        let list2 = ListNode(1)
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


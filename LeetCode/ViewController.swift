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
        callLongestCommonPrefix()
    }

    func callLongestCommonPrefix() {
        let res = LongestCommonPrefix()
        print(res.longestCommonPrefix(["a"]))
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


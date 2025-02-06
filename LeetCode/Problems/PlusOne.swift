//
//  PlusOne.swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 06.02.25.
//

class PlusOne {
    
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
            for i in (0 ..< digits.count).reversed() {
            if digits[i] == 9 {
                digits[i] = 0
            } else {
                digits[i] += 1
                return digits
            }
           
        }
        digits.insert(1,at :0)
        return digits
    }
}

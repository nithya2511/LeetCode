//
//  LengthOfLastWord.swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 04.02.25.
//

class LengthOfLastWord {
    
    func lengthOfLastWord(_ s: String) -> Int {
        
        let str = Array(s)
        var len = 0
        
        for c in str.reversed() {
            if c.isWhitespace {
                if len > 0 {
                    return len
                }
            } else {
                len += 1
            }
        }
        return len
    }
}

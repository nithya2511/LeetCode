//
//  LongestCommonPrefix.swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 01.11.24.
//

class LongestCommonPrefix {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        var longestPrefix : String = ""
        var minLength : Int = strs[0].count
        for str in strs {
            let len = str.count
            if len <= minLength {
                minLength = len
            }
        }
        
        let strs = strs.map { Array($0) }
        
        
        for i in 0..<minLength {
            let c = strs[0][i]
            for str in strs {
                if str[i] != c {
                    return longestPrefix
                }
            }
            longestPrefix += String(c)
        }
        
        return longestPrefix
    }
    
    
}

//
//  LongestCommonPrefix.swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 01.11.24.
//

class LongestCommonPrefix {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        var longestPrefix : String = ""
        let shortestLen = strs
                   .map { $0.count }
                   .min()!
        let strs = strs.map { Array($0) }
        			
        for i in 0..<shortestLen  {
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

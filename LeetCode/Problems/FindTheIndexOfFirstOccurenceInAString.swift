//
//  FindTheIndexOfFirstOccurenceInAString.swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 01.02.25.
//


class FindTheIndexOfFirstOccurenceInAString {
    
    func findIndex(_ s: String, _ t: String) -> Int {
        
        guard t.count <= s.count else { return -1 }
        
        let haystack = Array(s)
        let needle = Array(t)
        let lastPossibleIndex = haystack.count - needle.count
        
        outerLoop : for i in 0 ... lastPossibleIndex {
            for j in 0 ..< needle.count {
                if needle[j] != haystack[i + j] {
                    continue outerLoop
                }
            }
            return i
        }
        return -1
    }
}

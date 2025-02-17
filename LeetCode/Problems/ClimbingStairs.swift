//
//  ClimbingStairs.swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 14.02.25.
//

class ClimbingStairs {
    
    var hashTable : [Int : Int] = [:]
    
    func climbingStairs_sid(_ n : Int) -> Int {
        
        if n == 1 { return 1 }
        if n == 2 { return 2 }
        
        if hashTable[n] != nil {
            return hashTable[n]!
        }
        
        let res = climbingStairs(n-1) + climbingStairs(n-2)
        hashTable[n] = res;
        return res
    }
    
    func climbingStairs(_ n : Int) -> Int {
        
        if n == 0 || n == 1 { return 1 }
        var first = 1
        var second = 1
        var third = 0
        
        for _ in 2 ... n {
            third = first + second
            first = second
            second = third
        }
        return second
    }
}

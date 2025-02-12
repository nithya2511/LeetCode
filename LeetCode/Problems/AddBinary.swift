//
//  AddBinary.swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 07.02.25.
//

class AddBinary {
    
    func addBinary(_ a: String, _ b: String) -> String {
        
        let a = Array(a)
        let b = Array(b)
        var result = [Int]()
        var x = a.count - 1
        var y = b.count - 1
        var carry = 0
        
        while x >= 0 || y >= 0 || carry != 0 {
            
            var sum = carry
            if x >= 0, a[x] == "1" { sum += 1 }
            if y >= 0, b[y] == "1" { sum += 1 }
            
            let digit = sum % 2
            carry = sum / 2
            
            result.append(digit)
            x -= 1
            y -= 1
            
        }
        
        return result.map {String($0)}.reversed().joined()
    }
}

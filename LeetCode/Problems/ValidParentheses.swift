//
//  ValidParentheses.swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 22.01.25.
//

class ValidParentheses {
    
    
    func validParentheses(_ s: String) -> Bool {
        
        var stack : [Character] = []
        
        for char in s {
            switch char {
            case "(" : stack.append(")")
            case "[" : stack.append("]")
            case "{" : stack.append("}")
            default:
                if stack.isEmpty || stack.popLast() != char  {
                    return false
                }
                
            }
        }
        
        return stack.isEmpty
    }
    
    func validParentheses_mine(_ s: String) -> Bool {
        
        let dict = [")" : "(", "]" : "[", "}" : "{"]
        var stack : [String] = []
        
        for char in s {
            if let val = dict[String(char)] {
                let poppedChar = stack.popLast()
                if val != poppedChar {
                    return false
                }
            } else {
                stack.append(String(char))
            }
        }
        
        return stack.isEmpty
    }
}



   

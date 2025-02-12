//
//  Sqrt(x).swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 11.02.25.
//

class SqrtOfX {
    
    func sqrtOfX(_ x: Int) -> Int {
        
        if x == 0 {return 0 }
        //if x < 4  {return 1 }
        
        var low = 0
        var high = ( x + 1 ) / 2
        
        
      
        while low <= high {
            let mid = (low + high) / 2
            if mid <= x/mid {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }
        return low > x / low ? low - 1 : low
    }
}

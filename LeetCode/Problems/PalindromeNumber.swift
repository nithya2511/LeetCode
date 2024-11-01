
class PalindromeNumber {
    func palindromeNumber(_ x: Int) -> Bool {
        var num = x
        var revNum = 0
        
        while (num > 0) {
            revNum = revNum * 10 +  num % 10
            num = num / 10
        }
        
        return x == revNum
    }
}

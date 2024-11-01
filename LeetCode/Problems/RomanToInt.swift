

class RomanToInt {
    func romanToInt(_ s: String) -> Int {
        let dict : [Character : Int] = ["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
        var sum = 0, prev = 0
        for char in s {
            let cur = dict[char] ?? 0
            sum += (prev >= cur) ? prev: -prev
            prev = cur
        }
        sum += prev
        return sum
    }
}

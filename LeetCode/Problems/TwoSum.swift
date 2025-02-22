
class TwoSum {
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict : [Int : Int] = [:]
        for (i, num) in nums.enumerated() {
            if let val = dict[num]  {
                return [i, val]
            }
            dict[target - num] = i
        }
        return []
    }
}

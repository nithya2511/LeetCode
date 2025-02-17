//
//  RemoveDuplicatesFromSortedList.swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 14.02.25.
//

class RemoveDuplicatesFromSortedList {
    
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        
        var cur = head
        var tail = cur?.next
        
        while (cur != nil) {
            if (cur?.val != tail?.val) {
                cur?.next = tail
                cur = tail
            }
            
            tail = tail?.next
        }
//        if cur?.val == tail?.val {
//            cur?.next = nil
//        }
        return head
    }
}

//
//  ListHelpers.swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 14.02.25.
//

class ListHelpers {
    func printList(_ head : ListNode?) {
        guard let head = head else {
            return
        }
        
        var h : ListNode? = head
        while(h != nil) {
            print(h?.val as Any)
            print("->")
            h = h?.next ?? nil
        }
    }
}


//
//  MergeTwoSortedLists.swift
//  LeetCode
//
//  Created by Nithya Vasudevan on 28.01.25.
//

class MergeTwoSortedLists {
    
    func mergeTwoSortedLists(_ listA: ListNode?, _ listB: ListNode?) -> ListNode? {
        
        guard let listA else { return listB }
        
        guard let listB else { return listA }
        
        
        let head = ListNode() //dummy node to avoid mistakes when inputs are single nodes
        head.next = listA
        var tail = head
        var B = listB
        while tail.next != nil {
            if let a = tail.next?.val {
                if a >= B.val {
                    let temp = tail.next
                    tail.next = B
                    B = temp!
                }
            }
            tail = tail.next!
        }
        tail.next = B
        printList(head)
        return head.next
    }
    
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
    
    func mergeTwoSortedLists_recursive(_ listA: ListNode?, _ listB: ListNode?) -> ListNode? {
        
        guard let listA else { return listB }
        
        guard let listB else { return listA }
        
        if listA.val < listB.val {
            listA.next = mergeTwoSortedLists_recursive(listA.next, listB)
            return listA
        }
        else {
            listB.next = mergeTwoSortedLists_recursive(listB.next, listA)
            return listB
        }
    }
}

class ListNode {
    var val : Int
    var next : ListNode?
    
    public init() { self.val = 	0; self.next = nil}
    public init(_ val : Int) {self.val = val ; self.next = nil}
    public init(_ val : Int, _ next : ListNode?) { self.val =  val ; self.next = next}
    
}

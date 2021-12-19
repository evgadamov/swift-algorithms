//
//  LeetCode2AddTwoNumbers.swift
//  
//
//  Created by Evgeny Adamov on 19.12.2021.
//

import Foundation

class Solution {
	func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
		var firstl1: ListNode? = l1
		var secondl2: ListNode? = l2
		var resultList: ListNode? = ListNode(0)
		var dummyList = resultList
		
		var carry = 0
		
		while (firstl1 != nil || secondl2 != nil) {
			let num1l1 = firstl1?.val ?? 0
			let num2l2 = secondl2?.val ?? 0
			
			let summ = num1l1 + num2l2 + carry
			carry = summ / 10
			let lastDigit = summ % 10
			
			let newNode = ListNode(lastDigit)
			dummyList?.next = newNode
			
			firstl1 = firstl1?.next
			secondl2 = secondl2?.next
			dummyList = dummyList?.next
		}
		
		if carry > 0 {
			let newNode = ListNode(1)
			dummyList?.next = newNode
			dummyList = dummyList?.next
		}
		
		return resultList?.next
	}
}


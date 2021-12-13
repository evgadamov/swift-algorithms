//
//  LeetCode680ValidPalindromeII.swift
//  
//
//  Created by Evgeny Adamov on 13.12.2021.
//

class Solution {
	func validPalindrome(_ s: String) -> Bool {
		let string = Array(s)
		
		var startPointer = 0
		var endPointer = string.count - 1
		
		while startPointer <= endPointer {
			if string[startPointer] != string[endPointer] {
				return helperMethod(s: string, startPointer: startPointer + 1, endPointer: endPointer) || helperMethod(s: string, startPointer: startPointer, endPointer: endPointer - 1)
			}
			startPointer += 1
			endPointer -= 1
		}
		return true
	}
	
	private func helperMethod(s: [Character], startPointer: Int, endPointer: Int) -> Bool {
		var startPointer = startPointer
		var endPointer = endPointer
		while startPointer <= endPointer {
			if s[startPointer] != s[endPointer] {
				return false
			}
			startPointer += 1
			endPointer -= 1
		}
		return true
	}
}

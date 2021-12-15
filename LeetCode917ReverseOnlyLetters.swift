//
//  LeetCode917ReverseOnlyLetters.swift
//  
//
//  Created by Evgeny Adamov on 14.12.2021.
//

func reverseOnlyLetters(_ s: String) -> String {
	var str = Array(s)
	var left = str.startIndex
	var right = str.endIndex - 1
	
	while left < right {
		if !str[left].isLetter {
			left += 1
			continue
		}
		
		if !str[right].isLetter {
			right -= 1
			continue
		}
		
		(str[left], str[right]) = (str[right], str[left])
		
		left += 1
		right -= 1
	}
	return String(str)
}

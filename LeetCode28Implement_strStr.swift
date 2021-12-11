//
//  LeetCode28Implement_strStr.swift
//  
//
//  Created by Evgeny Adamov on 11.12.2021.
//

// Best solution (two pointers)

func strStr(_ haystack: String, _ needle: String) -> Int {
	if needle.isEmpty { return 0 }
	
	let s1 = Array(haystack)
	let s2 = Array(needle)
	
	var i = 0
	var j = 0
	
	while i <= s1.count - s2.count {
		while s1[i + j] == s2[j] {
			if j == s2.count - 1 {
				return i
			}
			j = j + 1
		}
		j = 0
		i = i + 1
	}
	return -1
}

// Simple solution (native Swift algo)

func strStr(_ haystack: String, _ needle: String) -> Int {
	if needle.isEmpty { return 0 }
	
	if let result = haystack.range(of: needle) {
		return result.lowerBound.utf16Offset(in: "")
	}
	return -1
}

// Solution using an array

func strStr(_ haystack: String, _ needle: String) -> Int {
	if needle.isEmpty { return 0 }
	
	let s1 = Array(haystack)
	let s2 = Array(needle)
	
	for i in 0..<s1.count - s2.count {
		print(s1[i..<i + s2.count])
		if Array(s1[i..<i + s2.count]) == s2 {
			return i
		}
	}
	return -1
}



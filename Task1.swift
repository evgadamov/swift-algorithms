/*
 
 Task N1:
 Checking characters in a string for uniqueness.
 Task:
 Write a function that accepts a string as its only parameter and returns true
 if the string contains only unique characters.
 
 Created by Evgeny Adamov on 08.12.2021
 
 Please, if you find any errors or you have ideas on how to implement it much more efficiently, give feedback!
 
 */

// 1 - Implementation using an array

func isUniqueCharUsingArray(_ str: String) -> Bool {
	if str.isEmpty {
		return false
	}
	
	var characters = [Character]()
	
	for char in str {
		if characters.contains(char) {
			return false
		}
		characters.append(char)
	}
	return true
}

// 2a - Implementation using an set

func isUniqueCharUsingSet1(_ str: String) -> Bool {
	if str.isEmpty {
		return false
	}
	
	var setChars: Set<Character> = []
	
	for char in str {
		if setChars.update(with: char) != nil {
			return false
		}
	}
	return true
}

// 2b - Implementation using an set with short form

func isUniqueCharUsingSet2(_ str: String) -> Bool {
	return !str.isEmpty && Set(str).count == str.count
}

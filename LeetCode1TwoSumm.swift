/*
 
 1. Two Sum
 
 */

// First solution

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
	for i in 0..<nums.count {
		for j in (i + 1)..<nums.count {
			if target - nums[i] == nums[j] {
				return [i, j]
			}
		}
	}
	return [-1, -1] // if no match
}

// Second solution

func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
	var map: Dictionary<Int, Int> = [:]
	
	for (index, num) in nums.enumerated() {
		let temp = target - num
		if let secondIndex = map[temp] {
			return [secondIndex, index]
		}
		map[num] = index
	}
	return [-1, -1] // [-1, -1] if no match
}

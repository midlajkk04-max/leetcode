class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    Map<int, int> map = {};

    for (int i = 0; i < nums.length; i++) {
      if (map.containsKey(nums[i])) {
        int prevIndex = map[nums[i]]!;
        
        if (i - prevIndex <= k) {
          return true;
        }
      }

      map[nums[i]] = i;
    }

    return false;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.containsNearbyDuplicate([1, 2, 3, 1], 3)); 
  print(sol.containsNearbyDuplicate([1, 0, 1, 1], 1)); 
  print(sol.containsNearbyDuplicate([1, 2, 3, 1, 2, 3], 2)); 
}

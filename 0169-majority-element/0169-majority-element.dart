class Solution {
  int majorityElement(List<int> nums) {
    nums.sort();
    int res =nums.length~/2;
    return nums[res];
  }
}
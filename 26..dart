int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return 0;

  int k = 1; 

  for (int i = 1; i < nums.length; i++) {
    if (nums[i] != nums[i - 1]) {
      nums[k] = nums[i];
      k++;
    }
  }

  return k; 
}

void main() {
  List<int> nums = [1, 1, 2];
  int k = removeDuplicates(nums);

  print("New length: $k");
  print("Modified array: ${nums.sublist(0, k)}"); 
}

void main() {
  List<int> nums = [2, 2, 1];

  int result = singleNumber(nums);
  print(result); 
}

int singleNumber(List<int> nums) {
  int value = 0;

  for (int num in nums) {
    value ^= num;
  }

  return value;
}

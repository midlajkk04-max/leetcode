void main() {
  List<int> nums = [1, 2, 3, 1];

  bool result = containsDuplicate(nums);
  print(result); 
}

bool containsDuplicate(List<int> nums) {
  Set<int> seen = {};

  for (int num in nums) {
    if (seen.contains(num)) {
      return true;
    }
    seen.add(num);
  }

  return false;
}

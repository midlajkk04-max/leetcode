int missingNumber(List<int> nums) {
  int n = nums.length;

  int totalSum = n * (n + 1) ~/ 2; 
  int arraySum = 0;

  for (int num in nums) {
    arraySum += num;
  }

  return totalSum - arraySum;
}

void main() {
  List<int> nums = [9, 6, 4,  3, 5, 7, 0,8,10, 1];
  print(missingNumber(nums)); 
}

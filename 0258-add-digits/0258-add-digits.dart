class Solution {
  int addDigits(int num) {
    if (num == 0) return 0;
    int sum = 0;
    while (num > 0) {
      int number = num % 10;
      num = num ~/ 10;
      sum = sum + number;
      if (sum > 9 && num == 0) {
        num = sum;
        sum = 0;
      }
    }
    return sum;
  }
}
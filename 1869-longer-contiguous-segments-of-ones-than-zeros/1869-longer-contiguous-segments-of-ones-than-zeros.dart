class Solution {
  bool checkZeroOnes(String s) {
    int max1 = 0, max0 = 0;
    int c1 = 0, c0 = 0;

    for (var ch in s.split('')) {
      if (ch == '1') {
        c1++;
        c0 = 0;
        if (c1 > max1) max1 = c1;
      } else {
        c0++;
        c1 = 0;
        if (c0 > max0) max0 = c0;
      }
    }
    return max1 > max0;
  }
}
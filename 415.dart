class Solution {
  String addStrings(String num1, String num2) {
    int i = num1.length - 1;
    int j = num2.length - 1;
    int carry = 0;
    List<String> result = [];

    while (i >= 0 || j >= 0 || carry > 0) {
      int n1 = i >= 0 ? int.parse(num1[i]) : 0;
      int n2 = j >= 0 ? int.parse(num2[j]) : 0;

      int sum = n1 + n2 + carry;
      carry = sum ~/ 10;
      result.add((sum % 10).toString());

      i--;
      j--;
    }

    return result.reversed.join();
  }
}

void main() {
  Solution sol = Solution();
  print(sol.addStrings("11", "123")); 
}

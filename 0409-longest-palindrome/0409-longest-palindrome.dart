class Solution {
  int longestPalindrome(String s) {
    Map<String,int> charCount = {};
    for(int i = 0; i < s.length; i++){
        String char = s[i];
        charCount[char] = (charCount[char] ?? 0) + 1;
    }
    bool oddChar = false;
    int count = 0;
    charCount.forEach((char, freq){
        count += (freq ~/ 2)*2;
        if(freq % 2 == 1){
            oddChar = true;
        }
    });
    if(oddChar) count += 1;

    return count;
  }
}
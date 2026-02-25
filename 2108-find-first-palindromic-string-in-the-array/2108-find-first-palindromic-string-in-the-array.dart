class Solution {
  String firstPalindrome(List<String> words) {
    for(String word in words) {
        String reverse = word.split('').reversed.join('');

        if(word == reverse) {
            return reverse;
        }
    }
    return '';
  }
}
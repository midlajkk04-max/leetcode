class Solution {
  bool checkIfPangram(String sentence) {
    return sentence.split('').toSet().length== 26? true : false;
  }
}
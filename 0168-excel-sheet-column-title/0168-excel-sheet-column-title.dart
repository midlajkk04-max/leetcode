class Solution {
  String convertToTitle(int columnNumber) {
    String res='';
    while(columnNumber>0){
        columnNumber--;
        int rem=columnNumber%26;
        res=String.fromCharCode(rem+65)+res;
        columnNumber~/=26;
    }
    return res;
  }
}
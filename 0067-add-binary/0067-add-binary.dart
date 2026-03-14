class Solution {
  String addBinary(String a, String b) {
    int i = a.length - 1;  
    int j = b.length - 1; 

    bool carry = false;   
    String ans = '';      

   
    while (i >= 0 || j >= 0) {
      String x = i >= 0 ? a[i] : '0'; 
      String y = j >= 0 ? b[j] : '0'; 

      if (x == '0' && y == '0') {
        if (carry) {
          ans = '1' + ans;  
          carry = false;
        } else {
          ans = '0' + ans;  
        }
      } 
      else if (x == '1' && y == '1') {
        if (carry) {
          ans = '1' + ans;  
        } else {
          ans = '0' + ans;  
        }
        carry = true;
      } 
      else {
        if (carry) {
          ans = '0' + ans;  
          carry = true;
        } else {
          ans = '1' + ans;  
        }
      }

      i--; 
      j--; 
    }

    
    if (carry) ans = '1' + ans;

    return ans;
  }
}
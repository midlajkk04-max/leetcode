class Solution {
  int subtractProductAndSum(int n) {
    int sum = 0;
    int product =1;
    String conv =n.toString();

    for(int i = 0; i<conv.length; i++){
        sum += int.parse(conv[i]);
        product *= int.parse(conv[i]);
    }
     return product - sum ;
  }
}
class Solution {
  int arrangeCoins(int n) {
    int sum = 0;
    for(int i = 1 ; i <= n ; i ++){
sum += i;
if(sum > n){
    return i -1;
} else if(sum == n){
    return i;
}

    }
    return 0;
  }
}
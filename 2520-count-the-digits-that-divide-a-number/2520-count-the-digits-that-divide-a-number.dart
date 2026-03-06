class Solution {
  int countDigits(int num) {
    int count =0;
    int tempNo =num;

    while(tempNo > 0){
        if(num % (tempNo %10)== 0){
            count++;
        }
        tempNo ~/= 10;
    }
    return count ;
  }
}
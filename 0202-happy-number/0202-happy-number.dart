class Solution {
  bool isHappy(int n) {

    List<int> prevNums = [];
    while(true){

        int sum = sumOfDigitSqure(n);
        if(sum == 1) return true;
        if(prevNums.contains(sum)){
            return false;
        }else{
            prevNums.add(sum);
            n = sum;
        }

    }
    return false;

  }

  int sumOfDigitSqure(int num){
    int sum = 0;
    while(num != 0){
        int digit = num % 10;
        sum += digit * digit;
        num ~/= 10;
    }
    return sum;
  }

}
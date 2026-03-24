class Solution {
  List<String> readBinaryWatch(int turnedOn) {
    List<String> result = [];

    for (int hh = 0; hh <= 11; hh++) {
      for (int mm = 0; mm <= 59; mm++) {
        if (_bitCount(hh) + _bitCount(mm) == turnedOn) {
          String hour = hh.toString();
          String minute = (mm < 10 ? "0" : "") + mm.toString();
          result.add("$hour:$minute");
        }
      }
    }

    return result;
  }

  int _bitCount(int num) {
    int count = 0;
    while (num > 0) {
      count += num & 1;
      num >>= 1;
    }
    return count;
  }
}
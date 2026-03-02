class Solution {
  List<int> findWordsContaining(List<String> words, String x) {
    List<int> index = [];
    for(int i =0;i< words.length;i++){
        if( words[i].contains(x)){
            index.add(i);
        }
    }
    return index;
  }
}
class Solution {
  int mostWordsFound(List<String> sentences) {
    int wordcount = 0;

    for (var i = 0; i < sentences.length; i++) {
      final arrSize = sentences[i].split(' ').length;

      if (arrSize > wordcount) {
        wordcount = arrSize;
      }
    }

    return wordcount;
  }
}
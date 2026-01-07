class Solution {
  List<int> mergeTwoLists(List<int> list1, List<int> list2) {
    int i = 0; 
    int j = 0; 
    List<int> merged = [];

    
    while (i < list1.length && j < list2.length) {
      if (list1[i] <= list2[j]) {
        merged.add(list1[i]);
        i++;
      } else {
        merged.add(list2[j]);
        j++;
      }
    }

    
    while (i < list1.length) {
      merged.add(list1[i]);
      i++;
    }

    while (j < list2.length) {
      merged.add(list2[j]);
      j++;
    }

    return merged;
  }
}

void main() {
  Solution sol = Solution();

  List<int> list1 = [1,2,4];
  List<int> list2 = [1,3,4];

  print(sol.mergeTwoLists(list1, list2));
  
}

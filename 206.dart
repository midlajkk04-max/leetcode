
class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}


class Solution {
  
  ListNode? reverseList(ListNode? head) {
    ListNode? prev;
    ListNode? current = head;

    while (current != null) {
      ListNode? nextTemp = current.next; 
      current.next = prev;               
      prev = current;                   
      current = nextTemp;                
    }
    return prev; 
  }
}


void printList(ListNode? head) {
  ListNode? temp = head;
  List<int> values = [];
  while (temp != null) {
    values.add(temp.val);
    temp = temp.next;
  }
  print(values); 
}


void main() {
  
  ListNode head = ListNode(
    1,
    ListNode(
      2,
      ListNode(
        3,
        ListNode(
          4,
          ListNode(5),
        ),
      ),
    ),
  );

  print("Original List:");
  printList(head);

 
  ListNode? reversed = Solution().reverseList(head);

  print("Reversed List:");
  printList(reversed);
}

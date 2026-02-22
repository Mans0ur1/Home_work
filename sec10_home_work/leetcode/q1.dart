/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}


class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode ? current=head;
    ListNode ?prev;

    while (current != null){
        ListNode ? next= current.next;
        current.next=prev;
        prev=current;
        current =next;
    }
    return prev;
  }
}


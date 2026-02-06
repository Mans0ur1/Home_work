/*Given an integer array nums, return true if any value
 appears at least twice in the array, and return false if every element is distinct.*/

class Solution {
  bool containsDuplicate(List<int> nums) {
    int count = 0;
    for (int i = 0; i < nums.length; i++) {
      if (count > 0) {
        return true;
      } else {
        for (int j = i + 1; j < nums.length; j++) {
          if (nums[i] == nums[j]) {
            count += 1;
          }
        }
      }
    }
    return false;
  }
}

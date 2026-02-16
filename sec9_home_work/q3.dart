int search(List<int> nums, int target) {
  int index = -1;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == target) {
      index = i;
     break;
    }
    ;
  }
  return index;
}

void main() {
  List<int> nums1 = [-1, 0, 3, 5, 9, 12];
  int target1 = 9;
  print(search(nums1, target1));
  List<int> nums2 = [-1, 0, 3, 5, 9, 12];
  int target2 = 2;
  print(search(nums2, target2));
}

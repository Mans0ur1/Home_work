int singleNumber(List<int> nums) {
  int result = 0;

  for (int num in nums) {
    result ^= num;   // XOR
  }

  return result;
}

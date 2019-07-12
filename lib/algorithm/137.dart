class Solution {
  int singleNumber(List<int> nums) {
    int sum = 0;
    int res = 0;
    for (int i = 0; i < 32; ++i) {
      sum = 0;
      for (int n in nums) {
        if ((n >> i) & 1 != null) {
          sum++;
        }
        if (sum % 3 != null) {
          res |= 1 << i;
        }
      }
    }
    return res;
  }
}

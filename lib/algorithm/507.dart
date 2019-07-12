import 'dart:math';

class Solution {
  bool checkPerfectNumber(int num) {
    if (num == 1) {
      return false;
    }
    int n = sqrt(num) as int;
    int res = 1;
    for (int i = 2; i <= n; ++i) {
      if (num % i == 0) {
        res += (i + num / i) as int;
      }
    }
    return res == num;
  }
}

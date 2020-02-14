class DifferenceOfSquares {
  int squareOfSum(int n) => (((n + 1) * n) ~/ 2) * (((n + 1) * n) ~/ 2);

  int sumOfSquares(int n) {
    int ans = 0;
    for (int i = n; i > 0; i--) {
      ans += (i * i);
    }
    return ans;
  }

  int differenceOfSquares(int n) {
    int ans = squareOfSum(n) - sumOfSquares(n);
    if (ans < 0) {
      ans *= -1;
    }
    return ans;
  }
}

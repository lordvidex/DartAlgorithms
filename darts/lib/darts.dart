import 'dart:math';

class Darts {
  int score(double x, double y) {
    if (x < 0) x *= -1;
    if (y < 0) y *= -1;
    double sh = sqrt(pow(x, 2) + pow(y, 2));
    if (sh > 10) {
      return 0;
    } else if (sh > 5) {
      return 1;
    } else if (sh > 1) {
      return 5;
    } else {
      return 10;
    }
  }
}

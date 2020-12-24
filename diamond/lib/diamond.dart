class Diamond {
  List<String> rows(String letter) {
    List<String> ans = [];
    int max = letter.codeUnits[0],
        times = max - 64,
        left = max - 65,
        right = max - 65,
        size = times * 2 - 1,
        currCode = 65;
    while (times-- > 0) {
      List<String> temp = [];
      if (left == right) {
        for (int i = 0; i < size; i++) {
          if (i < left || i > left) {
            temp.add(' ');
          } else {
            temp.add('A');
          }
        }
      } else {
        for (int i = 0; i < size; i++) {
          if (i < left) {
            temp.add(' ');
          } else if (i == left) {
            temp.add(String.fromCharCode(currCode));
          } else {
            if (i < right) {
              temp.add(' ');
            } else if (i == right) {
              temp.add(String.fromCharCode(currCode));
            } else {
              temp.add(' ');
            }
          }
        }
      }
      ans.add(temp.join());
      left--;
      right++;
      currCode++;
    }
    int pointer = ans.length - 2;
    while (pointer >= 0) {
      ans.add(ans[pointer]);
      pointer--;
    }
    return ans;
  }
}

class Isogram {
  bool isIsogram(String s) {
    s = s
        .toLowerCase()
        .splitMapJoin(RegExp(r'[^a-z]'), onMatch: (x) => '', onNonMatch: (x) => x);
    Map<int, int> arr = Map();
    bool isAnIsogram = true;
    List<int> st = s.split('').map((tr) => tr.codeUnitAt(0)).toList();
    print(st);
    for (int i = 0; i < st.length; i++) {
      arr.update(st[i], (x) => x + 1, ifAbsent: () => 1);
    }
    print(arr);
    arr.forEach((k, v) {
      if (v > 1) {
        isAnIsogram = false;
      }
    });
    return isAnIsogram;
  }
}

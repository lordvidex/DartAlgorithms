class PascalsTriangle {
  List<List<int>> rows(int x) {
    List<List<int>> ans = [];
    List<int> lastList = [];
    for (int i = 1; i <= x; i++) {
      List<int> newList = new List<int>(lastList.length + 1);
      newList[0] = 1;
      newList[newList.length - 1] = 1;
      for (int j = 1; j <= lastList.length - 1; j++) {
        newList[j] = lastList[j] + lastList[j - 1];
      }
      lastList = newList;
      ans.add(newList);
    }
    return ans;
  }
}

class WordCount {
  // Put your code here
  List<String> separators = ['.', ',', '\t', '\n', ':', "'"];
  Map<String, int> countWords(String s) {
    Map<String, int> ans = {};
    for (int i = 0; i < separators.length; i++) {
      s.replaceAll(separators[i], ' ');
    }
    List<String> lis = s.split(' ');
    if (lis.isEmpty) {
      return {s: 1};
    } else {
      lis.forEach((val) {
        val..toLowerCase();
        ans[val]++;
      });
      return ans;
    }
  }
}

class BeerSong {
  List<String> recite(int i, int j) {
    List<String> ans = [];
    int as = i;
    for (int i = 99; i >= as - j;) {
      if (i > 2) {
        ans.add('$i bottles of beer on the wall, $i bottles of beer.');
        ans.add(
            'Take one down and pass it around, ${i - 1} bottles of beer on the wall.');
      } else if (i == 2) {
        ans.add('2 bottles of beer on the wall, 2 bottles of beer.');
        ans.add(
            'Take one down and pass it around, 1 bottle of beer on the wall.');
      } else if (i == 1) {
        ans.add('1 bottle of beer on the wall, 1 bottle of beer.');
        ans.add(
            'Take it down and pass it around, no more bottles of beer on the wall.');
      } else {
        ans.add(
            'No more bottles of beer on the wall, no more bottles of beer.');
        ans.add(
            "Go to the store and buy some more, 99 bottles of beer on the wall.");
      }
      if (i == 0) {
        i = 100;
      } else {
        i--;
      }
    }
    return ans;
  }
}

class BeerSong {
  void recite(int i, int j) {
    for (int i = 99; i >= 0; i--) {
      if (i > 2) {
        print('$i bottles of beer on the wall, $i bottles of beer.');
        print(
            'Take one down and pass it around, ${i - 1} bottles of beer on the wall.');
      } else if (i == 2) {
        print('2 bottles of beer on the wall, 2 bottles of beer.');
        print(
            'Take one down and pass it around, 1 bottle of beer on the wall.');
      } else if (i == 1) {
        print('1 bottle of beer on the wall, 1 bottle of beer.');
        print(
            'Take it down and pass it around, no more bottles of beer on the wall.');
      } else {
        print('No more bottles of beer on the wall, no more bottles of beer.');
        print(
            "Go to the store and buy some more, 99 bottles of beer on the wall.");
      }
    }
  }
}

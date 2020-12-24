bool isValid(String s) {
  bool swiftReturnFalse = false;
  String so = '';
  s.split("").forEach((v) => v == '-' ? so += '' : so += v);

  if (so.length != 10) {
    return false;
  } else {
    int sum = 0, mul = 10;
    var xarr = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];
    final numbers = so.split("").map((val) {
      if (val == 'X' && so.codeUnits.last==val.codeUnits.last) {
        return 10;
      } else if (xarr.contains(val)) {
        return int.parse(val);
      } else {
        swiftReturnFalse = true;
        return 0;
      }
    }).toList();
    if (swiftReturnFalse) return false;
    for (int i = 0; i < numbers.length; i++) {
      sum += numbers[i] * mul--;
    }
    if (sum % 11 == 0) {
      return true;
    }
    return false;
  }
}

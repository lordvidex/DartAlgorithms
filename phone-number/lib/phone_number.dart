class PhoneNumber {
  String clean(String number) {
    number.split("").forEach((x) {
      if (RegExp(r'[a-zA-Z]').hasMatch(x)) {
        throw new FormatException('letters not permitted');
      }
      if (RegExp(r'[^0-9\(\)\s\.\+\-]').hasMatch(x)) {
        throw new FormatException('punctuations not permitted');
      }
    });
    var newStr = number.replaceAll(new RegExp(r'^(\+1|1|0)|[^0-9]'), '');
    if (newStr.length < 10) {
      throw new FormatException('incorrect number of digits');
    } else if (newStr.length == 11) {
      if (newStr.substring(0, 1) == '1' &&
          (newStr.substring(1, 2) != '0' && newStr.substring(1, 2) != '1')) {
        return newStr;
      } else if (newStr.codeUnitAt(0) != '1'.codeUnitAt(0)) {
        throw FormatException('11 digits must start with 1');
      }
    } else if (newStr.length > 11) {
      throw new FormatException('more than 11 digits');
    } else if (newStr.length == 10) {
      if ((newStr.codeUnitAt(0) == '0'.codeUnits[0]) ||
          newStr.codeUnitAt(0) == '1'.codeUnitAt(0)) {
        throw new FormatException(newStr.codeUnitAt(0) == '0'.codeUnits[0]
            ? 'area code cannot start with zero'
            : 'area code cannot start with one');
      } else if ((newStr.codeUnitAt(3) == '0'.codeUnits[0]) ||
          newStr.codeUnitAt(3) == '1'.codeUnitAt(0)) {
        throw new FormatException(newStr.codeUnitAt(3) == '0'.codeUnits[0]
            ? 'exchange code cannot start with zero'
            : 'exchange code cannot start with one');
      }
    }
    return newStr;
  }
}

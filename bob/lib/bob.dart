class Bob {
  String response(String input) {
    input = input.trim();
    bool hasLetters = false;
    bool allCaps = true;
    bool isQuestion = false;
    if (input.isEmpty) {
      return 'Fine. Be that way!';
    }
    if (input.endsWith('?')) {
      isQuestion = true;
    }
    if (input.contains(new RegExp(r'[a-z]'))) {
      allCaps = false;
    }
    if (input.contains(new RegExp(r'[a-zA-Z]'))) {
      hasLetters = true;
    }
    if (allCaps && isQuestion && hasLetters) {
      return "Calm down, I know what I\'m doing!";
    } else if (hasLetters && allCaps) {
      return "Whoa, chill out!";
    } else if (isQuestion) {
      return "Sure.";
    }
    return "Whatever.";
  }
}

void main(List<String> args) {
  Anagram().findAnagrams('master', <String>['stream', 'pigeon', 'maters']);
}

class Anagram {
  List<String> breakdown(String s) {
    print(s.split('')..sort());
    return s.split('')..sort();
  }

  List<String> findAnagrams(String a, List<String> strings) {
    //if the length are not the same.. it cannot be an anagram
    strings.removeWhere((s) => s.length != a.length);

    //! create a register to store the initial string and a marker to
    //! indicate validity of string at position i
    Map<int, String> register = strings.asMap();
    Map<int, bool> marker = Map.fromIterables(Iterable.generate(strings.length),
        Iterable.generate(strings.length, (_) => true));

    //* convert `a` and `strings` to lowercases
    a = a.toLowerCase();
    //*
    strings = strings.map((s) => s.toLowerCase()).toList();

    //* change equal strings to false
    for (int i = 0; i < strings.length; i++) {
      if (strings[i] == a) {
        marker[i] = false;
      }
    }
    List<String> aList = breakdown(a);
    List<List<String>> wew = strings.map((s) => breakdown(s)).toList();
    for (int i = 0; i < strings.length; i++) {
      if (wew[i].join() != aList.join()) {
        marker[i] = false;
      }
    }
    List<String> answer = <String>[];
    for (var i = 0; i < register.length; i++) {
      if (marker[i]) {
        answer.add(register[i]);
      }
    }
    return answer;
  }
}

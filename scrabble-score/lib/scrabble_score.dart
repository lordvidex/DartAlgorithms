const Map<int, List<String>> score_map = {
  1: ['A', ' E', ' I', ' O', ' U', ' L', ' N', ' R', ' S', ' T'],
  2: ['D', 'G'],
  3: ['B', 'C', 'M', 'P'],
  4: ['F', 'H', 'V', 'W', 'Y'],
  5: ['K'],
  8: ['J', 'X'],
  10: ['Q', 'Z'],
};

int value(String s){
  int ans = 0;
  score_map.forEach((k,v){
    if(v.contains(s.toUpperCase())){
      ans = k;
    }
  });
  return ans;
}
int score(String s) {
  int val = 0;
  for (var i = 0; i < s.length; i++) {
    val+=value(s[i]);
  }
  return val;
}

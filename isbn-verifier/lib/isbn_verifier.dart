bool isValid(String s) {
  String so = '';
  s.split("").forEach((v)=>v=='-'?so+='':so+=v);

  if (so.length != 10) {
    return false;
  } else {
    int sum = 0,mul = 10;
    final numbers = so.split("").map((val) {
      if (val == 'X') {
        return 10;
      } else return int.tryParse(val) ?? 0;
    }).toList();
    for(int i = 0; i<numbers.length;i++){
      sum+= numbers[i]*mul--;
      }
    if(sum%11==0){
      return true;
    }
    return false;
  }
}

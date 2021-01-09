String reverse(String a) {
  String newString = '';
  for(int i = a.length-1; i>=0;i--){
    newString +=a[i];
  }
  return newString;
}

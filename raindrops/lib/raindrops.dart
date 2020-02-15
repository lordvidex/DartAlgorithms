class Raindrops {
  String convert(int i){
    String ans = '';
    if(i%3==0){
      ans+='Pling';
    }
    if(i%5==0){
      ans+='Plang';
    }
    if(i%7==0){
      ans+='Plong';
    }
    if(ans==''){
      ans = i.toString();
    }
    return ans;
  }
}

class PrimeFactors {
  List<int> factors(int number){
    List<int> ans = [];
    if(number <= 1)return [];
    int divisor = 2;
    while(number!=1&&divisor!=number){
      if(number%divisor==0){
        number~/=divisor;
        ans.add(divisor);
      }else{
        divisor++;
      }
    }
    if(number==1){
      return ans;
    }else{
      ans.add(number);
      return ans;
    }
  }
}

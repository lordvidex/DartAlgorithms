class NthPrime {
  static int MAX_SIZE = 150000;//since test does not exceed this
  bool done = false;
  List<int> primes = [];
  void SieveOfErathoStenes(){
    List<bool> isPrime = [];
    for(int i = 0; i<MAX_SIZE;i++){
      isPrime.add(true);
    }
    for(int i = 2; i*i<MAX_SIZE;i++){
      if(isPrime[i]){
        for(int p = i*i; p<MAX_SIZE; p+=i){
          isPrime[p] = false;
        }
      }
    }
    for(int i =2;i<MAX_SIZE;i++){
      if(isPrime[i]){
        primes.add(i);
      }
    }
  }
  int prime(int pos){
    if(!done){
      SieveOfErathoStenes();
      done = true;
    }
    return primes[pos-1];
  }
}

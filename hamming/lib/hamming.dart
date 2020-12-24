class Hamming {
  int distance(String a, String b){
    int count =0;
    for(int i = 0; i<a.length;i++){
      if(a[i]!=b[i]){
        count++;
      }
    }
    return count;
  }
}

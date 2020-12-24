class Isogram {
  Map<String,int> arr = {};
  bool isIsogram(String s){
    bool isAnIsogram = true;
    for(int i = 0; i<s.length; i++){
      arr[s]++;
    }
    arr.forEach((k,v){
      if(v>1){
        isAnIsogram = false;
      }
    });
    if(isAnIsogram){
      return true;
    }else{
      return false;
    }
  }
}

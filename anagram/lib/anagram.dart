class Anagram {
  List<String> findAnagrams(String a,List<String> strings){
    List<String> ans = [];
    for( int i =0; i<strings.length; i++){
      if(strings[i].length != a.length){
        strings.remove(strings[i]);
        i--;
      }else{
        if(a==strings[i]){
          strings.remove(strings[i]);
          i--;
        }
      }
    }
    ans = [...strings];
    for(String string in ans){
      for(int i = 0; i<a.length;i++){
        if(!string.toLowerCase().contains(a[i].toLowerCase())){
          ans.remove(string);
          break;
        };
      }
    }
    return ans;
  }
}
